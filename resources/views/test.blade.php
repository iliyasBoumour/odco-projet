@extends('layouts.app')

@section('css')
<style>
    #work .card-header
    {
      text-align: center;
      font-size: 1.5rem;
      font-weight: bold;
    }
    #work .card-body
    {
      text-align: right;
      display: flex;
      direction: rtl;
    }
    #work .card-body i
    {
      margin-left: 8px;
      margin-top: 4px;
    }
    #work .card-body a
    {
      text-decoration: none;
    }
    
    #work .card:nth-child(odd) .card-header
    {
      color: #A5C724;
    }
    #work .card:nth-child(even) .card-header
    {
      color: #EE7419;
    }
    #work .card:nth-child(odd) 
    {
      border: #A5C724 1px solid;
    }
    #work .card:nth-child(even) 
    {
      border: #EE7419 1px solid;
    }

</style>
@endsection

@section('content')
<div class="container w-75" id="work" style="background-color: #F4F4F4 !important;">
    <div class="card my-3">
      <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
      <div class="card-body">
        <i class="fas fa-file-pdf text-danger"></i>
        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
      </div>
    </div>
    <div class="card my-3">
      <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
      <div class="card-body">
        <i class="fas fa-file-pdf text-danger"></i>
        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
      </div>
    </div>
    <div class="card my-3">
      <h5 class="card-header">الاثنين, 30. ديسمبر 2019</h5>
      <div class="card-body">
        <i class="fas fa-file-pdf text-danger"></i>
        <a href="#"> لائحة الناجحين في مباراة لتوظيف متصرف من الدرجة الثانية ~ سلم 11 (1 منصب)</a>
      </div>
    </div>
  </div>
@endsection