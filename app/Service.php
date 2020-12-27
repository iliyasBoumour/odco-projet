<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    public function posts(){
        return $this->hasMAny(Poste::class);
        }
}
