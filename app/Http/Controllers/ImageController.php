<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\ImageRequest;
use App\ImageContent;
use DB;

class ImageController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $image_contents = ImageContent::all();
        $tb_id = 1;

        return view('pages.image.list', compact('image_contents', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.image.create', compact('pageBelongs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ImageRequest $request)
    {
        $filename = $request->image->getClientOriginalName();
        $request->image->move(public_path('files/image/'.$request->image_type.'/'), $filename);
        $details = DB::table('page_reference')->where('id', $request->get('image_belongs'))->first();

        ImageContent::create([
            'image_title' => $request->title,
            'image_subtitle' => $request->subtitle,
            'image_type' => $request->image_type,
            'image_slug' => $details->page_slug,
            'image_filename' => $filename
        ]);

        return redirect()->route('image-uploads.index')->with('status', 'Uploaded Successfully');
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
        $image_content = ImageContent::find($id);
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.image.update', compact('image_content', 'pageBelongs'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ImageRequest $request, $id)
    {
        
        $image_content = ImageContent::find($id);
        $details = DB::table('page_reference')->where('id', $request->get('image_belongs'))->first();

        $image_content->image_title = $request->title;
        $image_content->image_subtitle = $request->subtitle;
        $image_content->image_type = $request->image_type;
        $image_content->image_slug = $details->page_slug;
        
        if($request->image)
        {
            $filename = $request->image->getClientOriginalName();
            $request->image->move(public_path('files/image/'.$request->image_type.'/'), $filename);

            @unlink(public_path('files/image/'.$image_content->image_type.'/'.$image_content->image_filename));

            $image_content->image_filename = $filename;
        }

        $image_content->save();

        return redirect()->route('image-uploads.index')->with('status', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $image_content = ImageContent::find($id);

        $image_path = public_path('files/image/').$image_content->image_type.'/'.$image_content->image_filename;

        if(file_exists($image_path))
        {
            @unlink($image_path);
        }

        $image_content->delete();

        return redirect()->route('image-uploads.index')->with('status', 'Deleted Successfully');
    }

    function status(Request $request)
    {
        $image = ImageContent::find($request->get('image_id'));
        $image->status = $request->get('status');

        $image->save();

        return response()->json(['success' => 'Status Changed']);
    }
}
