<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\InfographicsRequest;
use App\Http\Requests\GalleryRequest;
use App\BrochureCategory;
use App\UploadBrochure;
use App\Survey;
use DB;
use Auth;
use LogActivity;

class InfographicsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $infographics = BrochureCategory::all();
        $tb_id = 1;

        return view('pages.infographics.list', compact('infographics', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $years = DB::table('surveys')->orderBy('year', 'DESC')->get(['year', 'survey_type']);

        return view('pages.infographics.create', compact('years'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(InfographicsRequest $request)
    {
        $filename = $request->image->getClientOriginalName();
        $request->image->move(public_path('files/infographics/'.$request->year.'/thumbnail/'), $filename);

        BrochureCategory::create([
            'brochure_year' => $request->year,
            'brochure_thumbnail' => $filename
        ]);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-success">uploaded</span> infographics thumbnail: '.'<small>Year :'.$request->year.'</small>');

        return redirect()->route('infographics.index')->with('status', 'Uploaded Successfully');
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
        $years = DB::table('surveys')->orderBy('year', 'DESC')->get(['year', 'survey_type']);
        $infographic = BrochureCategory::find($id);

        return view('pages.infographics.update', compact('years', 'infographic'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(InfographicsRequest $request, $id)
    {
        $infographic = BrochureCategory::find($id);
        $infographic->brochure_year = $request->year;

        if($request->image)
        {
            $filename = $request->image->getClientOriginalName();
            $request->image->move(public_path('files/infographics/'.$request->year.'/thumbnail/'), $filename);

            @unlink(public_path('files/infographics/'.$infographic->brochure_year.'/thumbnail/'.$infographic->brochure_thumbnail));

            $infographic->brochure_thumbnail = $filename;
        }

        $infographic->save();

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">updated</span> infographics thumbnail: '.'<small>Year :'.$request->year.'</small>');

        return redirect()->route('infographics.index')->with('status', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $infographic = BrochureCategory::find($id);
        $thumbnail_path = public_path('files/infographics/'.$infographic->brochure_year.'/thumbnail/'.$infographic->brochure_thumbnail);

        if(file_exists($thumbnail_path))
        {
            @unlink($thumbnail_path);
        }

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">deleted</span> infographics thumbnail: '.'<small>Year :'.$infographic->brochure_year.'</small>');

        $infographic->delete();

        return redirect()->route('infographics.index')->with('status', 'Deleted Successfully');
    }

    public function gallery($id)
    {
        $year = BrochureCategory::find($id);
        $survey = Survey::where('year', $year->brochure_year)->first();

        $images = UploadBrochure::join('brochure_categories', 'brochure_categories.id', 'upload_brochures.bt_id')
                                  ->select('brochure_categories.brochure_year', 'upload_brochures.*')
                                  ->where('upload_brochures.bt_id', $id)
                                  ->orderBy('upload_brochures.province')
                                  ->orderBy('upload_brochures.page_no')
                                  ->paginate(10);
                        
        return view('pages.infographics.gallery.list', compact('id', 'images', 'survey'));
    }

    public function gallery_create($id)
    {
        $provinces = DB::table('province')->get();

        return view('pages.infographics.gallery.create', compact('provinces', 'id'));
    }


    function abbreviation($filename)
    {
        $abbreviation = explode('_', $filename);
        
        switch(strtolower($abbreviation[0]))
        {
            case 'hh':
                $group = 'Households';
                break;
            case 'ps':
                $group = 'Preschool';
                break;
            case 'sc':
                $group = 'School Children';
                break;
            case 'adolesc':
                $group = 'Adolescents';
                break;
            case 'wra':
                $group = 'Women of Reproductive Age';
                break;
            case 'adlt':
                $group = 'Adults';
                break;
            case 'eld':
                $group = 'Elderly';
                break;
            default:
                $group = 'No age group';
                break;
        }
        
        $group_page = $group.'_'.strtolower($abbreviation[1]);

        return $group_page;
    }

    public function gallery_store(GalleryRequest $request, $id)
    {
        $brochure_category = BrochureCategory::find($id);

        $images = $request->image;

        foreach($images as $image){

            $filename = $image->getClientOriginalName();
            $group = explode('_', $this->abbreviation($filename));
            
            $brochure_group = $group[0];
            $page = explode('.', $group[1]);
            $page_no = $page[0];

            $image->move(public_path('files/infographics/'.$brochure_category->brochure_year.'/'.$request->province.'/'), $filename);

            UploadBrochure::create([
                'bt_id' => $brochure_category->id,
                'brochure_group' => $brochure_group,
                'page_no' => $page_no,
                'brochure_filename' => $filename,
                'province' => $request->province
            ]);

            LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-success">uploaded</span> infographics for '.$request->province.': '.
                         '<small>Year: '.$brochure_category->brochure_year.', '.$brochure_group.' - Page'.$page_no.'</small>');
    
        }

        

        return redirect()->route('gallery.index', compact('id'))->with('status', 'Uploaded Successfully');
    }

    public function gallery_destroy($id)
    {
        $image = UploadBrochure::find($id);
        $year = BrochureCategory::find($image->bt_id);
        $id = $year->id;

        $image_path = public_path('files/infographics/').$year->brochure_year.'/'.$image->province.'/'.$image->brochure_filename;

        if(file_exists($image_path)){
            @unlink($image_path);
        }

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-danger">deleted</span> infographics from '.$image->province.': '.
        '<small>Year: '.$year->brochure_year.', '.$image->brochure_group.' - Page'.$image->page_no.'</small>');

        $image->delete();

        return redirect()->route('gallery.index', compact('id'))->with('status', 'Deleted Successfully');
    }
}
