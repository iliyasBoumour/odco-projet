@extends('layouts.app')
@section('css')
{{-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> --}}
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
crossorigin="anonymous">
<title>اتصل بنا</title>

@endsection
@section('content')
@if (session('message'))
<div class="{{session('alerte')}}" style="text-align:center;">
        {{ session('message') }}
</div>
@endif
<!-- SECTION 1 -->
<section class="my-4" id="showCaseContact">
  <div class="container">
    <div  class="carousel slide" data-ride="carousel" id="carouselExampleIndicators">
      <div class="carousel-inner">
          <div class="overlay">
            <h2>اتصال</h2>
          </div>
          <div class="carousel-item active">
              <img src="{{asset('/images/contact-us-1908762_1920.png')}}" class="d-block img-fluid w-100"  alt="...">
        </div>
    </div>
    </div>
  </div>
 </section>
<!-- SECTION 1 -->
<h2 class="contact-title my-4">اتصل بنا</h2>
<div class="container" style="background-color: #F4F4F4 !important;">
  <form id="contact-form" method="POST" action="/contact">
    @csrf
    <div class="input-group my-4">
      <input type="text" class="form-control @error('nom') is-invalid @enderror" name="nom" placeholder="اسمك" value="{{ old('nom') }}" required>
      
      <div class="input-group-append ">
        <span class="input-group-text text-white"><i class="fas fa-user"></i></span>
    </div>
    </div>

    <div class="input-group my-4">
      <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" placeholder="عنوان بريدك الإلكتروني" value="{{ old('email') }}" required autocomplete="email" autofocus>
      <div class="input-group-append ">
        <span class="input-group-text text-white"><i class="fas fa-at"></i></span>
    </div>
    </div>

    <div class="input-group my-4">
      <input type="text" class="form-control @error('objet') is-invalid @enderror" placeholder="الموضوع" name="objet" value="{{ old('objet') }}" required>
      <div class="input-group-append ">
        <span class="input-group-text text-white"><i class="fas fa-envelope"></i></span>
    </div>
    </div>

    <div class="input-group my-4">
      <textarea class="form-control @error('contenue') is-invalid @enderror" name="contenue" placeholder="الرسالة"  required>{{ old('contenue') }}</textarea>
      <div class="input-group-append ">
        <span class="input-group-text text-white"><i class="fas fa-envelope"></i></span>
    </div>
    </div>

    <button type="submit" class="btn btn-block my-4" data-toggle="modal" data-target="#exampleModal">إرسال رسالة</button>

  </form>
</div>
<!-- SECTION 1 -->
<!-- SECTION 2 -->
<h2 class="contact-title my-4">مراسلة أعضاء الإدارة العامة</h2>
<section class="ContactTable">
  <div class="container" >
    <table class="table table-bordered" style="direction: rtl;text-align: right;">
      <thead>
        <tr>
          <th scope="col">المصلحة</th>
          <th scope="col">الهاتف و الفاكس</th>
          <th scope="col"> العنوان</th>
        </tr>
      </thead>
      <tbody>
        @if($admins !=='null')
        @foreach($admins as $admin)
        <tr>
          <td ><p>{{$admin->delegation}}</p></td>
          <td ><p>{{$admin->numero}}</p></td>
          <td ><p>{{$admin->adresse}}</p></td>
        </tr>
        @endforeach
        @endif
      </tbody>
    </table>
  </div>
</section>
<!-- SECTION 2 -->

<!-- SECTION 3 -->
<h2 class="contact-title my-4">مراسلة المندوبيات الجهوية</h2>
<section class="ContactTable">
  <div class="container" >
    <table class="table table-bordered" style="direction: rtl;text-align: right;">
      <thead>
        <tr>
          <th scope="col">المندوبيات</th>
          <th scope="col">الهاتف و الفاكس</th>
          <th scope="col"> العنوان</th>
        </tr>
      </thead>
      <tbody>
        @if($delegs !=='null')
        @foreach($delegs  as $deleg)
        <tr>
          <td class=><p>{{$deleg->delegation}}</p></td>
          <td ><p>{{$deleg->numero}}</p></td>
          <td ><p>{{$deleg->adresse}}</p></td>
        </tr>
        @endforeach
        @endif
      </tbody>
    </table>
  </div>
</section>

<!-- SECTION 3 -->
@endsection

@section('script')
<script>
    let title=document.querySelector('#showCaseContact .overlay h2');
    $(document).ready(function(){
    anim(100);
    });
   function anim(x){
     if(!x)
       return ;
     $(title).animate({color:'#34B1E4',fontSize:'4rem',letterSpacing:'0px'},1000);
     $(title).animate({color:'#fff',fontSize:'4rem',letterSpacing:'23px'},1000);
     anim(--x);
   }
    </script>
@endsection