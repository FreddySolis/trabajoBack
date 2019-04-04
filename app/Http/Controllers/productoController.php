<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Producto;

class productoController extends Controller//ready
{
    public function index(){
        return Producto::all();
    }

    public function show($id){
        return Producto::find($id);
    }
}
