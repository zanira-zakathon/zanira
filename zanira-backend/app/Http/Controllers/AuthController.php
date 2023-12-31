<?php

namespace App\Http\Controllers;

use App\Models\Foundation;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //Register user
    public function signupAdmin(Request $request)
    {
        //validate fields
        $attrs = $request->validate([
            'nama' => 'required|string',
            'no_hp'=> 'required',
            'password' => 'required',
        ]);

        //create user
        $id = Foundation::select('*')->where('foundations.token', '=', $request['token_yayasan'])->first()->id;

        $user = User::create([
            'foundation_id'=>$id,
            'nama' => $attrs['nama'],
            'no_hp' => $attrs['no_hp'],
            'email' => $request['email'],
            'role'=>'admin',
            'password' => bcrypt(($attrs['password']))
        ]);

        $user['token'] = $user->createToken('secret')->plainTextToken;

        //return user & token in response
        return response(
        $user, 200);
    }

    public function signupMember(Request $request)
    {
        //validate fields
        $attrs = $request->validate([
            'nama' => 'required|string',
            'no_hp'=> 'required',
            'password' => 'required',
        ]);

        //create user
        $id = Foundation::select('*')->where('foundations.token', '=', $request['token_yayasan'])->first()->id;

        $user = User::create([
            'foundation_id'=>$id,
            'nama' => $attrs['nama'],
            'no_hp' => $attrs['no_hp'],
            'email' => $request['email'],
            'role'=>'member',
            'password' => bcrypt(($attrs['password']))
        ]);

        $user['token'] = $user->createToken('secret')->plainTextToken;

        //return user & token in response
        return response(
        $user, 200);
    }

    public function login(Request $request)
    {
        //validate fields
        $attrs = $request->validate([
            'no_hp' => 'required',
            'password' => 'required'
        ]);

        if (!Auth::attempt($attrs)) {
            return response([
                'message' => 'invalid credentials.',
            ], 403);
        }

        $user = auth()->user();
        $user['token'] = auth()->user()->createToken('secret')->plainTextToken;
        //return user & token in response
        return response(
            $user
        , 200);
    }

    //logout
    public function logout()
    {
        auth()->user()->tokens()->delete();
        return response([
            'message' => 'logout success'
        ], 200);
    }

    // get user detail
    public function user()
    {
        return response(
            auth()->user()
        , 200);
    }

    public function update(Request $request){
        // $attrs = $request->validate([
        //     'name' => 'required|string',
        //     //'email' => 'required|email|unique:users,email',
        // ]);
        $user = auth()->user();
        $user->update([
            'name'=>$request['name'],
            'email'=>$request['email'],
            //'image'=>$this->saveImage($request->image, 'profiles')
        ]);

        // if($request['name']!=''){
        //     $user->name = $request['name'];
        // }

        // if($request['email']!=''){
        //     $user->email = $request['email'];
        // }

        // if($request['image']!=''){
        //     $user->image = $this->saveImage($request->image, 'profiles');
        // }

        // $user->save();

        return response($user, 200);
    }
}