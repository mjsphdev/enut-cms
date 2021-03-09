<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::resource('users', 'UserController');
Route::resource('announcements', 'AnnouncementController');
Route::resource('surveys', 'SurveyController');
Route::resource('file-uploads', 'FileController');
Route::resource('puf-items', 'PufItemController');
Route::post('puf-items/year-survey', 'PufItemController@survey');
Route::post('puf-items/{id}/year-survey', 'PufItemController@survey');

