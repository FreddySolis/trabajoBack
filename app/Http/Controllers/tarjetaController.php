<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Tarjeta;

class tarjetaController extends Controller
{
    
    public function index(){
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

    public function show($id){
        return Tarjeta::where('id_usuario',$id)->get();
    }
    public function destroy($id)
    {
        //
        $tarjeta = Tarjeta::find($id);
        $tarjeta->delete();
        return Tarjeta::all();
    }
}
