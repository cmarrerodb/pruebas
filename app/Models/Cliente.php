<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    protected $table = 'zlogistik_man.clientes';
    use HasFactory;

    protected $fillable = ["rut","nombre_fantasia","razon_social","direccion"];
}
