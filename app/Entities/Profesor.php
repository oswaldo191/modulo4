<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Profesor extends Model
{
    protected $fillable = ['nombre','user_id'];

    public function asignatura()
    {
    	return $this->hasMany(Asignatura::class,'profesor_id');
    }

    public function user()
    {
    	return $this->belongsTo(User::class);
    }
}
