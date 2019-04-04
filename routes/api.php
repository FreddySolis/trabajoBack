<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/
Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/userid/{email}','UserController@getId');
Route::get('/tajeta','tarjetaController@show');
Route::post('/newTarjeta', 'tarjetaController@store');
Route::get('/borrarTarjeta','tarjetaController@destroy');
Route::get('/carrito', 'carritoController@show');
Route::post('/newCarrito','carritoController@store');
Route::post('/updateCarrito', 'carritoController@update');
Route::post('/borrarCarro','carritoController@destroy');
Route::get('/direccion', 'direccionController@show');
Route::post('/newDireccion','direccionController@store');
Route::get('/producto', 'productoController@index');
Route::get('/producto/{id}', 'productoController@show');