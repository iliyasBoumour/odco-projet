<?php

use App\Http\Controllers\ActualitesController;
use Illuminate\Support\Facades\Route;
use TCG\Voyager\Facades\Voyager;

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

 Route::get('/test', function () {
    return view('vendor.laravelpwa.offline');
 });

Route::get('/delete/1',function (){
   return view('news.delete');
});
//Route Faq
Route::get('/FAQ', 'FaqController@index')->name('FAQ');

//Route Creation
Route::get('/precreation', 'CreationController@index')->name('precreation');
Route::get('/postcreation', 'CreationController@index')->name('postcreation');

//assistance
Route::get('/assistance','PostController@assistance')->name('ass');
Route::get('/assistance/{service}','PostController@service')->name('assistance');

//Route document
Route::get('/document/{type}','PostController@document')->name('document');

//Route HomePage
Route::get('/','PostController@index')->name('home');


//Route contact

Route::prefix('contact')->group(function(){
   Route::get('/','ContactController@create')->name('contact');
   Route::post('/', 'ContactController@store')->name('storeContact');
});
////



Route::group(['prefix' => 'admin'], function () {
   Voyager::routes();
});



//Route Actualites et programmes et agenda

Route::group(['prefix' => '{actu_prog}'],function(){
   Route::get('/','NewsController@index')->name('News.index');
   Route::get('/{title}/{id}/{optional?}','NewsController@show')->name('News.show');
});
//////













// // Actualites Routes
// Route::prefix('actualites')->group(function (){
//    Route::get('{title}/{id}','ActualitesController@show');
//    Route::get('/','ActualitesController@index');
// });
// //

// Route::prefix('actualites')->group(function (){
//    Route::get('{title}/{id}','ActualitesController@show');
//    Route::get('/','ActualitesController@index');
// });











