<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="{{ asset('js/script.js') }}"></script>
    <script src="https://unpkg.com/imask"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('css/style.css') }}" rel="stylesheet">

	<link rel="icon" type="image/x-icon" href="{{ asset('/assets/icon.jpg')}}">
</head>
<body>
<div id="app">
    <nav class="navbar navbar-expand-md navbar-dark navbar-laravel fixed-top">
        <div class="container">
            <a class="navbar-brand" href="{{ url('/') }}">
                {{ config('app.name', 'Laravel') }}
            </a>


            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link menu-button" href="{{ route('viewTerminal') }}"
                           id="viewTerminal">{{ __('Terminal') }}</a>
                    </li>
                @guest
                    <!-- Right Side Of Navbar -->

                        <!-- Authentication Links -->
                        <li class="nav-item">
                            <a class="nav-link menu-button" id="login" href="{{ route('login') }}">{{ __('Login') }}</a>
                        </li>
                        <li class="nav-item">
                            @if (Route::has('register'))
                                <a class="nav-link menu-button" id="register" href="{{ route('register') }}">{{ __('Register') }}</a>
                            @endif
                        </li>
                    @else
                        <li class="nav-item">
                            <a class="nav-link menu-button" href="{{ route('addUser') }}"
                               id="addUser">{{ __('Add User') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-button" href="{{ route('editingUser') }}"
                               id="editingUser">{{ __('Editing User') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-button" href="{{ route('deleteUser') }}"
                               id="deleteUser">{{ __('Delete User') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-button" href="{{ route('viewAddDeposit') }}"
                               id="viewAddDeposit">{{ __('Add Deposit') }}</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link menu-button" href="{{ route('viewAddCredit') }}"
                               id="viewAddCredit">{{ __('Add Credit') }}</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                {{ Auth::user()->name }} <span class="caret"></span>
                            </a>

                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="{{ route('logout') }}"
                                   onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>

                                <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                      style="display: none;">
                                    {{ csrf_field() }}
                                </form>
                            </div>
                        </li>
                    @endguest
                </ul>
            </div>
        </div>
    </nav>

    <main class="py-4">
        @yield('content')
    </main>
</div>
</body>
<footer class="bg-dark text-center text-white fixed-bottom">
    <div class="text-center p-3" style="font-size: 15px">
        © 2023 Copyright: <a class="text-white" href="https://t.me/ITwisterMax">Maksim Mikhalkov</a>
    </div>
</footer>
</html>
