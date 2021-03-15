<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\FileRequest;
use App\File;
use DB;
use LogActivity;
use Auth;

class FileController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $files = File::all();
        $tb_id = 1;

        return view('pages.file.list', compact('files', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $years = DB::table('surveys')->get(['year', 'survey_type']);

        return view('pages.file.create', compact('years'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FileRequest $request)
    {
        $filename = $request->file->getClientOriginalName();
        $filepath = $request->file->move(public_path('files/file/'.$request->category.'/'.$request->year.'/'), $filename);

        $files = [
            'file_title' => $request->title,
            'file_category' => $request->category,
            'file_year' => $request->year,
            'file_name' => $filename,
            'file_path' => $filepath,
        ];

        if($request->category == 'Facts&Figures')
        {
            $filethumbnail = $request->thumbnail->getClientOriginalName();
            $request->thumbnail->move(public_path('files/file/'.$request->category.'/'.$request->year.'/Thumbnail/'), $filethumbnail);

            $files['file_overview'] = $request->content;
            $files['file_thumbnail'] = $filethumbnail;
        }

        File::create($files);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-dark">uploaded</span> '.$request->category.': <small>'.$request->title.'</small>');

        return redirect()->route('file-uploads.index')->with('status', 'Uploaded Successfully');
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
        $file = File::find($id);
        $years = DB::table('surveys')->get(['year', 'survey_type']);

        return view('pages.file.update', compact('file', 'years'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(FileRequest $request, $id)
    {
        $file = File::find($id);

        $file->file_title = $request->title;
        $file->file_category = $request->category;
        $file->file_year = $request->year;

        if($request->file)
        {
            $filename = $request->file->getClientOriginalName();
            $filepath = $request->file->move(public_path('files/file/'.$request->category.'/'.$request->year.'/'), $filename);

            @unlink(public_path('files/file/'.$file->file_category.'/'.$file->file_year.'/'.$file->file_name));

            $file->file_name = $filename;
            $file->file_path = $filepath;
        }

        if($request->category == 'Facts&Figures')
        {
            if($request->thumbnail)
            {
                $filethumbnail = $request->thumbnail->getClientOriginalName();
                $request->thumbnail->move(public_path('files/file/'.$request->category.'/'.$request->year.'/Thumbnail/'), $filethumbnail);

                @unlink(public_path('files/file/'.$file->file_category.'/'.$file->file_year.'/Thumbnail/'.$file->file_thumbnail));

                $file->file_overview = $request->content; 
                $file->file_thumbnail = $filethumbnail;
            }
        }

        $file->save();

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">updated</span> '.$request->category.': <small>'.$request->title.'</small>');

        return redirect()->route('file-uploads.index')->with('status', 'Updated Successfully');
        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $file = File::find($id);

        $thumbnail_path = public_path('files/file/').$file->file_category.'/'.$file->file_year.'/Thumbnail/'.$file->file_thumbnail;
        $file_path = public_path('files/file/').$file->file_category.'/'.$file->file_year.'/'.$file->file_name;

        if(file_exists($thumbnail_path))
        {
            @unlink($thumbnail_path);
        }

        if(file_exists($file_path))
        {
            @unlink($file_path);
        }

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-danger">deleted</span>'.$file->file_category.': <small>'.$file->file_title.'</small>');

        $file->delete();

        return redirect()->route('file-uploads.index')->with('status', 'Deleted Successfully');
    }
}
