<!DOCTYPE html>
<html lang="ru">
<head>

    @include('layouts.head')

</head>

<body>

    <div id="app">

        @include('layouts.navigation')

        @include('layouts.messager')

        @include('layouts.slider')

        @yield('content')

        @include('layouts.footer')

    </div>

    @include('layouts.scripts')

</body>
</html>