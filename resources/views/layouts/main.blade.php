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
        
        <div class="flex-center position-ref full-height">
            
        <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="">Teknomarket</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">

            <li class="nav-item active">
              <a class="nav-link" href="#" id="GalleryPro">Inmuebles</a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="#" id="GalleryNot">Noticias</a>
            </li>

			  
	
		<li class="nav-item dropdown active" id="onUser">   
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Mi usuario
        </a>
			
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
			
			<form method="post" action="/inmobiliaria/" >
			<div id="Reset" Style="display:none;">	
		    <button type="button" class="dropdown-item" >Volver</button>
			<div class="dropdown-divider"></div>
			</div>
            <button type="button" class="dropdown-item" id="Register" >Registrarse</button>
            <button type="button" class="dropdown-item" id="Login" >Entrar</button>
            <input type="text" name="e" class="dropdown-item " id="Email" placeholder="Email address" required pattern='^[^@]+@[^@]+\.[^@]{2,3}$' minlength="8" maxlength="40" required Style="display:none;" required>
            <input type="text" name="u" class="dropdown-item " id="Username" Style="display:none;" placeholder="Username" pattern="[A-z0-9À-ž]{3,15}$" minlength="3" maxlength="15" >
            <input type="password" name="p" class="dropdown-item " id="Password" Style="display:none;" placeholder="Password" required pattern="(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,40}" minlength="8" maxlength="40" required>
            <input type="hidden" name="key" value="userLog" required>
			<div id="Submit" Style="display:none;">
			<div class="dropdown-divider"></div>
			<button type="submit" class="dropdown-item">Enviar</button>
			</div>
            </form>
			
		  <div id="Admin" Style="display:none;">
          	<a class="dropdown-item" id="GalleryUser" href="#">Administrar Usuarios</a>
		  <div class="dropdown-divider"></div>
			<a class="dropdown-item" id="NewProForm" href="#">Añadir Propiedad</a>
			<a class="dropdown-item" id="NewNotForm" href="#">Añadir Noticia</a>
			<a class="dropdown-item" id="NewUserForm" href="#">Añadir Usuario</a>
		  <div class="dropdown-divider"></div>
		  </div>
			
		  <form method="post" action="/inmobiliaria/"  id="Exit" Style="display:none;">
		  <input type="hidden" name="key" value="userExit" required>
          <button type="submit" class="dropdown-item" >Salir</button>
		  </form>
        </div>    
		</li>
			  
            <li class="nav-item active">
              <a class="nav-link" href="#">Contacto</a>
            </li>
			  
          </ul>
        </div>
      </div>
    </nav>
            
          <!--  <div class="top-left links"><a href="{{ url('/home') }}">Principal</a></div>
            <div class="top-center links"><a href="{{ url('/home') }}">Principal</a></div>
            
            @if (Route::has('login'))
                <div class="top-right links">
                @auth
                    <a href="{{ url('/home') }}">Principal</a>
                @else
                    <a href="{{ route('login') }}">Entrar</a>
                    <a href="{{ route('register') }}">Registrarse</a>
                @endauth
                </div>
            @endif-->
            
            <div class="content">
                
                @yield('content')
                
            </div>
            
        </div>
        
        <footer class="py-4 bg-dark">
            
            <p class="m-0 text-center text-white footer-text">Copyright &copy; Teknomarket 2018</p>
            
        </footer>
        
        <!-- Bootstrap core JavaScript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/app.js"></script>
        <!-- Control de usuario,contenido y llamadas ajax -->

        <script type="text/javascript" src="js/logctrl.js"></script>
        <!--<script type="text/javascript" src="js/ajaxctrl.js"></script>-->
        <script type="text/javascript" src="js/paginador.js"></script>
        <script type="text/javascript" src="js/contentctrl.js"></script>
    </body>
</html>