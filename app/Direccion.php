<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Direccion extends Model
{
    protected $fillable = [
        'id_usuario', 'calle','numero','colonia','referencias'
    ];
}
