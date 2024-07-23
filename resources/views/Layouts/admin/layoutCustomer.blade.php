<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config('app.name') }}</title>
    <link rel="stylesheet"href="{{ asset('css/users/home.css') }}">
    @vite(['resources/css/app.css', 'resources/js/app.js'])
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/datepicker.min.js"></script>
    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.8.2/dist/alpine.min.js" defer></script>
    <script src="{{ asset('js/script.js') }}"></script>
</head>
<body class="bg-gray-300">
    <div class="p-4 sm:ml-64">
        <div class="p-4 border-white rounded-lg border-gray">
            @yield('content');
        </div>
    </div>
    @include('partials.footer2');
    <script src="{{ asset('js/app.js') }}"></script>
    <script src="{{ asset('js/datatable.js') }}"></script>
</body>
</html>
