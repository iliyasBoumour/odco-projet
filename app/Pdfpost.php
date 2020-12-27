<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pdfpost extends Model
{
    public function poste(){
        return $this->belongsTo(Poste::class);
      }
}
