<?php

namespace App\Http\Controllers;

use App\Models\Distribution;
use Illuminate\Http\Request;

class DistributionController extends Controller
{
    public function index(){
        $distributions = auth()->user()->foundation->distributions;
        return response(
            $distributions, 200
        );        
    }

    public function indexUnverified(){
        $foundation_id = auth()->user()->foundation->id;
        $distributions = auth()->user()->foundation->distributions;
        $distributions = Distribution::select('*')->where('foundation_id', '=', $foundation_id)->where('verifikasi_status', '=', '0')->get();
        return response(
            $distributions, 200
        );        
    }

    public function total(){
        $foundation_id = auth()->user()->foundation->id;
        $total = Distribution::sum('nominal');
        return response(
            $total, 200
        );
    }

    public function indexWithDate(Request $request){
        $foundation_id = auth()->user()->foundation->id;
        $year = $request['year'];
        $distributions = Distribution::select('*')->where('foundation_id', '=', $foundation_id)->where('verifikasi_status', '=', '1')->whereYear('tanggal','=', $year)->whereMonth('tanggal', '=', $request['month'])->get();
        return response(
            $distributions
        );         
    }

    public function show($id){
        $distribution = Distribution::find($id);
        return response(
            $distribution, 200
        );
    }

    public function yearlyNominal(Request $request){
        $foundation_id = auth()->user()->foundation->id;
        $year = $request['year'];
        $collections = Distribution::groupBy('month')->selectRaw('MONTH(tanggal) as month, sum(nominal) as nominal')->where('foundation_id', '=', $foundation_id)->where('verifikasi_status', '=', '1')->whereYear('tanggal','=', $year)->get();
        return response(
            $collections
        );
    }

    public function create(Request $request){
        $user = auth()->user();
        $foundation_id = $user->foundation->id;
        $penanggung_jawab_id = $user->id;

        $distribution = Distribution::create([
            'foundation_id'=>$foundation_id,
            'kategori'=>$request['kategori'],
            'nominal'=>$request['nominal'],
            'tanggal'=>$request['tanggal'],
            'tempat'=>$request['tempat'],
            'bentuk'=>$request['bentuk'],
            'penanggung_jawab_id'=>$penanggung_jawab_id,
            'verifikasi_status'=>0
        ]);

        return response(
            $distribution, 200
        );
    }
    
    public function update(Request $request, $id){
        $distribution = Distribution::find($id);
        if($request->has('kategori')){
        $distribution->update([
            'kategori'=>$request['kategori'],
            'nominal'=>$request['nominal'],
            'tanggal'=>$request['tanggal'],
            'tempat'=>$request['tempat'],
            'bentuk'=>$request['bentuk'],
        ]);
        }
        if($request->has('verifikasi_status')){
            $distribution->update(['verifikasi_status'=>$request['verifikasi_status']]);
        }  

        return response(
            $distribution, 200
        );
    }

    public function destroy($id){
        $distribution = Distribution::find($id);
        $distribution->delete();
    }

}
