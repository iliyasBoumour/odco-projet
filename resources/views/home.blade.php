@extends('layouts.app')


  


@section('content')
    <!-- SLIDER -->
<section class="p-3 mx-4" id="slider">
    <div class="">
      <div  class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="overlay">
                    <div class="title">مكتب تنمية التعاون <span>يرحب بكم</span></div>
            </div>
            <div class="carousel-item active " data-interval="1000">
                <img src="{{asset('images/imagesLightSlider/image1.jpg')}}" class="d-block img-fluid w-100"  alt="...">
            </div>
            <div class="carousel-item" data-interval="1000">
              <img src="{{asset('images/imagesLightSlider/image2.jpg')}}" class="d-block  img-fluid w-100"  alt="...">
            </div>
            <div class="carousel-item" data-interval="1000">
              <img src="{{asset('images/imagesLightSlider/image3.jpg')}}" class="d-block  img-fluid w-100"  alt="...">
            </div>
          </div> 
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
      </div>
    </div>
  </section>
  <!-- SLIDER -->
    <x-lightslider :actualites="$actualites"></x-lightslider>
        
   <!-- Agenda + Program --> 
   
    <x-agenda_program :programmes="$programmes" :agenda="$agenda" :arabicDate="$ArabicDate"></x-agenda_program>
    
  <!-- CHIFFRE CLE -->  
  <section id="statistic">
    <div class="container  text-center my-5">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                      <div class="icon">
                        <i class="fas fa-users fa-4x"></i>
                    </div>
                    <div>
                        <h3 class="counter">578</h3>
                        <p>عدد المستخدمين</p>
                    </div>
                    </div>
                  </div> 
            </div>
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                      <div class="icon">
                        <i class="fas fa-university fa-4x"></i>
                    </div>
                    <div>
                        <h3 class="counter">150</h3>
                        <p>عدد المؤسسات</p>
                    </div>
                   </div>
                    </div>
                  </div> 
                
            <div class="col-lg-4 ">
                <div class="card">
                    <div class="card-body">
                      <div class="icon">
                        <i class="fas fa-chart-pie fa-4x"></i>
                    </div>
                   <div>
                    <h3 class="counter">1013</h3>
                    <p>عدد القطاعات</p>
                   </div>
                    </div>
                  </div> 
               
            </div>
        </div>
    </div>  
   </section>
  <!-- CHIFFRE CLE -->
@endsection

@push('css1')
<title>تعريف مكتب تنمية التعاون | مكتب تنمية التعاون</title>
<style>
  
    .counter-box{
        margin: 20px auto;
        height: 400px;
    }
    .fas{
        font-size: 50px;  
    }
    .sec-counter p{
        font-size: 20px;
    }
    .sec-counter h3{
        font-size: 80px;
    }
    .pst{
      font-size: 24px;
    }
</style>
@endpush


