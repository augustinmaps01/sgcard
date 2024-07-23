@extends('Layouts.user.layoutUpload');
@section('content')
    ;
    <form action="{{ route('image.store') }}" method="post" enctype="multipart/form-data">
        <div class="container h-50vh mx-auto  p-4 text-center">
            <h1 class="text-3xl font-bold text-blue-700">UPLOAD IMAGE </h1>

            <!-- Two-Column, Two-Row Grid -->
            @csrf
            <div class="container mx-auto mt-8 grid grid-cols-1 md:grid-cols-2 gap-4">
                <!-- First Column sigcard front -->
                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">SIGCARD FRONT</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="card-front" type="file">

                    </div>
                </div>

                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">SIGCARD BACK</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="card-back" type="file">

                    </div>
                </div>

                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">NAIS FRONT</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="nais-front" type="file">

                    </div>
                </div>

                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">NAIS BACK</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="nais-back" type="file">

                    </div>
                </div>

                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">DATA PRIVACY FRONT</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="dpr_front" type="file">

                    </div>
                </div>

                <div class="bg-white p-4 rounded">
                    <div class="container mx-auto mt-8 text-center">
                        <h1 class="text-4xl font-bold text-blue-800">DATA PRIVACY BACK</h1>
                        <input
                            class="block w-full text-lg text-white-900 border
                                     border-blue-300 rounded-lg cursor-pointer
                                      dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="large_size" name="dpr_back" type="file">

                    </div>
                </div>



                {{-- <div class="bg-white p-4 rounded">

                        <h1 class="text-4xl font-bold text-blue-800">SIGCARD FRONT</h1>

                        <div class="drag-area">
                            <div class="icon"><i class="fas fa-image"></i></div>
                            <header>Drag & Drop to Upload Image</header>
                            <span>OR</span>
                            <button type="button"
                                class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 me-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800">
                                Browse file
                            </button>
                            <span class="support">Supports: JPEG, JPG, PNG</span>
                            <input type="file" name="sgcfront" hidden>

                        </div>

                    </div>
                </div> --}}

                <!-- Second Column sigcard back -->


                <!-- Second Column sigcard  -->
            </div>
            <div class="container text-center">
                <button type="button"
                    class="text-blue-700hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-lg px-8 py-2.5 text-center me-2 mb-4 dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">Upload</button>
            </div>


        </div>





    </form>
@endsection
