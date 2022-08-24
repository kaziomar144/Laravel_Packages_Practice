<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function getUsers()
    {
        $users = User::all();
        return view('users',compact('users'));
    }

    public function likeUser(Request $request)
    {
        $user = User::find($request->id);
        $user->like();
        $user->save();

        return response()->json($user->liked());
    }

    public function unlikeUser(Request $request)
    {
        $user = User::find($request->id);
        $user->unlike();
        $user->save();
        
        return response()->json($user->liked());
    }
}
