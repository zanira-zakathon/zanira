<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CollectionController;
use App\Http\Controllers\FoundationController;
use App\Http\Controllers\AnnouncementController;
use App\Http\Controllers\DistributionController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/
//public routes
Route::post('/signup-admin', [AuthController::class, 'signupAdmin']);
Route::post('/signup-member', [AuthController::class, 'signupMember']);
Route::post('/login', [AuthController::class, 'login']);
Route::post('/foundations', [FoundationController::class, 'signup']);
    
//protected routes
Route::group(['middleware' => ['auth:sanctum']],function(){
    //user
    Route::get('/user', [AuthController::class, 'user']);
    Route::put('/user', [AuthController::class, 'update']);
    Route::post('/logout', [AuthController::class, 'logout']);

    Route::get('/foundations/{id}', [FoundationController::class, 'show']);
    Route::put('/foundations/{id}', [FoundationController::class, 'update']);
    Route::delete('/foundations/{id}', [FoundationController::class, 'destroy']);

    Route::get('/announcements', [AnnouncementController::class, 'index']);
    Route::get('/announcements/{id}', [AnnouncementController::class, 'show']);
    Route::post('/announcements', [AnnouncementController::class, 'create']);
    Route::put('/announcements/{id}', [AnnouncementController::class, 'update']);
    Route::post('/announcements/{id}', [AnnouncementController::class, 'destroy']);

    Route::get('/collections', [CollectionController::class, 'index']);
    Route::post('/collections-date', [CollectionController::class, 'indexWithDate']);
    Route::get('/collections/{id}', [CollectionController::class, 'show']);
    Route::post('/collections', [CollectionController::class, 'create']);
    Route::put('/collections/{id}', [CollectionController::class, 'update']);
    Route::post('/collections/{id}', [CollectionController::class, 'destroy']);

    Route::get('/distributions', [DistributionController::class, 'index']);
    Route::post('/distributions-date', [DistributionController::class, 'indexWithDate']);
    Route::get('/distributions/{id}', [DistributionController::class, 'show']);
    Route::post('/distributions', [DistributionController::class, 'create']);
    Route::put('/distributions/{id}', [DistributionController::class, 'update']);
    Route::post('/distributions/{id}', [DistributionController::class, 'destroy']);

});
