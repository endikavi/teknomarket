@extends('layouts.main')

@section('title', 'Teknomarket Galeria')

@section('content')

<div id="galleryContent">
@foreach ($data as $element)

@if ($element->serie%2!=0)
<span>
    <div class="row">
@endif


        <div class="col-md-3"> 
            
        <img class="col-md-12" src="{{ $element->img }}" alt=""> 
            
        </div>
        <div class="col-md-3"> 
            <h3>{{ $element->modelo }} <small> {{ $element->precio }}&#8364;</small></h3>
            <h4>Descuento {{ $element->oferta }}%</h4>
            <br>
            <button class="btn btn-primary"  onclick='
                items.push  ({
                                  "name": "{{ $element->modelo }}",
                                  "description": "{{$element->serie}}",
                                  "quantity": "1",
                                  "price": "{{ $element->precio }}",
                                  "tax": "0.00",
                                  "sku": "1",
                                  "currency": "EUR"
                                                   
                            });
               amount.total+={{ $element->precio }}
                sessionStorage.setItem("items",JSON.stringify(items))
                sessionStorage.setItem("amount",JSON.stringify(amount))                                     
            '> <h4>Añadir al carro</h4> </button> 
        </div>
    

@if ($element->serie%2==0)
    </div>
    <hr>
</span>
@endif

@endforeach
</div>

@endsection

@section('js')
        <script>
            
        localStorage.setItem ("Page",1);
           $('#galleryContent').easyPaginate({
                paginateElement: 'span',
                elementsPerPage: 3,
           });
            
        var amount = JSON.parse (sessionStorage.getItem('amount'))||{ total: 0, currency: 'EUR' }
        var items =  JSON.parse (sessionStorage.getItem('items'))||[]
        
        </script>
@endsection