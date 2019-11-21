<?php

namespace App\Http\Controllers\Auth;

use App\Entities\User;
use App\Entities\Profesor;
use App\Entities\Padre;
use App\Entities\Estudiante;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:6', 'confirmed'],
            'tipouser' => ['required','numeric'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {

        $user = User::create([
            'name' => $data['name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
            'tipouser_id'  => $data['tipouser'],
        ]);

        if ($data['tipouser'] == 1) {
            
            return $user;
        } elseif($data['tipouser'] == 2) {

           $profesor = Profesor::create([
                'nombre'    =>  $user->name,
                'user_id'   =>  $user->id
            ]);

            return $user;
        } elseif ($data['tipouser'] == 3) {

            $padre = Padre::create([
                'nombre'    =>  $user->name,
                'user_id'   =>  $user->id
            ]);

            return $user;

        } elseif($data['tipouser'] == 4) {

             $estudiante = Estudiante::create([
                'nombre'    =>  $user->name,
                'user_id'   =>  $user->id
            ]);

            return $user;

        }
        

        

    }
}
