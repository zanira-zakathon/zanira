<?php

namespace App\Http\Controllers;

use App\Models\Announcement;
use Illuminate\Http\Request;

class AnnouncementController extends Controller
{
    public function index(){
        $announcements = auth()->user()->foundation->announcements;
        return response(
            $announcements, 200
        );
    }

    public function show($id){
        $announcement = Announcement::find($id);
        return response(
            $announcement
        );
    }

    public function create(Request $request){
        $foundation_id = auth()->user()->foundation->id;
        $announcement = Announcement::create([
            'foundation_id'=>$foundation_id,
            'title'=>$request['title'],
            'text'=>$request['text']
        ]);

        return response(
            $announcement, 200
        );
    }

    public function update($id, Request $request){
        $announcement = Announcement::find($id);
        $announcement->update([
            'title'=>$request['title'],
            'text'=>$request['text']
        ]);
        return response(
            $announcement, 200
        );
    }

    public function destroy($id){
        $announcement = Announcement::find($id);
        $announcement->delete();
    }
}
