@extends('layouts.app')

@section('content')
   
  @if($prefix == 'actualites' || $prefix == 'programmes')
     
     <section id="actualite" class="my-5">
         <h4 id="all-news" >{{$type[$prefix]}}</h4>
         <div class="container" style="background: #f4f4f4 !important;">
            @foreach($posts as $post)
            <div class="card mt-2 mb-3">
                <div class="row no-gutters">
                  <div class="col-md-2">
                    <img src="{{asset('storage/'.$post->image)}}" class="card-img">
                  </div>
                  <div class="col-md-10">
                    <div class="card-body">
                    <a href="{{$prefix.'/'.str_replace(' ','-',$post->titre).'/'.$post->id}}" class="card-title">{{$post->titre}}</a>
                      <p class="card-text">{!!mb_substr($post->contenue,0,100,'utf-8')!!}<span>...</span></p>
                     
                    </div>
                  </div>
                </div>
               
              </div>
              @endforeach
              {{$posts->links()}}
         </div>
         
     </section>

     @elseif($prefix == 'agenda')
    
    <section id="all-agenda" class="my-5">
        <h4 class="title">{{$type[$prefix]}}</h4>
        <div class="container" style="background: #f4f4f4 !important;">
            @foreach($posts as $post)
            <div class="card my-3">
                <h5 class="card-header">{{$ArabicDate->date($post->dateEvenement)}}</h5>
                <div class="card-body">
                    <a href="{{'agenda/'.str_replace(' ','-',$post->titre).'/'.$post->id}}" class="card-title">{{$post->titre}}</a>
                    <p class="card-text">{!!mb_substr($post->contenue,0,100,'utf-8')!!}</p>
                </div>
              </div>
            @endforeach
            {{$posts->links()}}
        </div>
    </section>
  @endif
  
@endsection
