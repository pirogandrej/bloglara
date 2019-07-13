<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>Blog</title>

    <link rel="stylesheet" href="{{ asset('css/front.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/slick/slick.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/slick/slick-theme.css') }}">
    <link rel="stylesheet" href="{{ asset('css/custom.css?v=' . time()) }}">
    <link rel="icon" type="image/png" href="{{ asset('img/front/favicon.png') }}">

</head>

<body>

    <div id="app">

        <nav class="navbar main-menu navbar-default">
            <div class="container">
                <div class="menu-content">

                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                                data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/"><img src="/img/front/logo.png" alt=""></a>
                    </div>

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                        {{--<ul class="nav navbar-nav text-uppercase">--}}
                            {{--<li><a href="/">Главная</a></li>--}}
                            {{--<li><a href="/aboutme">О себе </a></li>--}}
                            {{--<li><a href="/contact">Контакты</a></li>--}}
                        {{--</ul>--}}

                        <ul class="nav navbar-nav text-uppercase pull-right">
                            @if(Auth::check())
                                <li><a href="/profile">Изменить профиль</a></li>
                                <li><a href="/logout">Выйти</a></li>
                            @else
                                <li><a href="/register">Регистрация</a></li>
                                <li><a href="/login">Логин</a></li>
                            @endif
                        </ul>

                    </div>

                    <div class="show-search">
                        <form role="search" method="get" id="searchform" action="#">
                            <div>
                                <input type="text" placeholder="Search and hit enter..." name="s" id="s">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    @if(session('status'))
                        <div class="alert alert-info">
                            {{session('status')}}
                        </div>
                    @endif
                </div>
            </div>
        </div>

        <div class="wrapper">
            <div class="carousel">
                <div><img src="{{ asset('img/front/proga.jpeg') }}"></div>
                <div><img src="{{ asset('img/front/magento.jpeg') }}"></div>
                <div><img src="{{ asset('img/front/git.jpeg') }}"></div>
                <div><img src="{{ asset('img/front/mysql.jpeg') }}"></div>
            </div>
        </div>

        @yield('content')

        @include('layouts.footer')

    </div>

    <script type="text/javascript" src="/js/front.js"></script>
    <script type="text/javascript" src="{{ asset('plugins/slick/slick.min.js') }}"></script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.carousel').slick({
                slidesToShow: 1,
                autoplay: true,
                autoplaySpeed: 4000,
                dots: false,
                arrows: false,
                infinite: true,
                speed: 1000,
                fade: true,
                cssEase: 'linear'
            });
        });
    </script>

</body>
</html>