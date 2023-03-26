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
//Fikri Maulana - 1301200239
Route::get('/halaman-user', [userController::class, 'index']) -> middleware('auth');
Route::get('/user', [userController::class, 'index']) -> middleware('auth');
Route::get('/tabel-user', [userController::class, 'tabelUser']) -> middleware('auth');
Route::get('/tambah-user', [userController::class, 'create']) -> middleware('auth');
Route::get('/upload-user', [userController::class, 'store']) -> middleware('auth');
Route::get('/user/edit/{id}', [userController::class, 'edit']) -> middleware('auth');
Route::get('/user/hapus/{id}', [userController::class, 'destroy']) -> middleware('auth');

