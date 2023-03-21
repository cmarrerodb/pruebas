<?php

/**
 * Created by Reliese Model.
 */

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

/**
 * Class Traduccion
 *
 * @property int $id
 * @property int $id_idioma
 * @property string $expresion
 * @property string|null $ruta
 * @property string|null $nombre_ruta
 * @property int $activo
 * @property Carbon|null $fecha_creacion
 * @property Carbon|null $fecha_modificacion
 * @property int $id_archivo
 *
 * @property Idioma $idioma
 *
 * @package App\Models
 */
class Traduccion extends Model
{
	protected $table = 'zlogistik_man.traducciones';
	public $incrementing = false;
	public $timestamps = false;

	protected $casts = [
		'id' => 'int',
		'id_idioma' => 'int',
		'id_archivo' => 'int',
		'activo' => 'int'
	];

	protected $dates = [
		'fecha_creacion',
		'fecha_modificacion'
	];

	protected $fillable = [
		'id_idioma',
		'expresion',
		'traduccion',
		'ruta',
		'nombre_ruta',
		'activo',
		'fecha_creacion',
		'fecha_modificacion',
        'id_idioma'
	];

	public function idioma()
	{
		return $this->belongsTo(Idioma::class, 'id_idioma');
	}

	public function archivo()
	{
		return $this->belongsTo(Archivo::class, 'id_archivo');
	}

}
