@extends('layouts.app')

@section('css')
    <link rel="stylesheet" href="{{asset('/css/menu-vertical.css')}}">
    <title>تقديم المساعدة</title>
@endsection

@section('content')
  <div class="d-flex" id="menu-content">
    <!-- MENU VERTICAL -->
        <div class="scroll">
          <div class="bg-light border-right " id="menu-vertical">
            <div class="menu-title"> القطاعات</div>
            <div class="list-group list-group-flush">
             
              @foreach ($services as $service)
              <a href="{{route('assistance',str_replace(' ','-',$service->nomService))}}" class="list-group-item  @if($currentService === $service->nomService) current1 @endif">{{$service->nomService}}</a>
              @endforeach
              
            </div>
          </div>
        </div>
    <!-- MENU VERTICAL -->

    <!-- CONTENT -->
    <div id="page-content">

      <div class="btn1">
        <span class="fas fa-times"></span>
      </div> 
      <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
          <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">المساعدة القانونية</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">المساعدةالإقتصادية</a>
        </li>
      </ul>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <!-- ASSISTANCE JURIDIQUE -->
            <section>
            
              <x-show-news :poste="$posteJur" :videos="$vidJur" :pdfs="$pdfJur"></x-show-news>
            </section>
             <!-- ASSISTANCE JURIDIQUE -->

        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
         <!-- ASSISTANCE ECONOMIQUE -->
          <section>
            <x-show-news :poste="$posteEco" :videos="$vidEco" :pdfs="$pdfEco"></x-show-news>
           </section>
          <!-- ASSISTANCE ECONOMIQUE -->

        </div>
        
      </div>

      <div id="foot">
        <x-navigation></x-navigation>
        <footer>
          <div class="container">
           <ul class="social-icon">
             <li><a href="https://www.facebook.com/office.developpement.cooperation/" target="_blank"><i class="fab fa-facebook-f fb" aria-hidden="true"></i></a></li>
             <li><a href="https://www.youtube.com/channel/UC61kWgZBRGEILXv4iVx7Zaw" target="_blank"><i class="fab fa-youtube yt" aria-hidden="true"></i></a></li>
             <li><a href="https://twitter.com/search?q=odco2016" target="_blank"><i class="fab fa-twitter tw" aria-hidden="true"></i></a></li>
           </ul>
           <div class="hr"></div>
           <p>ODCO &copy; 2020, All RIghts Reserved</p>
          </div>
      </footer>
      </div>
      
    </div>
      <!-- CONTENT -->
  </div>
  @endsection

  @section('script')
   <script>
    $('.btn1').click(function(e){
    $(this).toggleClass("click");
    $("#wrapper").toggleClass("toggled");
    $(".scroll").toggle();
  });
  </script>
  @endsection

