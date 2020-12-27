<?php

namespace App\Http\Controllers;

use App\Poste;
use Illuminate\Http\Request;

class ActualitesController extends Controller
{
    public function show($titre,$id){
       $actu = Poste::find($id)->first();
       return view ('actualites.showActu',[
           'actu' =>$actu
       ]);
        
    }
}
