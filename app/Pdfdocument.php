<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pdfdocument extends Model
{
    public function document(){
        return $this->belongsTo('App\Document');
    }
}
