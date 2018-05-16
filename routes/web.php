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

Route::get('/gallery', 'GalleryController@index')->name('gallery');

Route::get('/user', 'UserPanelController@index')->name('userPanel');

Route::get('/element', 'elementController@index')->name('element');

// Show payment form
Route::get('/payment/add-funds/paypal', 'PaypalController@showForm');

// Post payment details for store/process API request
Route::post('/payment/add-funds/paypal', 'PaypalController@store');

// Handle status
Route::get('/payment/add-funds/paypal/status', 'PaypalController@getPaymentStatus');