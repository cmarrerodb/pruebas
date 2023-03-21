<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Idioma;
use App\Models\Traduccion;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Session;

class TraduccionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $traducciones = DB::table('zlogistik_man.traducciones')
        ->leftJoin('zlogistik_man.idiomas','idiomas.id','=','traducciones.id_idioma')
        ->leftJoin('zlogistik_man.archivos','archivos.id','=','traducciones.id_archivo')
        ->select('traducciones.id','idiomas.idioma','traducciones.expresion','traducciones.traduccion','traducciones.activo','archivos.archivo')
        ->orderBy('traducciones.id','DESC')
        ->get();
        return view('traducciones.index',compact('traducciones'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        try {
            $data =[
                'id_idioma' => $request->id_idioma,
                'expresion' => $request->expresion,
                'traduccion' => $request->traduccion,
                'activo' => $request->activo =='on' ? 1 : 0,
            ];
            Traduccion::create($data);
            return redirect('/traducciones')->with('success', 'created');
        } catch (\Exception $e) {
			return $e->getMessage();
		}
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $idiomas = DB::table('zlogistik_man.idiomas')
        ->select('idiomas.id','idiomas.idioma')
        ->get();

        $archivos = DB::table('zlogistik_man.archivos')
        ->select('archivos.id','archivos.archivo')
        ->get();
        $data=[
            'idiomas' => $idiomas,
            'archivos' => $archivos,
        ];

        return $data;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $traduccion = Traduccion::findOrFail($id);
        return $traduccion;

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data =[
            'id_idioma' => $request->id_idioma,
            'expresion' => $request->expresion,
            'traduccion' => $request->traduccion,
            'activo' => $request->activo,
        ];
        Traduccion::where("id",'=',$id)->update($data);
        return redirect('/traducciones')->with('success', 'updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $traduccion = Traduccion::findOrFail($id);
        $traduccion->delete();
        return redirect('/traducciones')->with('success', ('deleted'));
    }
}
