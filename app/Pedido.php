<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pedido extends Model
{
    protected $fillable = [
        'id_carrito', 'id_usuario', 'id_direccion','id_tarjeta','fecha','total'
    ];
}
