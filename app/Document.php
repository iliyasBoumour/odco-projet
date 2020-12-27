<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Document extends Model
{
    public function typedocument(){
       return $this->belongsTo('App\Typedocument');
    }
    public function pdfdocument(){
        return $this->hasMany('App\Pdfdocument');
    }
}
