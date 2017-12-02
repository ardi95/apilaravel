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

//Route::get('/', function () {
//    return view('welcome');
//});
Route::get('/','authentication@index');
Route::post('login','authentication@login');
Route::get('/bcrypt', function(){
    return bcrypt('admin123');
});
Route::get('dashboard','BukutamuController@dashboard');