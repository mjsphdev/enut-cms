<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\PufItemRequest;
use Illuminate\Database\Eloquent\Collection;
use DB;
use Auth;
use LogActivity;

class PufItemController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $years = DB::table('surveys')->orderBy('year', 'DESC')->get(['year']);
        $puf_items = new Collection;
        foreach($years as $year){
            try{
                $result = DB::table('nns_'.$year->year.'.puf_items')->get();
                $puf_items = $puf_items->concat($result);
            }
            catch(\Exception $e){
                
            }
        }
        $tb_id = 1;

        return view('pages.puf.item.list', compact('puf_items', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $years = DB::table('surveys')->orderBy('year', 'DESC')->get(['year', 'survey_type']);

        return view('pages.puf.item.create', compact('years'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PufItemRequest $request)
    {
        $filename = $request->puf_file->getClientOriginalName();
        $name = str_replace(' ', '_', $filename);

        $filepath = $request->puf_file->move(public_path('files/puf/'.$request->year.'/'), $name);

        DB::table('nns_'.$request->year.'.puf_items')->insert([
            'item_title' => $request->title,
            'item_description' => $request->description,
            'item_overview' => $request->overview,
            'item_survey' => $request->survey,
            'item_year' => $request->year,
            'file_name' => $name,
            'file_path' => $filepath,
        ]);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-success">uploaded</span> puf item: '.'<small>'.$request->title.'</small>');

        return redirect()->route('puf-items.index')->with('status', 'Uploaded Successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
       $param = explode('-', $id);
       $id = $param[0];
       $year = $param[1];

       $puf_item = DB::table('nns_'.$year.'.puf_items')->where('id', $id)->first();
       $years = DB::table('surveys')->orderBy('year', 'DESC')->get(['year', 'survey_type']);
    
       return view('pages.puf.item.update', compact('puf_item', 'years'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PufItemRequest $request, $id)
    {
        $year = $request->year;
        $puf = DB::table('nns_'.$year.'.puf_items')->where('id', $id)->first();
        
        $puf_item = [
            'item_title' => $request->title,
            'item_description' => $request->description,
            'item_overview' => $request->overview,
            'item_survey' => $request->survey,
            'item_year' => $request->year,
        ];
       

        if($request->puf_file)
        {
            $filename = $request->puf_file->getClientOriginalName();
            $name = str_replace(' ', '_', $filename);

            $filepath = $request->puf_file->move(public_path('files/puf/'.$request->year.'/'), $name);

            @unlink(public_path('files/puf/'.$puf->item_year.'/'.$puf->file_name));

            $puf_item['file_name'] = $name;
            $puf_item['file_path'] = $filepath;
        }

        DB::table('nns_'.$year.'.puf_items')->where('id', $id)->update($puf_item);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">updated</span> puf item: '.'<small>'.$request->title.'</small>');

        return redirect()->route('puf-items.index')->with('status', 'Updated Successfully');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $param = explode('-', $id);
        $id = $param[0];
        $year = $param[1];

        $puf = DB::table('nns_'.$year.'.puf_items')->where('id', $id)->first();

        $filepath = public_path('files/puf/').$puf->item_year.'/'.$puf->file_name;
        if(file_exists($filepath))
        {
            @unlink($filepath);
        }
       
        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-danger">deleted</span> puf item: '.'<small>'.$puf->item_title.'</small>');

        DB::table('nns_'.$year.'.puf_items')->where('id', $id)->delete();

        return redirect()->route('puf-items.index')->with('status', 'Deleted Successfully');
    }

    function survey(Request $request)
    {
        $year = $request->year;

        $data = DB::table('puf_reference')->where('year', $year)->get();

        return response()->json($data);
    }

    public function upload_dataset()
    {
        $years = DB::table('surveys')->get(['year', 'survey_type']);

        return view('pages.puf.dataset.upload', compact('years'));
    }
    
    function csvToArray($filename = '', $delimiter = ',')
    {
        if (!file_exists($filename) || !is_readable($filename))
            return false;

        $header = null;
        $data = array();
          if (($handle = fopen($filename, 'r')) !== false)
          {
            while (($row = fgetcsv($handle, 1000, $delimiter)) !== false)
            {
                if (!$header)
                    $header = $row;
                else
                    $data[] = array_combine($header, $row);
            }
            fclose($handle);
          }

         return $data;
    }

    function check_db_year($year)
    {
         $db = 'nns_'.$year;

         return $db;
    }

    function check_survey($survey)
    {
         $puf = $survey.'_puf';

         return $puf;
    }

    public function dataset_store(Request $request)
    {

          $db_year = $this->check_db_year($request->year);
          $survey = $this->check_survey($request->survey);
          $dbtable = $db_year.'.'.$survey;

              try {
              $path = $request->file('file')->getRealPath();
              $uploadArr = $this->csvToArray($path);
    
              $chunks = array_chunk($uploadArr, 500);
    
              foreach ($chunks as $chunk) {
                  DB::table($dbtable)->insert($chunk);
              }
              } catch (\Exception $e) {
                return redirect()->route('dataset.index')->with('error', 'Something went wrong! Please make sure that your file is matched to the year/survey you\'ve chosen.');
              }       
              
        return redirect()->route('dataset.index')->with('status', 'Uploaded Successfully');
    }
}
