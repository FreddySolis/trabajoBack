<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\carrito;
use App\producto;
class carritoController extends Controller
{
    public function index(){
        return carrito::all();
    }
    public function show($id){
        $productos = array();
        $fin = array();
        $carrito = carrito::where('id_usuario',$id)->get();
        foreach ($carrito as $key) {
            array_push($productos,$key->id_producto);
        }
        foreach ($productos as $key) {
            $temp = producto::find($key);
            array_push($fin,$temp);
        }
        return $fin;

    }
    public function store(Request $request)
    {
        $carrito = new carrito();
        //
        $carrito->fill([
            'id_producto' => $request->id_producto,
            'total' => $request->total,
            'id_usuario' => $request->id_usuario,
            'cantidad' => $request->cantidad,
        ]);
        $carrito->save();
        return carrito::all();
    }
    public function destroy($id)
    {
        //
        $carrito = carrito::where("id",$id)->first();
        $carrito->delete();
        return carrito::all();
    }
    public function update(Request $request, $id)
    {
        //
        $carrito = carrito::find($id);
        $data = [
            'id_producto' => $request->id_producto,
            'precio' => $request->precio,
            'id_usuario' => $request->id_usuario,
            'cantidad' => $request->cantidad,
        ];
        $carrito->update($data);
        return carrito::all();
    }
}
