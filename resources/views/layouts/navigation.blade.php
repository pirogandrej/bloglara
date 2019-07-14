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
