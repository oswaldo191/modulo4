<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Estudiante extends Model
{
    protected $table = 'estudiantes';
	
    protected $fillable = ['nombre','user_id','padre_id','asignatura_id'];

    public function user()
    {
    	return $this->belongsTo(User::class);
    }

    public function padre()
    {
    	return $this->belongsTo(Padre::class);
    }

    public function asignatura()
    {
        return $this->belongsTo(Asignatura::class);
    }
}
