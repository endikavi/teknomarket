@extends('layouts.main')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Carro</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif

                    Revise su pedido {{ Auth::user()->name }}
                    <div id=verCarro><div>
                    <div id="paypal-button"></div>
                        <hr>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('js')
<script>
        var amount = JSON.parse (sessionStorage.getItem('amount'))||{ total: 0, currency: 'EUR' }
        var items =  JSON.parse (sessionStorage.getItem('items'))||[]
        for(var x=0;x < items.length;x++){
            y=x+1
            $("#verCarro").append('<span id="articulo'+x+'"><h3>Articulo '+y+"º<h3><p>Nombre Articulo: "+items[x].name+"</p><p>Precio Articulo: "+items[x].price+"&#8364;"+'</p><button type="button" class="btn btn-danger" onclick="'+"items.splice("+x+", 1); sessionStorage.setItem('items',JSON.stringify(items)); "+"$('#articulo"+x+"').html('')"+"; amount.total-="+items[x].price+"; $('#price').html(amount.total+'&#8364;') ; sessionStorage.setItem('amount',JSON.stringify(amount))"+'">Eliminar</button><hr>')
            
        }
        $("#verCarro").append('Total a pagar: <div id="price">'+ amount.total+"&#8364;</div>")
</script>
<script src="https://www.paypalobjects.com/api/checkout.js"></script>
<script type="text/javascript" src="js/paypal.js"></script>
@endsection