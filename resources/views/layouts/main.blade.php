<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        
        <meta http-equiv=”Expires” content=”0″>
        <meta http-equiv=”Last-Modified” content=”0″>
        <meta http-equiv=”Cache-Control” content=”no-cache, mustrevalidate”>
        <meta http-equiv=”Pragma” content=”no-cache”>
        
        <meta name="csrf-token" content="{{ csrf_token() }}">
        
        <meta name="description" content="Tienda de componentes de ordenador ">
        <meta name="author" content="">
        
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>@yield('title')</title>
        
        <!-- Custom styles -->
        <link href="css/main.css" rel="stylesheet">
        <!-- Laravel boostraps styles -->
        <link href="css/app.css" rel="stylesheet">
        
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">

    </head>
    <body>
        
        <div class="flex-center position-ref">
            
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/">Teknomarket</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

            <li class="nav-item active">
              <a class="nav-link" href="#" id="Ofertas">Ofertas</a>
            </li>
            <li class="nav-item dropdown active">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Busqueda</a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    
			        <a class="dropdown-item" href="" >Busqueda avanzada</a>
                    <a class="dropdown-item" href="" >Procesadores</a>
                    <a class="dropdown-item" href="" >Tarjetas graficas</a>
                    <a class="dropdown-item" href="" >Memoria ram</a>
                    <a class="dropdown-item" href="" >Discos duros</a>
                    <a class="dropdown-item" href="" >Lectores</a>
                    <a class="dropdown-item" href="" >Fuentes de alimentación</a>
                    <a class="dropdown-item" href="" >Placas base</a>
                    <a class="dropdown-item" href="" >Refrigeración</a>
                    <a class="dropdown-item" href="" >Perifericos</a>
                    <a class="dropdown-item" href="" >Cajas</a>
                    
                </div>  
                
            </li>

			  
	
		<li class="nav-item dropdown active" id="onUser">
            
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        @guest
        Mi usuario
        @else
        {{ Auth::user()->name }}
        @endguest
        </a>
			
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			
            <a class="dropdown-item" href="">Mi carro</a>
                @if (Route::has('login'))
                
                @auth
                    <a class="dropdown-item" href="{{ url('/home') }}">Mis datos</a>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                        document.getElementById('logout-form').submit();">Salir
                    </a>
                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                        @csrf
                    </form>
                @else
                    <a class="dropdown-item" href="{{ route('login') }}">Entrar</a>
                    <a class="dropdown-item" href="{{ route('register') }}">Registrarse</a>
                @endauth
                
                @endif
            
        </div>    
		</li>
			  
            <li class="nav-item active">
              <a class="nav-link" href="#">Contacto</a>
            </li>
			  
          </ul>
        </div>
      </div>
    </nav>
            
        </div>
        
            <main class="py-4">
                
            @yield('content')
                
            </main>
        
        <footer class="py-4 bg-dark">
            
            <p class="m-0 text-center text-white footer-text">Copyright &copy; Teknomarket 2018</p>
            
        </footer>
        
        <!-- Bootstrap core JavaScript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/app.js"></script>
        <!-- Control de usuario,contenido y llamadas ajax -->

        <!--<script type="text/javascript" src="/js/logctrl.js"></script>-->
        <script type="text/javascript" src="js/ajaxctrl.js"></script>
        <script type="text/javascript" src="js/paginador.js"></script>
        <script type="text/javascript" src="js/contentctrl.js"></script>
    </body>
</html>