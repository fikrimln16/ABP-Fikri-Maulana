<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
//Fikri Maulana
route::get('/product', '\App\Http\Controllers\ProductController@index');
route::post('/product', '\App\Http\Controllers\ProductController@store');
route::get('/product/create', '\App\Http\Controllers\ProductController@create');
route::get('/product/{id}/edit', '\App\Http\Controllers\ProductController@edit');
route::put('/product/{id}', '\App\Http\Controllers\ProductController@update');
route::get('/product/{id}', '\App\Http\Controllers\ProductController@update');
route::delete('/product/{id}', '\App\Http\Controllers\ProductController@destroy');