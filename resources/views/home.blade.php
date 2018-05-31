@extends('layouts.main')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Panel de usuario</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    Bienvenido {{ Auth::user()->name }}
                    <div id="paypal-button"></div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<script type="text/javascript" src="js/paypal.js"></script>
@endsection