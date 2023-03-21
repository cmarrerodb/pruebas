<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Collection;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Idioma
 *
 * @property int $id
 * @property string $idioma
 * @property string $abreviatura
 * @property int $activo
 * @property Carbon|null $fecha_creacion
 * @property Carbon|null $fecha_modificacion
 *
 * @property Collection|Traducciones[] $traducciones
 *
 * @package App\Models
 */
class Idioma extends Model
{
	protected $table = 'zlogistik_man.idiomas';
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
		'idioma',
		'abreviatura',
		'activo',
		'fecha_creacion',
		'fecha_modificacion'
	];

	public function traducciones()
	{
		return $this->hasMany(Traducciones::class, 'id_idioma');
	}
}
