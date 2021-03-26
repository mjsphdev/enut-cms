<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use File;
use DB;

class QuestionairesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $directories = File::directories(public_path('files/scanned-questionaires/'));
        $tb_id = 1;
        $list_files = array();

        if($request->directory)
        {
            $directories = File::directories(public_path('files/'.$request->directory));
    
            $list_directories = array();
            

            foreach($directories as $key => $directory)
            {
                $tmp = explode('/', $directory);

                $list_directories[$key] = array_pop($tmp);
            }

           
            if(!$directories)
            {
                $directories = File::files(public_path('files/'.$request->directory));
                foreach($directories as $key => $path){
                    $file = pathinfo($path);
                    $dirname = explode('/', $file['dirname']);
                    $list_files[$key]['filename'] = $file['filename'];
                    $list_files[$key]['filepath'] = $dirname[1];
                }

            }
        }
        else{
                
            $list_directories = array();

            foreach($directories as $key => $directory)
            {
                $tmp = explode('/', $directory);

                $list_directories[$key] = array_pop($tmp);
                
            }
        }
        

        return view('pages.questionaires.list', compact('list_directories', 'tb_id', 'list_files'));
         
        
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $years = DB::table('surveys')
                     ->whereIn('year', ['2008', '2011', '2013', '2015'])
                     ->get(['year', 'survey_type']);


        return view('pages.questionaires.create', compact('years'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        dd($request->all());
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
        //
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
}
