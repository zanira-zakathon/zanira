<?php

namespace App\Http\Controllers;

use App\Models\Foundation;
use Illuminate\Http\Request;

class FoundationController extends Controller
{
    public function signup(Request $request){
        $foundation = Foundation::create([
            'name'=>$request['nama'],
            'address'=>$request['address'],
            'token'=>$request['token']
        ]);
        return response(
            $foundation, 200
        );
    }
   
    
    public function show($id){
        $foundation = Foundation::find($id);
        return response(
            $foundation,
            200
        );
    }

    public function update($id){

    }

    public function destroy($id){
        $foundation=Foundation::find($id);
        $foundation->delete();
        return response([
            'message'=>'Yayasan sudah dihapus'
        ], 200);
    }
}
