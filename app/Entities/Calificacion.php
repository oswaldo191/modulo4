<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Calificacion extends Model
{
    protected $fillable = ['calificacion','user_id','asignatura_id'];

     public function asignatura()
    {
    	return $this->belongsTo(Asignatura::class);
    }

    public function user()
    {
    	return $this->belongsTo(User::class);
    }
}
