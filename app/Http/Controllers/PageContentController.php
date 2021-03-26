<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\PageContentRequest;
use App\PageContent;
use DB;
use LogActivity;
use Auth;

class PageContentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $page_contents = PageContent::all();
        $tb_id = 1;

        return view('pages.pagecontent.list', compact('page_contents', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.pagecontent.create', compact('pageBelongs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PageContentRequest $request)
    {
        $details = DB::table('page_reference')->where('id', $request->get('page_belongs'))->first();

        PageContent::create([
            'page_title' => $details->page_title,
            'page_content' => $request->content,
            'slug' => $details->page_slug
        ]);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-success">added</span> content for: '.'<small>'.$details->page_title.'</small>');

        return redirect()->route('page-contents.index')->with('status', 'Added Successfully');
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
        $page_content = PageContent::find($id);
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.pagecontent.update', compact('page_content', 'pageBelongs'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PageContentRequest $request, $id)
    {
        $page_content = PageContent::find($id);
        $details = DB::table('page_reference')->where('id', $request->get('page_belongs'))->first();

        $page_content->page_title = $details->page_title;
        $page_content->page_content = $request->content;
        $page_content->slug = $details->page_slug;
        $page_content->save();

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">updated</span> content for: '.'<small>'.$details->page_title.'</small>');

        return redirect()->route('page-contents.index')->with('status', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $page_content = PageContent::find($id);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-danger">deleted</span> content for: '.'<small>'.$page_content->page_title.'</small>');

        $page_content->delete();

        return redirect()->route('page-contents.index')->with('status', 'Deleted Successfully');
    }
}
