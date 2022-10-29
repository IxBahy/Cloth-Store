<?php

namespace App\Http\Controllers;

use App\Products;
use Illuminate\Http\Request;

class ProductsController extends Controller
{

    public function index()
    {
        return Products::all();
    }




    public function store(Request $request)
    {
        $request->validate([
            "title"=>"required|string|min:4|max:50",
            "price"=>"required|numeric",
            "category"=>"required|max:50",
            "describtion"=>"required|string|min:4|max:250",
            "image"=>"required|file|mimes:png,jpg",
        ]);
        return Products::create($request->all());

    }


    public function show($id)
    {
        return Products::find($id);
    }



    public function update(Request $request,$id )
    {
        $product=Products::find($id);
        $product ->update($request->all());
        return $product;
        
    }

    public function destroy($id)
    {
        return Products::destroy($id);
    }
}
