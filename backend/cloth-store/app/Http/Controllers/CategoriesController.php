<?php

namespace App\Http\Controllers;

use App\Categories;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{

    public function index()
    {
        return Categories::all();
    }



    public function store(Request $request)
    {
        $request->validate([
            "title"=>"required|string|min:4|max:50",
            "image"=>"required|file|mimes:png,jpg"
        ]);
        return Categories::create($request->all());
    }


    public function show($id)
    {
        return Categories::find($id);

    }



    public function update(Request $request,$id)
    {
        $category=Categories::find($id);
        $category ->update($request->all());
        return $category;
    }


    public function destroy($id)
    {
        return Categories::destroy($id);
        
    }
}
