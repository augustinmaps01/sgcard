<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ $title ?? config('app.name') }}</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <link rel="stylesheet" href="{{ asset('css/modal.css') }}">
    @livewireStyles
</head>
<body class="overflow-auto bg-gray-300">
        @if (!request()->routeIs('login'))
            @include('partials.navbar')
            @include('partials.sidebar')
        @endif

    <div class="flex items-center justify-center p-4 mt-7">
        <div>
            {{ $slot }}
        </div>
    </div>
        @if (!request()->routeIs('login'))
            @include('partials.footer2')
        @endif

    <script src="{{ asset('js/index.js') }}"></script>
    <script src="../path/to/flowbite/dist/flowbite.min.js"></script>
    @livewireScripts
</body>
</html>
