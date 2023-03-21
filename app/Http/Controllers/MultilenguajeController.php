<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Traduccion;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;
use Maatwebsite\Excel\Facades\Excel;
use App\Imports\TraduccionImport;
class MultilenguajeController extends Controller
{
    public function index() {
        try {
            date_default_timezone_set('America/Santiago');
            $traducciones = DB::table('zlogistik_man.traducciones')
            ->select('expresion','traduccion')
            ->where("id_idioma","=",1)
            ->get();
            $head = "/*-------------------------------------------------".PHP_EOL."// Automatically generated language file ".PHP_EOL."// on ".date('d/m/Y h:i:s')."; do not modify manually, ".PHP_EOL."// as it will be overwritten by the next generation ".PHP_EOL."// of the language file; changes must be made ".PHP_EOL."// using the system translation options".PHP_EOL."-------------------------------------------------*/";
            $idiomas = "<?php ".PHP_EOL.$head.PHP_EOL."return [".PHP_EOL;
            foreach ($traducciones as $k => $v):
                $idiomas .= '"'.$v->expresion.'" => "'.$v->traduccion.'",'.PHP_EOL;
            endforeach;
            $idiomas .= "];";
            file_put_contents(resource_path()."/lang/en/translation.php",$idiomas);
            unset ($traducciones);
            unset ($idiomas);
            $traducciones = DB::table('zlogistik_man.traducciones')
            ->select('expresion','traduccion')
            ->where("id_idioma","=",2)
            ->get();
            $head = "/*-------------------------------------------------".PHP_EOL."// Archivo de idioma generado automaticamente el ".PHP_EOL."// ".date('d/m/Y h:i:s')."; no lo modifique manualmente,".PHP_EOL."// ya que el mismo será eliminado la ".PHP_EOL."// próxima ves que se regeneren los idiomas; ".PHP_EOL."// los cambios se deben generar ".PHP_EOL."// usando las opciones de traducción del sistema".PHP_EOL."-------------------------------------------------*/";
            $idiomas = "<?php ".PHP_EOL.$head.PHP_EOL."return [".PHP_EOL;
            foreach ($traducciones as $k => $v):
                $idiomas .= '"'.$v->expresion.'" => "'.$v->traduccion.'",'.PHP_EOL;
            endforeach;
            $idiomas .= "];";
            file_put_contents(resource_path()."/lang/es/translation.php",$idiomas);




            return 200;
        } catch (\Exception $e) {
			return $e->getMessage();
		}
    }
    function import(Request $request) {
        $this->validate($request, [
            'select_file' => 'required|mimes:xls,xlsx,csv'
        ]);
        $ruta = $request->file('select_file')->store('select_file');
        Excel::import(new TraduccionImport,$ruta);
        return back()->with('success','Se ha importado la data satisfactoriamente');
    }
}
