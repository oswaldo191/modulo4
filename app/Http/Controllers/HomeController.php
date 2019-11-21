<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Entities\Asignatura;

use App\Entities\User;

use App\Entities\Profesor;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {

        //if (auth()->user()->tipouser_id == 1) {
             $asignatura = Asignatura::all();

            $profesor = Profesor::all();

            return view('home', compact('asignatura','profesor'));
       // }

       // return 'Loco que haces aqui no tienes permiso';
    }

    public function addasig(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required'
        ]);

        $asignatura = Asignatura::create([
            'nombre'    =>  $request->get('nombre'),
            'profesor_id'   =>  $request->get('profesor')
        ]);

        return redirect()->back();
    }


    public function edit(Request $request, $id)
    {
          $this->validate($request, [
            'nombre' => 'required',
            'profesor_id' => 'required'
        ]);

          $asignatura = Asignatura::findOrFail($id);

          $asignatura->fill($request->all());

          $asignatura->save();

          return redirect()->back();

    }
}
