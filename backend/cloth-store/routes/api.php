<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use app\Http\Controllers\ProductsController;
use app\Http\Controllers\CategoriesController;


Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::resources([
    'products'=>'ProductsController'
]);

Route::resources([
    'categories'=>'CategoriesController'
]);