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
        $years = DB::table('surveys')->get(['year', 'survey_type']);

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
        $filepath = $request->puf_file->move(public_path('files/puf/'.$request->year.'/'), $filename);

        DB::table('nns_'.$request->year.'.puf_items')->insert([
            'item_title' => $request->title,
            'item_description' => $request->description,
            'item_overview' => $request->overview,
            'item_survey' => $request->survey,
            'item_year' => $request->year,
            'file_name' => $filename,
            'file_path' => $filepath,
        ]);

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
       $years = DB::table('surveys')->get(['year', 'survey_type']);
    
       return view('pages.puf.item.update', compact('puf_item', 'years'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    function survey(Request $request)
    {
        $year = $request->year;

        $data = DB::table('puf_reference')->where('year', $year)->get();

        return response()->json($data);
    }
}
