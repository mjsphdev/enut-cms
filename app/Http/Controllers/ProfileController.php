<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests\UserRequest;
use App\User;
use DB;
use Auth;

class ProfileController extends Controller
{
    public function index()
    {
        $log_activities = DB::table('log_activities')->where('user_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        $tb_id = 1;

        return view('pages.profile', compact('log_activities', 'tb_id'));
    }

    public function update(Request $request, $id)
    {

        $user = User::find($id);

        $user->name = $request->name;
        $user->username = $request->username;
        $user->email = $request->email;

        if($request->profile)
        {
            $profile_pic = $request->profile->getClientOriginalName();
            $request->profile->move(public_path('files/profile/'), $profile_pic);

            $profile_path = public_path('files/profile/'.$user->profile);

            if(file_exists($profile_path))
            {
                @unlink($profile_path);
            }

            $user->profile = $profile_pic;
        }

        $user->save();

        return redirect()->route('profile.index')->with('status', 'Updated Successfully');
    }
}
