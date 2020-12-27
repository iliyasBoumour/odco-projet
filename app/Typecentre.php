<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Typecentre extends Model
{
    public function centres(){
        return $this->hasMAny(Centre::class);
      }
}
