<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Carrito extends Model
{
    protected $fillable = [
        'id_producto', 'total','id_usuario', 'cantidad'
    ];
}
