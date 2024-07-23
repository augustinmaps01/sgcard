@extends('Layouts.superadmin.layoutUpload');
@section('content')

    <form action="{{ route('customer.upload.store') }}" method="POST" enctype="multipart/form-data">
        <div class="container p-4 mx-auto text-center bg-white">
            <h1 class="text-3xl font-bold text-blue-700">UPLOAD IMAGE </h1>
            @csrf
            <!-- Two-Column, Two-Row Grid -->
            <div class="container grid grid-cols-1 gap-4 mx-auto mt-8 md:grid-cols-2">
                <!-- First Column sigcard front -->
                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">SIGCARD FRONT</h1>
                        <input type="hidden" name="customer_id" value="{{ $customer->custid }}">
                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="card_front" accept="image/*" type="file">
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">SIGCARD BACK</h1>

                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="card_back"accept="image/*" type="file">

                    </div>
                </div>
                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">NAIS FRONT</h1>
                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="nais_front" accept="image/*" type="file">
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">NAIS BACK</h1>
                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="nais_back" accept="image/*" type="file">
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">DATA PRIVACY FRONT</h1>
                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="dpr_front" accept="image/*" type="file">
                    </div>
                </div>

                <div class="p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">DATA PRIVACY BACK</h1>
                        <input
                            class="block w-full text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress" name="dpr_back" accept="image/*" type="file">
                    </div>
                </div>
            </div>
            <div class="container text-center">
                <button type="submit"
                    class="text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-lg px-8 py-2.5 text-center me-2 mb-4 dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">Upload</button>
            </div>
        </div>
    </form>
@endsection
