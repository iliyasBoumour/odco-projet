
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{mix('/css/theme.css')}}">
    <link rel="stylesheet" href="{{mix('/css/app.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Lalezar&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('/css/style.css')}}">
    {{-- <link rel="stylesheet" href="{{asset('/css/agenda+program.css')}}"> --}}
    <script src="https://kit.fontawesome.com/e979273c7d.js" crossorigin="anonymous"></script>
    <link rel="manifest" href="/manifest.json">
    <script src="https://www.gstatic.com/dialogflow-console/fast/messenger/bootstrap.js?v=1"></script>
    <df-messenger
    chat-icon="/images/icons/icon-72x72.png"
      intent="WELCOME"
      chat-title="ODCO"
      agent-id="e9435a79-2269-4f74-b57d-f8914da1f374"
      language-code="fr"
    ></df-messenger>
    <link rel="icon"  href="{{asset('/favicon.ico')}}">
    @laravelPWA
    @yield('css')
    @stack('css1')
  </head>
<body>

  <div>
    {{-- <div id="app"> --}}
<!-- NAVBAR -->

  
  <nav class="navbar navbar-expand-md navbar-light py-3" id="mynav">
    <div class="container flex-row-reverse">
        <a href="{{route('home')}}" class="navbar-brand"><img src="{{asset('/images/logo.png')}}" alt="logo" width="200px" ></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="nav">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="{{route('home')}}" 
                    class="nav-link px-3 @if(Route::currentRouteName() == 'home') current @endif">الرئيسية</a>
                </li>
                
                <li class="nav-item dropdown">
                  <a 
                     style="padding:8px 16px;"
                     class="nav-link dropdown-toggle @if(Route::currentRouteName() == 'postcreation' || Route::currentRouteName() == 'precreation' ) current @endif" 
                     href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                     إرشادات
                  </a>
                  <div class="dropdown-menu text-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="{{route('precreation')}}">تأسيس  تعاونية</a>
                      <a class="dropdown-item" href="{{route('postcreation')}}">مواكبة  التأسيس</a>
                    
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a 
                    style="padding:8px 16px;"
                     class="nav-link dropdown-toggle @if(Route::currentRouteName() == 'document' ) current @endif" 
                     href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    الوثائق
                  </a>
                  <div class="dropdown-menu text-right" aria-labelledby="navbarDropdown">
                    @foreach ($typedocs as $type)
                      <a class="dropdown-item" href="/document/{{$type->id}}">{{$type->type}}</a>
                    @endforeach
                  </div>
                </li>
                <li class="nav-item">
                  <a 
                    href="{{route('ass')}}" 
                    class="nav-link px-3 @if(Route::currentRouteName() == 'assistance') current @endif">
                    مساعدة
                  </a>
                </li>
                <li class="nav-item">
                  <a 
                    href="{{route('contact')}}" 
                    class="nav-link px-3 @if(Route::currentRouteName() == 'contact') current @endif">
                    اتصال
                  </a>
                </li>
               
            </ul>
        </div>
    </div>
  </nav>    
  
        @yield('content')
  </div>

      
        
        <!-- FOOTER -->
        @if(Route::current()->uri != 'assistance/{service}')
      <div id="foot">
        <x-navigation></x-navigation>
        <footer>
          <div class="container mt-1">
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
      @endif
          <!-- FOOTER -->
      


<script src="{{mix('js/app.js')}}"></script> 
<script src="{{asset('/js/lightslider.js')}}"></script>
<script src="https://code.jquery.com/color/jquery.color-2.1.2.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>


@yield('script')

@stack('script1')

</body>
</html>