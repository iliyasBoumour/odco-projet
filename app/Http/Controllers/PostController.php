<?php

namespace App\Http\Controllers;

use App\Categorie;
use App\Document;
use App\Poste;
use App\Service;
use App\Typedocument;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Str;

class PostController extends Controller
{   
   
    public function index(){
   
         function getdataforindex($nom_categorie,$nbr){
            
            $categorie = Categorie::where('nomCategorie',$nom_categorie)->get()->first();
           
            if($categorie && $categorie->count() != 0){
                return Poste::where('categorie_id',$categorie->id)
                                    //->orderBy('created_at','desc')
                                    ->orderBy('created_at','Desc')->take($nbr)->get();
            }
            else
            return null;
        }
        $actualites = getdataforindex('actualites',6);
        $programmes = getdataforindex('programmes',3);
        $agenda = getdataforindex('agenda',3);
        
        $ArabicDate = new ArabicData;
     
      //dd(mb_substr($actualites[2]->contenue,0,100,'utf-8')); 
          
       return view('home',[
           'actualites' => $actualites,
            'programmes' => $programmes,
            'agenda' => $agenda,
            'ArabicDate' => $ArabicDate
            
       ]);
    }
    public function document($id){
        //$typedocs = Typedocument::all();
        
        $documents = Document::whereHas('typedocument',function(Builder $q) use($id){
            $q->where('id',$id);
        })->has('pdfdocument')->with('pdfdocument')->withCount('pdfdocument')->get();
       // dd($documents);
       $type=Typedocument::find($id);
       
        return view('document',[
            'type' => $type->type,
            'islot' => $type->islot,
            'documents' => $documents
        ]);
    }

   public function assistance(){
       $service = Service::where('nomService','!=','all')->first();
      
       if($service)
         return redirect()->route('assistance',str_replace(' ','-',$service->nomService));
   }

    public function service($currentService)
    {
        $nomService=str_replace('-',' ',$currentService);
        $service=Service::where('nomService',$nomService)->first();
        $services=Service::where('nomService','!=','all')->get();
        $jur=$service->posts()->where('TypeAssistance','like','%juri%')->first();
        $eco=$service->posts()->where('TypeAssistance','like','%eco%')->first();
        $pdfJur=$jur->pdfs ?? 'null';
        $vidJur=$jur->videos ?? 'null'; 
        $pdfEco=$eco->pdfs ?? 'null';
        $vidEco=$eco->videos ?? 'null';
        return view('assistance.assistance',[
            'services' => $services,
            'posteJur' => $jur,
            'posteEco' => $eco,
            'pdfJur'=>$pdfJur,
            'pdfEco'=>$pdfEco,
            'vidJur'=>$vidJur,
            'vidEco'=>$vidEco,
            'currentService' => $nomService
        ]);
    }
}

