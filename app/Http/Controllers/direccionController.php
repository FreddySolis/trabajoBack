<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class direccionController extends Controller
{
    public function show(){
        return Direccion::all();
    }
    public function store(Request $request)
    {
        $direccion = new Direccion();
        //
        $direccion->fill([
            'id_usuario' => $request->id_usuario,
            'calle' => $request->calle,
            'numero' => $request->numero,
            'colonia' => $request->colonia,
            'referencias' => $request->referencias,
        ]);
        $direccion->save();
        return Direccion::all();
    }
}
