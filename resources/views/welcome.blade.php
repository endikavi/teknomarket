@extends('layouts.main')

@section('title', 'Teknomarket')

@section('content')

    <div class="container">
        <div class="row justify-content-center">
            
            <h1 class="my-4">Teknomarket
                <small>Componentes de ordenador</small>
            </h1>

     
            <div class="row">

                <div class="col-md-8">
                    <img class="img-fluid" src="https://i4.cibernet.ru/1/8196/81953722/afacdb/videokarta-asus-geforce-gtx-1070-rog-strix-gaming-8192mb.jpg" alt="">
                </div>

        <div class="col-md-4">
          <h3 class="my-3">En las ofertas de hoy</h3>
            <ul>
                <li>Procesadores 5% </li>
                <li>Tarjetas graficas 5% </li>
                <li>Discos duros 10% </li>
                <li>Fuentes de alimentacion 5% </li>
            </ul>
          <h3 class="my-3">Mas vendido</h3>
          <ul>
            <li>RX 480 MSI 5% </li>
            <li>GTX 1060 ti 10% </li>
          </ul>
        </div>

      </div>
            
            <h3 class="my-4">Mas Reciente</h3>

      <div class="row" id="reciente">

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

      </div>
      <!-- /.row -->
		
<!-- Related Projects Row -->
      <h3 class="my-4">Promocionado</h3>

      <div class="row" id="popular">

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

        <div class="col-md-3 col-sm-6 mb-4">
          <a href="#">
            <img class="img-fluid peque-img" src="" alt="">
          </a>
        </div>

      </div>
            
            
        </div>
    </div>
    
@endsection