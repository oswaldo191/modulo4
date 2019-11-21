<?php

namespace App\Entities;

use Illuminate\Database\Eloquent\Model;

class Tipouser extends Model
{
    
    public function user()
    {
    	return $this->hasMany(User::class);
    }
}
