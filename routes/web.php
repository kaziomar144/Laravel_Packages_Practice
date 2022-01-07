<?php

use Illuminate\Support\Facades\Route;

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
Route::get('/get-all-employee','Empcontroller@getAllEmployees');
Route::get('/dom-pdf','Empcontroller@downloadPDF');

// Image resize and droozone js
Route::get('/resize-img','ImageController@resizeImage');
Route::post('/resize-imgs','ImageController@resizeImgSubmit')->name('image.resize');

//Lazy loading
Route::get('/gallery','GalleryController@gallery');


// Add student
Route::get('/add-student','StudentController@addStudent');
Route::post('/add-student','StudentController@storeStudent')->name('store.student');
Route::get('/all-student','StudentController@student')->name('all.student');
Route::get('/edit-student/{id}','StudentController@editStudent');
Route::post('/update-student','StudentController@updateStudent')->name('update.student');
Route::get('/delete-student/{id}','StudentController@deleteStudent');

// contact mail
Route::get('/contact-us','ContactController@contact');
Route::post('/sendMsg','ContactController@sendEmail')->name('contact.send');
//Helpers
Route::get('/get-name','TestController@getFirstLastName');

//auto search
Route::get('/add-product','ProductController@addProduct');
Route::get('/search','ProductController@search');
Route::get('/ ','ProductController@autoComplete')->name('autocomplete');

// Zip create
Route::get('/zip','ZipController@zipFile');
Route::get('/yajra','YajraController@index')->name('yajra.data');
Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return view('dashboard');
})->name('dashboard');
