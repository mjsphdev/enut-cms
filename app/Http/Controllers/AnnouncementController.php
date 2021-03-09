<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\AnnouncementRequest;
use App\Announcement;
use LogActivity;
use Auth;

class AnnouncementController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $announcements = Announcement::all();
        $tb_id = 1;

        return view('pages.announcement.list', compact('announcements', 'tb_id'))->with(['title' => 'Announcements']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.announcement.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(AnnouncementRequest $request)
    {
        $filename = $request->image->getClientOriginalName();
        $filepath = $request->image->move(public_path('files/announcement/'), $filename);

        Announcement::create([
            'title' => $request->title,
            'post_validity' => $request->post_validity,
            'content' => $request->content,
            'image' => $filename,
            'image_path' => $filepath,
            'author' => Auth::user()->name
        ]);

        LogActivity::addToLog(Auth::user()->name.' added announcement.');

        return redirect()->route('announcements.index')->with('status', 'Created Successfully');
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
        $announcement = Announcement::find($id);

        return view('pages.announcement.update', compact('announcement'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(AnnouncementRequest $request, $id)
    {
        $announcement = Announcement::find($id);

        $announcement->title = $request->title;
        $announcement->post_validity = $request->post_validity;
        $announcement->content = $request->content;

        if($request->image){
            $filename = $request->image->getClientOriginalName();
            $filepath = $request->image->move(public_path('files/announcement/'), $filename);
            
            @unlink(public_path('files/announcement/'.$announcement->image));

            $announcement->image = $filename;
            $announcement->image_path = $filepath;
        }

        $announcement->save();

        LogActivity::addToLog(Auth::user()->name.' updated announcement.');

        return redirect()->route('announcements.index')->with('status', 'Updated Successfully!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $announcement = Announcement::find($id);
        $image_path = public_path('files/announcement/').$announcement->image;

        if(file_exists($image_path)){
            @unlink($image_path);
        }

        $announcement->delete();

        LogActivity::addToLog(Auth::user()->name.' deleted announcement.');

        return redirect()->route('announcements.index')->with('status', 'Deleted Successfully!');
    }
}
