<div class="py-4 sm:ml-64">
    {{-- Success is as dangerous as failure. --}}
    <form wire:submit = "store">
        <div class="container p-6 mx-auto text-center ">
            <h1 class="text-3xl font-bold text-blue-700">UPLOAD IMAGE </h1>
        @if(session('success'))
            <div id ="targetElement" class="w-1/2 p-4 mx-auto">
                <div id="" class="flex items-center justify-center p-2 mt-4 text-center text-white bg-green-600 border border-green-600 rounded-lg shadow-lg" role="alert">
                    <svg class="w-[30px] h-[30px] text-white dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                        <path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm13.707-1.293a1 1 0 0 0-1.414-1.414L11 12.586l-1.793-1.793a1 1 0 0 0-1.414 1.414l2.5 2.5a1 1 0 0 0 1.414 0l4-4Z" clip-rule="evenodd"/>
                    </svg>
                    <div class="ml-3 font-bold text-md">
                        Success!
                        <span class="font-normal text-gray-300">{{ session('success') }}</span>
                    </div>
                    <button id = "triggerElement" type="button" class="ml-auto -mx-1.5 -my-1.5 bg-green-50 text-gray-200 rounded-lg focus:ring-2 focus:ring-green-400 p-1.5 hover:bg-green-200 inline-flex items-center justify-center h-8 w-8 dark:bg-gray-800 dark:text-green-400 dark:hover:bg-gray-700" data-dismiss-target="#alert-3" aria-label="Close">
                        <span class="sr-only">Close</span>
                        <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                        </svg>
                    </button>
                </div>
            </div>
        @endif
            <!-- Two-Column, Two-Row Grid -->
            <div class="container grid grid-cols-1 gap-4 mx-auto mt-8 md:grid-cols-2">
                <!-- First Column sigcard front -->
                {{-- <div x-data="{ imageUrl: '', showPreview: false }" class="flex flex-col items-center justify-center w-full h-full p-8 border-2 border-gray-300 border-dashed rounded-2xl">
                    <label for="front-upload" class="flex flex-col items-center justify-center w-full h-full cursor-pointer">
                      <div class="flex items-center justify-center w-full rounded-full lg:w-2/4 h-2/4">
                        <img x-show="showPreview" :src="imageUrl" alt="sigcard front image" class="w-[400px] h-auto">
                        <div x-show="!showPreview" class="border rounded bg-gray-100 w-[400px] h-auto"></div>
                      </div>
                      <p :class="{} mt-4 text-gray-500">Drag and drop or click here.</p>
                      <input
                        id="front-upload"
                        type="file"
                        wire:model.live="card_front"
                        class="hidden"
                        x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                      >
                    </label>
                  </div>

                  <!-- Back Card -->
                  <div class="flex flex-col items-center justify-center w-full h-full p-8 border-2 border-gray-300 border-dashed rounded-2xl">
                    <label for="front-upload" class="flex flex-col items-center justify-center w-full h-full cursor-pointer">
                      <div class="flex items-center justify-center w-full rounded-full lg:w-2/4 h-2/4 ">
                        <img class="w-[400px] h-auto" src="{{ asset('img/cloud.png') }}" alt="sigcard front image">


                      </div>
                      <p class="mt-4 text-gray-500">Drag and drop or click here.</p>
                      <input id="front-upload" type="file" class="hidden" />
                    </label>
                  </div>
                </div>

                <div class="flex mt-8">
                  <button class="px-4 py-2 font-bold text-white bg-blue-600 rounded-full hover:bg-blue-700">
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20">
                      <path fill-rule="evenodd" d="M10 5a1 1 0 00-1 1v7a1 1 0 002 0V6a1 1 0 00-1-1zm-1 9a1 1 0 102 0 1 1 0 00-2 0z" clip-rule="evenodd" />
                    </svg>
                  </button>
                </div> --}}
                <div class="p-4 rounded">
                    <div x-data = "{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">SIGCARD FRONT</h1>

                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="card_front"
                            wire:model.live = "card_front"
                            accept="image/*"
                            type="file"
                            x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                        <div class="mb-4 w-fill">
                            <img x-show="showPreview" :src="imageUrl" alt="sigcard front image" class="w-[400px] h-auto">
                        </div>
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div x-data = "{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">SIGCARD BACK</h1>
                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="card_back"
                            wire:model.live = "card_back"
                            accept="image/*"
                            type="file"
                            x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                            <div class="mb-4 w-fill">
                                <img x-show="showPreview" :src="imageUrl" alt="sigcard front image" class="w-[400px] h-auto">
                            </div>
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div  x-data = "{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">NAIS FRONT</h1>
                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="nais_front"
                            wire:model.live = "nais_front"
                            accept="image/*"
                            type="file"
                             x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                            <div class="mb-4 w-fill">
                                <img x-show="showPreview" :src="imageUrl" alt="Nais front image" class="w-[400px] h-auto">
                            </div>
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div x-data = "{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">NAIS BACK</h1>
                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="nais_back"
                            wire:model.live = "nais_back"
                            accept="image/*"
                            type="file"
                            x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                        <div class="mb-4 w-fill">
                            <img x-show="showPreview" :src="imageUrl" alt="Nais back image" class="w-[400px] h-auto">
                        </div>
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div x-data = "{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">DATA PRIVACY FRONT</h1>
                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="dpr_front"
                            wire:model.live = "dpr_front"
                            accept="image/*"
                            type="file"
                            x-on:change="showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                        <div class="mb-4 w-fill">
                            <img x-show="showPreview" :src="imageUrl" alt="Nais back image" class="w-[400px] h-auto">
                        </div>
                    </div>
                </div>
                <div class="p-4 rounded">
                    <div x-data ="{imageUrl: '', showPreview: false}" class="container mx-auto mt-8 text-center">
                        <h1 class="mb-8 text-4xl font-bold text-blue-800">DATA PRIVACY BACK</h1>
                        <input
                            class="block w-full mb-2 text-lg border border-blue-300 rounded-lg cursor-pointer text-white-900 dark:text-blue-4 focus:outline-none dark:blue-400"
                            id="compress"
                            name="dpr_back"
                            wire:model.live = "dpr_back"
                            accept="image/*"
                            type="file"
                            x-on:change = "showPreview = true; imageUrl = URL.createObjectURL($event.target.files[0])"
                            >
                            <div class="w-full mb-4">
                                <img x-show="showPreview" :src="imageUrl" alt="Data Privacy back image" class="w-[400px] h-auto">
                            </div>
                    </div>
                </div>

            </div>
            <div class="container text-center">
                <button type="submit"
                    class="text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-lg px-8 py-2.5 text-center me-2 mb-4 dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">Upload</button>
            </div>
        </div>
    </form>
</div>
