<?php

namespace App\Http\Controllers;

use App\Models\Collection;
use App\Models\Foundation;
use Illuminate\Http\Request;

class CollectionController extends Controller
{
    public function index(){
        $collections = auth()->user()->foundation->collections;
        return response(
            $collections, 200
        ); 
    }

    public function total(){
        $total = Collection::sum('nominal');
        return response(
            $total, 200
        );
    }

    public function show($id){
        $collections = Collection::find($id);
        return response(
            $collections, 200
        );
    }

    public function indexWithDate(Request $request){
        $foundation_id = auth()->user()->foundation->id;
        $year = $request['year'];
        $collections = Collection::select('*')->where('foundation_id', '=', $foundation_id)->whereYear('tanggal','=', $year)->whereMonth('tanggal', '=', $request['month'])->get();
        return response(
            $collections
        );         
    }

    public function create(Request $request){
        $foundation_id = auth()->user()->foundation->id;
        $collection = Collection::create([
            'foundation_id'=>$foundation_id,
            'kategori'=>$request['kategori'],
            'nominal'=>$request['nominal'],
            'tanggal'=>$request['tanggal'],
            'bentuk'=>$request['bentuk'],
            'nama_muzakki'=>$request['nama_muzakki'],
            'no_muzakki'=>$request['no_muzakki'],
            'tanggungan'=>$request['tanggungan']
        ]);

        return response(
            $collection, 200
        );
    }

    public function update($id, Request $request){
        $collection = Collection::find($id);
        $collection->update([
            'kategori'=>$request['kategori'],
            'nominal'=>$request['nominal'],
            'tanggal'=>$request['tanggal'],
            'bentuk'=>$request['bentuk'],
            'nama_muzakki'=>$request['nama_muzakki'],
            'no_muzakki'=>$request['no_muzakki'],
            'tanggungan'=>$request['tanggungan']
        ]);

        return response(
            $collection, 200
        );
    }

    public function destroy($id){
        $collection = Collection::find($id);
        $collection->delete();   
    }
}
