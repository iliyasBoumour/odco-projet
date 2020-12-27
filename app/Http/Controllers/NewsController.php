<?php

namespace App\Http\Controllers;

use App\Categorie;
use App\Pdfpost;
use App\Poste;
use App\Video;
use Illuminate\Http\Request;
use TCG\Voyager\Models\Post;

class NewsController extends Controller
{
    public function index($prefix){
        $posts=null;
        $categorie = Categorie::where('nomCategorie',$prefix)->first();
        if($categorie){
            $posts = Poste::where('categorie_id',$categorie->id)
                          ->orderBy('dateEvenement','Desc')->paginate(5);
        }
        $type=array(
            'actualites' => 'جميع المستجدات',
            'programmes' => 'جميع البرامج',
            'agenda'     => 'جميع الفعاليات'
        );
        $ArabicDate = new ArabicData;

        return view('news.index',[
            'posts' => $posts,
            'prefix' => $prefix,
            'type' => $type,
            'ArabicDate' => $ArabicDate
        ]);


    }

    public function show($prefix,$title,$id,$optional=''){
        if($optional != '')
           $id=$optional;
        $pdfs = Pdfpost::where('poste_id',$id)->get() ?? null;
        $videos = Video::where('poste_id',$id)->get() ?? null;
        $poste = Poste::where('id',$id)->first();
        $type=array(
            'actualites' => ' المستجدات',
            'programmes' => ' البرامج',
            'agenda'     => ' الفعاليات'
        );
      
        return view('news.show',[
            'pdfs' => $pdfs,
            'videos' => $videos,
            'poste' => $poste,
            'destination' => $type[$prefix]
        ]);
    }
}
