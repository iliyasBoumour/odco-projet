<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Poste extends Model
{
    public function videos(){
        return $this->hasMAny(Video::class);
        }
        public function categorie(){
          return $this->belongsTo(Categorie::class);
        }
        public function pdfs(){
          return $this->hasMAny(Pdfpost::class);
        }
}
