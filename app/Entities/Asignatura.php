<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Asignatura extends Model
{
   protected $fillable = ['nombre', 'user_id', 'profesor_id'];

   public function user()
   {
   	return $this->belongsTo(User::class);
   }

   public function profesor()
   {
   	return $this->belongsTo(Profesor::class,'profesor_id');
   }

   public function estudiante()
   {
   	return $this->hasMany(Estudiante::class,'asignatura_id');
   }
}
