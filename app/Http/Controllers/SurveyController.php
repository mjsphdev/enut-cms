<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\SurveyRequest;
use App\Survey;
use LogActivity;
use Auth;

class SurveyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $surveys = Survey::all();
        $tb_id = 1;

        return view('pages.survey.list', compact('surveys', 'tb_id'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pages.survey.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(SurveyRequest $request)
    {
        Survey::create([
            'year' => $request->year,
            'survey_type' => $request->survey_type
        ]);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-success">added</span> survey type: '.'<small>'.$request->year.' - '.$request->survey_type.'</small>');

        return redirect()->route('surveys.index')->with('status', 'Created Successfully');
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
        $survey = Survey::find($id);

        return view('pages.survey.update', compact('survey'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(SurveyRequest $request, $id)
    {
        $survey = Survey::find($id);
        $survey->year = $request->year;
        $survey->survey_type = $request->survey_type;
        $survey->save(); 

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-secondary">updated</span> survey type: '.'<small>'.$request->year.' - '.$request->survey_type.'</small>');

        return redirect()->route('surveys.index')->with('status', 'Updated Successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $survey = Survey::find($id);

        LogActivity::addToLog(Auth::user()->name.' <span class="badge badge-danger">deleted</span> survey type: '.'<small>'.$survey->year.' - '.$survey->survey_type.'</small>');

        $survey->delete();


        return redirect()->route('surveys.index')->with('status', 'Deleted Successfully');
    }
}
