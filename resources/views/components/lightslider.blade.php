<div class="mx-4 p-3  my-5 " id="news" style="background: #f3f3f3 !important;">
    <div id="news-header" dir="ltr">
      <button class="btn">
          <a style="text-decoration: none;color:white;" href="{{route('News.index','actualites')}}">
               جميع المستجدات
          </a>
     </button>   
    <h5 class="news-title">المستجدات</h5>
    </div>
    
    @if ($actualites)
        <ul id="responsive_actu" class="cs-hidden">
            @foreach ($actualites as $actu)
            <li class="item-a">
                <div class="card hovercard">
                    <a href="{{'actualites/'.str_replace(' ','-',$actu->titre).'/'.$actu->id}}">
                        <img src="{{'storage/'.$actu->image}}" class="card-img-top" height="240px"  alt="...">
                    </a>
                    <div class="card-body">
                        <h5 class="card-title"><a href="{{'actualites/'.str_replace(' ','-',$actu->titre).'/'.$actu->id}}">{{mb_substr($actu->titre,0,90,'utf-8')}}</a></h5>
                        <p class="card-text">
                            {{mb_substr($actu->contenue,0,90,'utf-8')}}
                        </p>
                       
                        <a href="{{'actualites/'.str_replace(' ','-',$actu->titre).'/'.$actu->id}}"><span>...</span>التتمة</a>
                    </div>
                </div>
            </li>
            @endforeach
        </ul>
    @else
      <h5>nothing to sow now</h5>
    @endif
      {{-- <li class="item-a">
          <div class="card">
              <img src="{{asset('/images/imagesLightSlider/image1.jpg')}}" class="card-img-top" height="240px" alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li>
      <li class="item-a">
          <div class="card">
              <img src="image3.jpg" class="card-img-top"height="240px"  alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li>
      <li class="item-a">
          <div class="card">
              <img src="{{asset('/images/imagesLightSlider/image1.jpg')}}" class="card-img-top"height="240px"  alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li>
      <li class="item-a">
          <div class="card">
              <img src="{{asset('/images/imagesLightSlider/image1.jpg')}}" class="card-img-top"height="240px" alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li>
      <li class="item-a">
          <div class="card">
              <img src="{{asset('/images/imagesLightSlider/image1.jpg')}}" class="card-img-top"height="240px" alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li>
      <li class="item-a">
          <div class="card">
              <img src="{{asset('/images/imagesLightSlider/image1.jpg')}}" class="card-img-top"height="240px"  alt="...">
              <div class="card-body">
                  <h6 class="card-title"><a href="">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسوي</a></h6>
                  <p class="card-text">مساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التسمساعدة التعاونيات على إعداد هوية مرئية و/أو مواكبتها التقنية في التس</p>
                </div>
            </div>
      </li> --}}
     
      
   
</div>

@push('css1')
<link rel="stylesheet" href="{{asset('/css/lightslider.css')}}">
<style>
     /* .hovercard :hover{
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
     } */
</style>
@endpush

@push('script1')
<script>
  
    $(document).ready(function() {
      
$('#responsive_actu').lightSlider({
   item:4,
   loop:true,
   slideMove:2,
   pauseOnHover: true,
   auto:true,
   easing: 'cubic-bezier(0.25, 0, 0.25, 1)',
   speed:600,
   responsive : [
       {
           breakpoint:900,
           settings: {
               item:2,
               slideMove:1,
               slideMargin:6,
             }
       },
       {
           breakpoint:480,
           settings: {
               item:1,
               slideMove:1
             }
       }
   ]
});
});
</script>
@endpush