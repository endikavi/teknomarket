@extends('layouts.main')

@section('title', 'Teknomarket')

@section('content')

    <p>This is my body content.</p>

    @if(1==2)
        <p>Estoy en el if</p>
    @else
        <p>No estoy en el if</p>
    @endif
    
@endsection