@if($poste)
{{-- <h4 class="m-2 p-2 destination">{{'الرئيسية >>>'.$destination}}</h4> --}}
<h4 class="creationTitle my-4">{{$poste->titre}}</h4>
<!-- IMAGE -->
<section class="my-5" id="image">
    <div class="container" >
        <img src="{{asset('storage/'.$poste->image)}}">
        {{-- class=" img-thumbnail" style="width: 100%;  max-height: 500px;" --}}
    </div>
</section>
<!-- IMAGE -->
<!-- TEXT -->
<section id="text">
    <div class="container text-right" style="background-color:#f4f4f4 !important;">
       <p style="font-size:18px">{!!$poste->contenue!!}</p>
    </div>
</section>
<!-- TEXT -->
@endif
<!-- VIDEO -->
{{-- @dd($videos) --}}
@if($videos!=='null' && $videos->first())
<section id="videos">
    <h3 class="creationTitle mt-3 my-4">فيديوهات</h3>
    <div class="container" style="background-color:#f4f4f4 !important;">
      <div class="row " style="justify-content: center;">
        @foreach($videos as $video)
          <div class="col-md-4">
              <iframe width="100%" height="300px" src="{{$video->path}}" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
          </div>
        @endforeach
      </div>
    </div>
</section>
@endif
<!--VIDEO -->

<!-- SECTION DOCUMENT -->
{{-- // des document pour le test --}}
{{-- @if($pdfs!=='null' && $pdfs->first())   --}}
@if(true)
<section class="mb-4" id="doc">
  <h3 class="creationTitle my-4">الوثائق</h3>
  <div class="container" style="background-color:#f4f4f4 !important;">
    <ul class="list-group text-right">
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a download="Savoir faire des transitions.pdf" href="/storage/PdfsPosts/Savoir faire des transitions.pdf">
          <i class="fas fa-download"></i>
        </a>
        <div class="pdf">
          <a href="/storage/PdfsPosts/Savoir faire des transitions.pdf" target="_blank">طلب المصادقة على التسمية</a>
          <i class="fas fa-file-pdf text-danger"></i>
        </div>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a download="Savoir faire des transitions.pdf" href="/storage/PdfsPosts/Savoir faire des transitions.pdf">
          <i class="fas fa-download"></i>
        </a>
        <div class="pdf">
          <a href="/storage/PdfsPosts/Savoir faire des transitions.pdf" target="_blank">اختصاص السجل المحلي</a>
          <i class="fas fa-file-pdf text-danger"></i>
        </div>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a download="Savoir faire des transitions.pdf" href="/storage/PdfsPosts/Savoir faire des transitions.pdf">
          <i class="fas fa-download"></i>
        </a>
        <div class="pdf">
          <a href="/storage/PdfsPosts/Savoir faire des transitions.pdf" target="_blank">الوثائق المطلوبة للحصول على شهادة المصادقة على التسمية</a>
          <i class="fas fa-file-pdf text-danger"></i>
        </div>
      </li>
      <li class="list-group-item d-flex justify-content-between align-items-center">
        <a download="Savoir faire des transitions.pdf" href="/storage/PdfsPosts/Savoir faire des transitions.pdf">
          <i class="fas fa-download"></i>
        </a>
        <div class="pdf">
          <a href="/storage/PdfsPosts/Savoir faire des transitions.pdf" target="_blank">الوثائق المطلوبة لفتح حساب بنكي</a>
          <i class="fas fa-file-pdf text-danger"></i>
        </div>
      </li> 

    </ul>
  </div>
</section>
@endif
<!-- SECTION DOCUMENT -->
