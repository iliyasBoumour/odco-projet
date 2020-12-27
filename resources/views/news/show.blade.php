@extends('layouts.app')

@section('content')
   <x-show-news :poste="$poste" :videos="$videos" :pdfs="$pdfs" :destination="$destination"></x-show-news>
@endsection