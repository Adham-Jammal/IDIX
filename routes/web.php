<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PageController;

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


Route::group(
    [
        'prefix'     => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ], function(){


        Route::get('/'         ,[PageController::class,'index'])->name('index');
        Route::post('/contact' ,[PageController::class,'contact'])->name('contact');

    });



Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});

Route::get('admin', function () {
    return redirect('../admin/urls');
})->name('voyager.dashboard');
