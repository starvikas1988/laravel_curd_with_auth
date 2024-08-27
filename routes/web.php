<?php

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Redirect;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\EmployeeController;

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

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');


Route::resource('employees', EmployeeController::class);

// Example route
// Route::get('/employees/{id}', [EmployeeController::class, 'show'])->name('employees.show');
// Route::get('/employees/{id}/edit', [EmployeeController::class, 'edit'])->name('employees.edit');




//Route::get('/login',[LoginController::class,'index'])->name('login');
// Route::get('/',function(){
//     return view('welcome');
// });

