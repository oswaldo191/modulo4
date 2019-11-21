<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Padre extends Model
{
    protected $fillable = ['nombre','user_id'];

    public function user()
    {
    	return $this->belongsTo(User::class);
    }

    public function estudiante()
    {
    	return $this->hasMany(Estudiante::class,'padre_id');
    }
}
