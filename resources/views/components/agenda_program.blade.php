
    <div class="row my-5 mx-4">
        <div class="col-xl-6" id="programme">
            <div id="programme-header">
                <button class="btn">
                  <a style="text-decoration: none;color:white;" href="{{route('News.index','programmes')}}">جميع البرامج</a>
                </button>   
              <h5 class="programme-title">
                البرامج
              </h5>
              </div>
            <ul id="responsive" class="cs-hidden">
              @if($programmes)
               @foreach($programmes as $program)
                <li class="item-a">
                   <!--  -->
                   <div class="card">
                    <div class="row no-gutters">
                      <div class="col-md-6" >
                        <img src="{{asset('storage/'.$program->image)}}" class="card-img" height="100%" alt="...">
                      </div>
                      <div class="col-md-6">
                        <div class="card-body text-right">
                          <a class="card-title a2" href="{{'programmes/'.str_replace(' ','-',$program->titre).'/'.$program->id}}">{{$program->titre}}</a>
                          {{-- <h5 class="card-title">{{$program->titre}}</h5> --}}
                          <p class="card-text">{{mb_substr($program->contenue,0,250,'utf-8')}}</p>
                          <button class="btn">
                            <a class="a" href="{{'programmes/'.str_replace(' ','-',$program->titre).'/'.$program->id}}">مزيد من التفاصيل</a>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                   <!--  -->
                </li>
               @endforeach
              @else
                <li class="item-a"><h2>Nothing to show now</h2></li>
              @endif
                {{-- <li class="item-a">
                    <!--  -->
                    <div class="card">
                     <div class="row no-gutters">
                       <div class="col-md-6" >
                         <img src="karim-manjra-fm9wqDNXyQ0-unsplash.jpg" class="card-img" height="100%" alt="...">
                       </div>
                       <div class="col-md-6">
                         <div class="card-body text-right">
                           <h5 class="card-title">برنامـــــج لدعم التعاونيات حديثة التأسيس</h5>
                           <p class="card-text">برنامج "مرافقة" هو برنامج لدعم ومواكبة التعاونيات الحديثة التأسيس لأن التجربة أبانت ان اقلاع النشاط  الاقتصادي في اطار تعاوني يكون بطيئا نسبيا بالنسبة الى المشاريع التقليدية.</p>
                           <button class="btn">مزيد من التفاصيل</button>
                         </div>
                       </div>
                     </div>
                   </div>
                    <!--  -->
                 </li>
                 <li class="item-a">
                  <!--  -->
                  <div class="card">
                   <div class="row no-gutters">
                     <div class="col-md-6" >
                       <img src="image4.jpg" class="card-img" height="100%" alt="...">
                     </div>
                     <div class="col-md-6">
                       <div class="card-body text-right">
                         <h5 class="card-title">برنامـــــج لدعم التعاونيات حديثة التأسيس</h5>
                         <p class="card-text">برنامج "مرافقة" هو برنامج لدعم ومواكبة التعاونيات الحديثة التأسيس لأن التجربة أبانت ان اقلاع النشاط  الاقتصادي في اطار تعاوني يكون بطيئا نسبيا بالنسبة الى المشاريع التقليدية.</p>
                         <button class="btn">مزيد من التفاصيل</button>
                       </div>
                     </div>
                   </div>
                 </div>
                  <!--  -->
               </li>
               <li class="item-a">
                <!--  -->
                <div class="card">
                 <div class="row no-gutters">
                   <div class="col-md-6" >
                     <img src="image3.jpg" class="card-img" height="100%" alt="...">
                   </div>
                   <div class="col-md-6">
                     <div class="card-body text-right">
                       <h5 class="card-title">برنامـــــج لدعم التعاونيات حديثة التأسيس</h5>
                       <p class="card-text">برنامج "مرافقة" هو برنامج لدعم ومواكبة التعاونيات الحديثة التأسيس لأن التجربة أبانت ان اقلاع النشاط  الاقتصادي في اطار تعاوني يكون بطيئا نسبيا بالنسبة الى المشاريع التقليدية.</p>
                       <button class="btn">مزيد من التفاصيل</button>
                     </div>
                   </div>
                 </div>
               </div>
                <!--  -->
             </li> --}}
            </ul>
        </div>
        <div class="col-xl-6" id="agenda">
            <div id="agenda-header">
                <button class="btn">
                   <a style="text-decoration: none;color:white;" href="{{route('News.index','agenda')}}">جميع الفعاليات</a>
                </button>   
              <h5 class="agenda-title">جدول الأعمال</h5>
              </div>
              @if($agenda)

                @foreach($agenda as $ag)
                <div class="card">
                  <h5 class="card-header">{{$arabicDate->date($ag->dateEvenement)}}</h5>
                  <div class="card-body">
                   <a class="a1" href="{{'agenda/'.str_replace(' ','-',$ag->titre).'/'.$ag->id}}" class="card-text">{{$ag->titre}}</a> 
                  </div>
                </div>
                @endforeach
              @endif
        </div>
    </div>



  

@push('script1')
<script>
    $(document).ready(function() {
    $('#responsive').lightSlider({
            item:1,
            loop:true,
            slideMove:1,
            pauseOnHover: true,
            auto:true,
            easing: 'cubic-bezier(0.25, 0, 0.25, 1)',
            speed:600
        });
    });
</script>
@endpush

@push('css1')
    <style>
      .a{
        text-decoration: none;
        color: white;
      }
      .a:hover{
        text-decoration: none;
        color: white;
      }
      .a1{
        text-decoration: none;
        color: #34B1E4;
        font-weight: bold;
      }
      .a2{
        font-size: 18px;
      }
    </style>
    <link rel="stylesheet" href="{{asset('css/agenda_program.css')}}">
@endpush