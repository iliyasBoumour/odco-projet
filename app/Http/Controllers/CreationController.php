<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Categorie;
use Illuminate\Support\Facades\Route;

class CreationController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(Route::currentRouteName() == 'precreation') $page='precreation';
            else $page='postcreation';
        $creation=Categorie::where('nomCategorie','like', '%'.$page.'%')->first() ?? 'null'; 
        if($creation!=='null') { $creation=$creation->postes()->first() ?? 'null';  }
       

        return view('creation.creation',['contenue'=>$creation]);
    }
}
