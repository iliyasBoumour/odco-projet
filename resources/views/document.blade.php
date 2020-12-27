@extends('layouts.app')

@section('content')
    <div class="container text-center" id="app">
        
        <document-vue islot="{{$islot}}" type="{{$type}}" :documents="{{$documents}}"></document-vue>
      

    </div>
@endsection

@section('css')
    <title>الوثائق</title>
@endsection