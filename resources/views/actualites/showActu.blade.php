@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                {{-- Autre chose  --}}
            </div>
            <div class="col-md-8">
                <h3 class="text-center">{{$actu->titre}}</h3>
                <img src="{{$actu->images}}" alt="" srcset="">
                <p class="mt-2 text-right">{{$actu->contenue}}</p>
            </div>
        </div>
    </div>
@endsection