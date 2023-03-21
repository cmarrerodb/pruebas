<?php

namespace App\Imports;

use App\Models\Traduccion;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class TraduccionImport implements ToModel, WithHeadingRow
{
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        return new Traduccion([
            'id_idioma' => $row['id_idioma'],
            'expresion' => $row['expresion'],
            'traduccion' => $row['traduccion'],
            'id_archivo' => $row['id_archivo'],
        ]);
    }
}
