<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Categorie extends Model
{
    public function Postes(){
        return $this->hasMAny(Poste::class);
      }
}
