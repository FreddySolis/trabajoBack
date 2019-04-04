<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class tarjetaController extends Controller
{
    
    public function show(){
        return Tarjeta::all();
    }
    public function store(Request $request)
    {
        $tarjeta = new Tarjeta();
        //
        $tarjeta->fill([
            'id_usuario' => $request->id_usuario,
            'numero' => $request->numero,
            'banco' => $request->banco,
            'tipo' => $request->tipo,
            'cvv' => $request->cvv,
            'expiracion'=> $request->expiracion,
        ]);
        $tarjeta->save();
        return Tarjeta::all();
    }
    public function destroy($id)
    {
        //
        $tarjeta = Tarjeta::find($id);
        $tarjeta->delete();
        return Tarjeta::all();
    }
}
