<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carrito extends Model
{
    protected $fillable = [
        'id_producto', 'precio','id_usuario', 'cantidad'
    ];
}
