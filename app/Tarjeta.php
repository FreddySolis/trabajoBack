<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tarjeta extends Model
{
    protected $fillable = [
        'id_usuario', 'numero', 'banco','tipo','cvv','expiracion'
    ];
}
