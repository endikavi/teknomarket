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

// mostar pagina principal
Route::get('/', function () {
    return view('welcome');
});

// mostar pagina de contacto
Route::get('/', function () {
    return view('welcome');
});

//Rutas de logeo,registro,cambiar contraseña y email

Auth::routes();

// mostrar datos del usuario una vez registrado o logueado

Route::get('/home', 'HomeController@index')->name('home');

// mostrar galeria de busqueda

Route::get('/gallery', 'GalleryController@index')->name('gallery');

// mostrar pagina de un elemento en concreto

Route::get('/element', 'ElementController@index')->name('element');

// Mostrar el carrito y boton de compra

Route::get('/payment', 'PaypalController@showForm');