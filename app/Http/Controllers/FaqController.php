<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\FaqRequest;
use App\Faq;
use DB;

class FaqController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $faqs = Faq::all();
        $tb_id = 1;

        return view('pages.faq.list', compact('faqs', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.faq.create', compact('pageBelongs'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(FaqRequest $request)
    {
        Faq::create([
            'faq_slug' => $request->page_belongs,
            'question' => $request->question,
            'answer' => $request->answer
        ]);

        return redirect()->route('faqs.index')->with('status', 'Added Successfully');
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
        $faq = Faq::find($id);
        $pageBelongs = DB::table('page_reference')->get();

        return view('pages.faq.update', compact('faq', 'pageBelongs'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(FaqRequest $request, $id)
    {
        $faq = Faq::find($id);
        $faq->faq_slug = $request->page_belongs;
        $faq->question = $request->question;
        $faq->answer = $request->answer;
        $faq->save();

        return redirect()->route('faqs.index')->with('status', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $faq = Faq::find($id);
        $faq->delete();

        return redirect()->route('faqs.index')->with('status', 'Deleted Successfully');
    }
}
