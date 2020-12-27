<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Centre extends Model
{
    public function typecentre(){
        return $this->belongsTo(TypeCentre::class);
      }

}
