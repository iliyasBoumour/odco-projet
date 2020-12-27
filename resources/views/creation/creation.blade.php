@extends('layouts.app')

@section('css')
<title>تأسيس تعاونية|مواكبةالتأسيس</title>
@endsection

@section('content')
<!-- SECTION 1 -->
<section class="my-4" id="showCase">
    <div class="container">
      <div  class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
        <div class="carousel-inner">
            <div class="overlay">
              <h2>
                <span class="right">@if(Route::currentRouteName() == 'postcreation') مواكبة @else تأسيس @endif </span>
                <span class="left">@if(Route::currentRouteName() == 'precreation') تعاونية @else  التأسيس @endif</span>
            </h2>
            </div>
            <div class="carousel-item active">
                <img src="@if(Route::currentRouteName() == 'postcreation') images/image5.jpg @else images/imagesLightSlider/image7.jpg @endif" class="d-block img-fluid w-100"  alt="...">
          </div>
      </div>
      </div>
    </div>
   </section>
  <!-- SECTION 1 -->

  @if($contenue!=='null' && $contenue->contenue && Route::currentRouteName() == 'precreation')
  <h2 class="creationTitle my-4">الإجراءات</h2>
  @endif
  <!-- SECTION TRANSACTION -->
  
  <section class="mb-4" id="transaction">
    <div class="container text-right" style="background-color:#f4f4f4 !important;">
      @if($contenue!=='null')
      {!!$contenue->contenue!!}
      @endif
    </div>
  </section>
  <!-- SECTION TRANSACTION -->
  @if($contenue!=='null' && $contenue->videos->first())
  <h2 class="creationTitle my-4">فيديوهات</h2>
@endif
  <!-- SECTION VIDEO -->
  <section id="videos">
    <div class="container" style="background-color:#f3f3f3 !important;">
      <div class="row " style="justify-content: center;">
        
        @if($contenue!=='null')
        @foreach ($contenue->videos as $video)
          <div class="col-md-4">
              <iframe width="100%" height="300px" src="{{$video->path}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
       @endforeach
       @endif
      </div>
  </div>
  </section>
  <!-- SECTION VIDEO -->
  @if($contenue!=='null' && $contenue->pdfs->first())
  <h2 class="creationTitle my-4">الوثائق</h2>
  @endif
  <!-- SECTION DOCUMENT -->
  <section class="mb-4" id="doc">
    <div class="container" style="background: #f4f4f4 !important">
      <ul class="list-group text-right">
        @if($contenue!=='null' )
        @foreach ($contenue->pdfs as $pdf)
        <li class="list-group-item d-flex justify-content-between align-items-center">
          {{-- Storage::disk(config('voyager.storage.disk'))->url((json_decode($pdf->path))[0]->download_link) --}}
          <a href="{{'/storage/'.$pdf->path}}" download>
            <i class="fas fa-download" ></i>
          </a>
          <div class="pdf">
  
            <a href="{{'/storage/'.$pdf->path}}" target="_blank">
  
            <div>{{$pdf->titre}}</div>
            </a>
            <i class="fas fa-file-pdf text-danger"></i>
          </div>
        </li>
     @endforeach
     @endif
  
      </ul>
    </div>
  </section>
  <!-- SECTION DOCUMENT -->
  @endsection
  
  @section('script')
  <script>
  let SpnL=document.querySelector('#showCase h2  .left');
  let SpnR=document.querySelector('#showCase h2  .right');
  $(document).ready(function(){
  anim();
  });
  function anim()
  {
  $(SpnL).animate({color:'#fff',fontSize:'4rem'},1000);
  $(SpnR).animate({color:'#34B1E4',fontSize:'5rem'},1000);
  $(SpnL).animate({color:'##34B1E4',fontSize:'5rem'},1000);
  $(SpnR).animate({color:'#fff',fontSize:'4rem'},1000);
  anim();
  
  }
  
  </script>
@endsection