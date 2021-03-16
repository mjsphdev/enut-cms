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
    return redirect()->route('login');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

// User Resources
Route::resource('users', 'UserController');

// Announcement Resources
Route::resource('announcements', 'AnnouncementController');

// Survey Resources
Route::resource('surveys', 'SurveyController');

// Facts & Figures / Presentation Resources
Route::resource('file-uploads', 'FileController');

// PUF Items Resources
Route::resource('puf-items', 'PufItemController');
Route::post('puf-items/year-survey', 'PufItemController@survey');
Route::post('puf-items/{id}/year-survey', 'PufItemController@survey');
Route::get('puf-datasets', 'PufItemController@upload_dataset')->name('dataset.index');
Route::post('puf-datasets/store', 'PufItemController@dataset_store')->name('dataset.store');
Route::post('puf-datasets/year-survey', 'PufItemController@survey');

// Page Content Resources
Route::resource('page-contents', 'PageContentController');

// Frequently Ask Question Resources
Route::resource('faqs', 'FaqController');

// Image Resource
Route::resource('image-uploads', 'ImageController');
Route::post('image-uploads/status', 'ImageController@status');

// Infographics Resource
Route::resource('infographics', 'InfographicsController');
Route::get('infographics/gallery/{id}', 'InfographicsController@gallery')->name('gallery.index');
Route::get('infographics/gallery/{id}/upload', 'InfographicsController@gallery_create')->name('gallery.create');
Route::post('infographics/gallery/{id}/upload', 'InfographicsController@gallery_store')->name('gallery.store');
Route::delete('infographics/gallery/{id}', 'InfographicsController@gallery_destroy')->name('gallery.destroy');
// Route::resource('gallery', 'GalleryController');

// Profile Controller
Route::get('profile', 'ProfileController@index')->name('profile.index');
Route::patch('profile/update/{id}', 'ProfileController@update')->name('profile.update');

// Questionaires Controller
Route::resource('scanned-questionaires', 'QuestionairesController');