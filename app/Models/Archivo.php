<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Archivo
 *
 * @property int $id
 * @property string $archivo
 * @property string $descripcion
 * @property int $activo
 * @property Carbon|null $fecha_creacion
 * @property Carbon|null $fecha_modificacion
 *
 * @property Collection|Traducciones[] $traducciones
 *
 * @package App\Models
 */
class Archivo extends Model
{
	protected $table = 'zlogistik_man.archivos';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'activo' => 'int'
	];

	protected $dates = [
		'fecha_creacion',
		'fecha_modificacion'
	];

	protected $fillable = [
		'archivo',
		'descripcion',
		'activo',
		'fecha_creacion',
		'fecha_modificacion'
	];

	public function traducciones()
	{
		return $this->hasMany(Traducciones::class, 'id_archivo');
	}
}
