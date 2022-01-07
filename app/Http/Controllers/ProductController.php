<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function addProduct()
    {
        $products =[
            ['name' => 'Phone'],
            ['name' => 'Tablet'],
            ['name' => 'Laptop'],
            ['name' => 'Power Bank'],
            ['name' => 'Watch'],
            ['name' => 'Television'],
            ['name' => 'Freeze'],
            ['name' => 'Headphones'],
        ];
        Product::insert($products);
        return "Product has been inserted successfully!";
    }
    public function search()
    {
        return view('auto-search');
    }
    public function autoComplete(Request $request)
    {
        $datas = Product::select('name')
                        ->where("name","LIKE","%{$request->terms}%")
                        ->get();

        return response()->json($datas);
    }
}
