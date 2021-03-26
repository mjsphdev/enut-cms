<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Collection;
use App\File;
use App\UploadBrochure;
use DB;
use LogActivity;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ff = File::where('file_category', 'FactsandFigures')->count();

        $pr = File::where('file_category', 'Presentation')->count();

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
        $puf = count($puf_items);

        $infographics = UploadBrochure::count();

        $cms_activities = DB::table('log_activities')->orderBy('id', 'DESC')->get();
        $tb_id = 1;

        return view('home', compact('ff', 'pr', 'puf', 'infographics', 'cms_activities', 'tb_id'));
    }
}
