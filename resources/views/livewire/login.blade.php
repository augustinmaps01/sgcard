

<div>
    <div>
        <div class="px-20 pt-2 mt-16 pb-24 bg-[#0052D4] flex-item-center justify-center shadow-xl shadow-cyan-500/5 border-2 border-gray-200  rounded-xl">
            <div class="mb-10 text-center ">
                <h2 class="mb-4 text-4xl font-bold text-white">RBT BANK INC.,</h2>
                <img src="{{ Vite::asset('resources/images/logos.png') }}" alt="RBT BANK INC." class="mx-auto mb-4" style="height: 120px;">
            </div>
            <form wire:submit = "login">
                @if(session()->has('error'))
                    <div x-data = "{open: true}" id="targetElement" class="p-4">
                        <div x-show = "open" x-init = "setTimeout(() => open = false, 4000)" class="flex items-center p-2 mt-4 text-center text-red-400 bg-red-200 border border-red-600 rounded-lg shadow-lg" role="alert">
                            <div class="ml-3 font-bold text-red-600 text-md">
                                Error!
                                <span class="font-normal text-red-600">  {{ session('error') }}</span>
                            </div>
                            <button @click = "open = false" id="triggerElement" type="button" class="ml-auto -mx-1.5 -my-1.5 bg-red-600 text-gray-60 rounded-lg focus:ring-2 focus:ring-red-400 p-1.5  inline-flex items-center justify-center h-8 w-8 dark:bg-red-800 dark:text-red-400 dark:hover:bg-red-700" data-dismiss-target="#alert-3" aria-label="Close">
                                <span class="sr-only">Close</span>
                                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                                </svg>
                            </button>
                        </div>
                    </div>
                @endif
                <div class="mb-4">
                    <input type="text" placeholder="Username" wire:model = "username" class="w-full p-3 text-gray-700 bg-white rounded focus:outline-none focus:ring-2 focus:ring-blue-400">
                    @error('username')
                        <span class="error">{{ $message }} </span>
                    @enderror
                </div>
                <div x-data="{ show: false }" class="relative mb-4">
                    <input :type="show ? 'text' : 'password'" placeholder="Password" wire:model =  "password" class="w-full p-3 py-2 text-gray-700 bg-white rounded focus:outline-none focus:ring-2 focus:ring-blue-400">
                    @error('password')
                        <span class="error"> {{ $message }}</span>
                    @enderror
                    <div @click="show = !show" class="absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer">
                        <svg x-show="!show" class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-width="2" d="M21 12c0 1.2-4.03 6-9 6s-9-4.8-9-6c0-1.2 4.03-6 9-6s9 4.8 9 6Z"/>
                            <path stroke="currentColor" stroke-width="2" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                          </svg>

                          <svg x-show = "show" class="w-6 h-6 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.933 13.909A4.357 4.357 0 0 1 3 12c0-1 4-6 9-6m7.6 3.8A5.068 5.068 0 0 1 21 12c0 1-3 6-9 6-.314 0-.62-.014-.918-.04M5 19 19 5m-4 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                          </svg>

                    </div>
                </div>
                <div class="flex justify-center mb-4">
                    <button type="submit" class="w-2/3 py-3 border-solid border-2 border-sky-50 shadow-md text-[#0052D4] bg-white font-bold rounded-3xl hover:bg-[#0052D4] hover:text-white focus:outline-none focus:ring-2 focus:ring-blue-400">LOGIN</button>
                </div>
            </form>
        </div>
        <div class="mt-4 text-center text-gray-500">
            <p>Copyright © 2023 - <a href="#" class="text-green-500 underline">MIS DEPARTMENT</a>. All rights reserved.</p>
        </div>
    </div>

</div>

