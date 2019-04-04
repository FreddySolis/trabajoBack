<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class carritoController extends Controller
{
    public function show(){
        return Carrito::all();
    }
    public function store(Request $request)
    {
        $carrito = new Carrito();
        //
        $carrito->fill([
            'id_producto' => $request->id_producto,
            'precio' => $request->precio,
            'id_usuario' => $request->id_usuario,
            'cantidad' => $request->cantidad,
        ]);
        $carrito->save();
        return Carrito::all();
    }
    public function destroy($id)
    {
        //
        $carrito = Carrito::find($id);
        $carrito->delete();
        return Carrito::all();
    }
    public function update(Request $request, $id)
    {
        //
        $carrito = Carrito::find($id);
        $data = [
            'id_producto' => $request->id_producto,
            'precio' => $request->precio,
            'id_usuario' => $request->id_usuario,
            'cantidad' => $request->cantidad,
        ];
        $carrito->update($data);
        return Carrito::all();
    }
}
