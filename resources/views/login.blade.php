<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>@yield('title', 'SIGCARD SYSTEM Login')</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{ asset('css/login.css') }}">
    @vite(['views/login.blade.php'])

</head>

<body class= "overflow-auto">
    <!-- navigation bar-->
    <div class="rectangle">
        <h1>SIGCARD SYSTEM</h1>
    </div>
    <div class="wrapper">
        <div class="card">
            <h1>RBT BANK INC.</h1>
            <img src="{{ Vite::asset('resources/images/logos.png') }}" alt="RBT Bank Logo">
            <form action="" method="post">
                @csrf
                <div class="form-group">
                    <input type="text" name="username" class="form-control" value="" id="username"
                        placeholder="Username" required autocomplete="off">
                    <span class="invalid-feedback"></span>
                </div>
                <div class="password-input form-group">
                    <input type="password" name="password" id="password" class="form-control" placeholder="Password"
                        required autocomplete="off">
                    <span class="invalid-feedback"></span>
                    <button type="button" id="show-password-btn">
                        <i class="fa fa-eye-slash" aria-hidden="true"></i>
                    </button>
                </div>
                <div class="form-group">
                    <input id="button" type="submit" class="btn btn-primary" value="LOGIN">
                </div>
            </form>
        </div>
    </div>
    <!-- footer -->
    @include('partials.footer');
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="{{ asset('js/script.js') }}"></script>
</body>
</html>
