<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width={device-width}, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>{{ config('app.name') }}</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.css" rel="stylesheet" />
    {{-- <link rel="stylesheet" href="{{ mix('css/app.css') }}"> --}}
    @vite('resources/css/app.css');
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    @livewireStyles
</head>


<body class="overflow-auto bg-gray-300">
    @include('partials.navbar');
    <div class="p-4 sm:ml-64">
        @livewireScripts
        <div class="p-4 border-white rounded-lg border-gray">
            @yield('content');

        </div>
    </div>
    <script src="{{ asset('js/upload.js') }}"></script>
    <script src="{{ asset('js/reduce.js') }}"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.1/flowbite.min.js"></script>
    @include('partials.footer2');
</body>
</html>
