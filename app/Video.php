<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Video extends Model
{
    public function post(){
        return $this->belongsTo(Poste::class);
      }
}
