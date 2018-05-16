@section('navbar')
    @parent
    @if (Route::has('login'))
        <div class="top-right links">
        @auth
            <a href="{{ url('/home') }}">Principal</a>
        @else
            <a href="{{ route('login') }}">Entrar</a>
            <a href="{{ route('register') }}">Registrarse</a>
        @endauth
        </div>
    @endif
@endsection