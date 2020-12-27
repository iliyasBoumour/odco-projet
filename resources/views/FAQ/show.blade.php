@extends('layouts.app')
@section('css')
<title>FAQ</title>
@endsection
@section('content')
<!-- SECTION 1 -->
<section class="my-4" id="showCaseFAQ">
    <div class="container">
      <div  class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
        <div class="carousel-inner">
            <div class="overlay">
              <h2>سؤال جواب</h2>
            </div>
            <div class="carousel-item active">
                <img src="images/FAQ.jpg" class="d-block img-fluid w-100"  alt="...">
          </div>
      </div>
      </div>
    </div>
   </section>
  <!-- SECTION 1 -->
  <!-- SECTION 2-->
  @if($QAs->count())
  <section class="mb-4" id="FAQ">
    <div class="container" >
  
  @foreach($QAs as $QA)
  <div class="accordion" id="accordion{{$QA->id}}">
      <div class="card">
          <div class="card-header collapsed" data-toggle="collapse" href="#collapse{{$QA->id}}">
                <i class="fas fa-chevron-down"></i>
                <h5 class="FAQ-title">{{$QA->question}}</h5>
          </div>
          <div id="collapse{{$QA->id}}" class="collapse" data-parent="#accordion{{$QA->id}}">
              <div class="card-body">
                {{$QA->reponse}}
              </div>
          </div>
      </div>
  </div>
  @endforeach
  
    </div>
  
  
  </section>
  {{$QAs->links()}}
  @endif
  <!-- SECTION 2 -->
  @endsection

  @section('script')
  <script>
    let title=document.querySelector('#showCaseFAQ .overlay h2');
    let btn = document.querySelector('#FAQ');
    $(document).ready(function(){
       btn.addEventListener('click', e => {
       if(e.target.className.includes('card-header'))
       {
           if(e.target.className.includes('collapsed'))
           e.target.firstElementChild.className='fas fa-chevron-up';
           else
           e.target.firstElementChild.className='fas fa-chevron-down';
       }
       else if(e.target.className.includes('FAQ-title'))
       {
           if(e.target.parentElement.className.includes('collapsed'))
           e.target.parentElement.firstElementChild.className='fas fa-chevron-up';
           else
           e.target.parentElement.firstElementChild.className='fas fa-chevron-down';
       }
       else
       return;
 
   });
    anim(100);
    });
   function anim(x){
     if(!x)
       return;
     $(title).animate({color:'#34B1E4'},700);
     $(title).animate({color:'#C27624'},700);
     $(title).animate({color:'#EE7419'},700);
     $(title).animate({color:'#A5C724'},700);
     anim(--x);
   }
 
 
 
 </script>
  @endsection