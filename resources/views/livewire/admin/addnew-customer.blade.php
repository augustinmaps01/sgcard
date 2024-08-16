<div class="sm:ml-64">
    <div class="container py-3 bg-white shadow-3xl mb-28">
        {{-- <div id="" class="p-4">
            <div id="targetElement" class="flex items-center justify-center p-2 mt-4 text-center text-green-400 border border-green-600 rounded-lg shadow-lg bg-white-400" role="alert">
                <svg class="w-[30px] h-[30px] text-green-400 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                    <path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm13.707-1.293a1 1 0 0 0-1.414-1.414L11 12.586l-1.793-1.793a1 1 0 0 0-1.414 1.414l2.5 2.5a1 1 0 0 0 1.414 0l4-4Z" clip-rule="evenodd"/>
                </svg>
                <div class="ml-3 font-bold text-md">
                    Success!
                    <span class="font-normal text-green-400">{{ session('success') }}</span>
                </div>
                <button id="triggerElement" type="button" class="ml-auto -mx-1.5 -my-1.5 bg-green-50 text-green-500 rounded-lg focus:ring-2 focus:ring-green-400 p-1.5 hover:bg-green-200 inline-flex items-center justify-center h-8 w-8 dark:bg-gray-800 dark:text-green-400 dark:hover:bg-gray-700" data-dismiss-target="#alert-3" aria-label="Close">
                    <span class="sr-only">Close</span>
                    <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                    </svg>
                </button>
            </div>
        </div> --}}
        @if (session('success'))
                <div x-data = "{open: true}" id="targetElement" class="p-4">
                    <div  x-show = "open" x-init = "setTimeout(() => open = false, 2000)" class="flex items-center p-2 mt-4 text-center text-white bg-green-600 border border-green-600 rounded-lg shadow-lg" role="alert">
                        <svg class="w-[30px] h-[30px] text-white-100 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 24 24">
                            <path fill-rule="evenodd" d="M2 12C2 6.477 6.477 2 12 2s10 4.477 10 10-4.477 10-10 10S2 17.523 2 12Zm13.707-1.293a1 1 0 0 0-1.414-1.414L11 12.586l-1.793-1.793a1 1 0 0 0-1.414 1.414l2.5 2.5a1 1 0 0 0 1.414 0l4-4Z" clip-rule="evenodd"/>
                        </svg>
                        <div class="ml-3 font-bold text-md">
                            Success!
                            <span class="font-normal text-green-400">  {{ session('success') }}</span>
                        </div>
                        <button @click = "open = false" id="triggerElement" type="button" class="ml-auto -mx-1.5 -my-1.5 bg-green-50 text-gray-200 rounded-lg focus:ring-2 focus:ring-green-400 p-1.5  inline-flex items-center justify-center h-8 w-8 dark:bg-gray-800 dark:text-green-400 dark:hover:bg-gray-700" data-dismiss-target="#alert-3" aria-label="Close">
                            <span class="sr-only">Close</span>
                            <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                            </svg>
                        </button>
                    </div>
                </div>
            @endif
        {{-- If your happiness depends on money, you will never be happy with yourself. --}}
        <div class="flex justify-center w-full px-5 py-2 mx-auto mb-10">
            <form id ="dateForm" wire:submit.prevent ="save" method="POST" enctype="multipart/form-data">
                <h1  class="text-3xl text-center mb-7 ">Customer Information </h1>
                <div class="relative z-0 w-full mb-5 group">
                    <input type="text" wire:model.live.debounce.200ms = "client_ID" name="client_ID" id="client_ID" autocomplete="off"
                        class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        pattern="^[0-9\-]+$" placeholder=" " required />
                    <label for="CID"
                        class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                        CID</label>
                            @error('client_ID')
                                <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                            @enderror
                </div>
                <div class="relative z-0 w-full mb-5 group">
                    <input type="text" name="svngs_accno" wire:model.live.debounce.200ms ="svngs_accno" id="savingsAccount" autocomplete="off" pattern="^[0-9\-]+$"
                        class="block py-2.5 px-0 w-full text-md text-gry-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder=" " required />
                    <label for="savingsaccount"
                        class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                        Savings Account No.
                    </label>
                        @error('svngs_accno')
                            <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                        @enderror
                </div>
                <div class="relative z-0 w-full mb-5 group">
                    <input type="text"
                            wire:model.live.debounce.200ms = "amountOpened"
                            x-mask:dynamic = "$money($input, '.' )"
                            id="currency-input"
                            name ="amount_open"
                            autocomplete="off"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder="" required />

                    <label for="floating_first_name"
                        class="peer-focus:font-medium absolute text-sm text-black-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Enter
                        Amount Opened
                    </label>
                    @error('amountOpened')
                        <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                    @enderror
                </div>
                <div class="grid md:grid-cols-2 md:gap-6">
<<<<<<< HEAD:resources/views/livewire/addnew-customer.blade.php
=======
<<<<<<< HEAD:resources/views/livewire/admin/addnew-customer.blade.php
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1:resources/views/livewire/admin/addnew-customer.blade.php
                    <div class="relative z-0 w-full mb-4 group">
                        <input type="text"
                                id="inputField"
                                name="fname"
                                wire:model.live.debounce.200ms = "firstname"
                                autocomplete="off"
                                x-data = "{inputValue: ''}"
                                x-model = "inputValue"
                                x-on:input="inputValue = $event.target.value.charAt(0).toUpperCase() + $event.target.value.slice(1)"
                                pattern="^[A-Z][a-z]*$"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                placeholder="" required />
<<<<<<< HEAD:resources/views/livewire/addnew-customer.blade.php
=======
=======
<<<<<<< HEAD
                    <div x-data = "{inputText: ''}" class="relative z-0 w-full mb-5 group">
                        <input
                            type="text"
                            id="inputField"
                            x-model = "inputText"
                            @input = "inputText = $event.target.value.toUpperCase()"
                            wire:model.live.debounce.200ms = "firstname"
                            id="inputField" autocomplete="off"
=======
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" id="inputField" name="fname"  wire:model.live.debounce.200ms = "firstname" id="inputField" autocomplete="off"
>>>>>>> 44208d30f52b1bae7c941b3155b07deb90fa6535
                            pattern="^[A-Z][a-z]*$"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder="" required />
>>>>>>> ffa96da3e807fb3df940a8288871f420e162b924:resources/views/livewire/addnew-customer.blade.php
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1:resources/views/livewire/admin/addnew-customer.blade.php

                        <label for="firstname"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">First
                            name</label>
                            @error('firstname')
                                <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                            @enderror
                    </div>
<<<<<<< HEAD
                    <div x-data = "{inputText: ''}" class="relative z-0 w-full mb-5 group">
                        <input
                            type="text"
                            name="mname"
                            x-model = "inputText"
                            @input = "inputText = $event.target.value.toUpperCase()"
                            wire:model.live.debounce.200ms = "middlename"
                            id="inputField" autocomplete="off"
=======
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="mname" wire:model.live.debounce.200ms = "middlename" id="inputField" autocomplete="off"
>>>>>>> 44208d30f52b1bae7c941b3155b07deb90fa6535
                            pattern="^[A-Z][a-z]*$"
                            x-data = "{inputValue: ''}"
                            x-model = "inputValue"
                            x-on:input="inputValue = $event.target.value.charAt(0).toUpperCase() + $event.target.value.slice(1)"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=""
                            required />

                        <label for="floating_last_name"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Middle
                            name</label>
                            @error('middlename')
                                <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                            @enderror
                    </div>
<<<<<<< HEAD:resources/views/livewire/addnew-customer.blade.php
=======
<<<<<<< HEAD:resources/views/livewire/admin/addnew-customer.blade.php
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1:resources/views/livewire/admin/addnew-customer.blade.php
                    <div class="relative z-0 w-full mb-4 group">
                        <input type="text"
                                name="lname"
                                wire:model.live.debounce.200ms = "lastname"
                                id="inputField"
                                autocomplete="off"
                                x-data = "{inputValue: ''}"
                                x-model = "inputValue"
                                x-on:input="inputValue = $event.target.value.charAt(0).toUpperCase() + $event.target.value.slice(1)"
                                pattern="^[A-Z][a-z]*$"
<<<<<<< HEAD:resources/views/livewire/addnew-customer.blade.php
=======
=======
<<<<<<< HEAD
                    <div x-data = "{inputText: ''}" class="relative z-0 w-full mb-5 group">
                        <input
                            type="text"
                            name="lname"
                            x-model ="inputText"
                            @input = "inputText = $event.target.value.toUpperCase()"
                            wire:model.live.debounce.200ms = "lastname"
                            id="inputField"
                            autocomplete="off"
                            pattern="^[A-Z][a-z]*$"
=======
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="lname" wire:model.live.debounce.200ms = "lastname" id="inputField" autocomplete="off" pattern="^[A-Z][a-z]*$"
>>>>>>> 44208d30f52b1bae7c941b3155b07deb90fa6535
>>>>>>> ffa96da3e807fb3df940a8288871f420e162b924:resources/views/livewire/addnew-customer.blade.php
>>>>>>> 2789cab52378b3a101bef54dcf2ad1b29401a0c1:resources/views/livewire/admin/addnew-customer.blade.php
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=" " required />
                            @error('lastname')
                            <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                        @enderror
                        <label for="floating_last_name"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Last
                            name</label>
                    </div>
                    <div class="relative z-0 w-full mb-4 group">
                        <input  type="text"
                                wire:model.live.debounce.200ms = "suffix" name="suffix" id="suffix" autocomplete="off"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                placeholder=" "
                                x-data = "{inputValue: ''}"
                                x-model = "inputValue"
                                x-on:input="inputValue = $event.target.value.charAt(0).toUpperCase() + $event.target.value.slice(1)"
                                />
                            @error('suffix')
                            <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                        @enderror
                        <label for="suffix"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">Suffix
                            name</label>
                    </div>
                </div>
                <div class="relative z-0 w-full mb-5 group">
                    <input type="date" wire:model.live.debounce.200ms = "birthdate" name="birthdate" id="dateInput" autocomplete="off"
                        class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder="Select Birthday" required>
                    <label for="birthdate"
                        class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                        Birthdate</label>
                        @error('birthdate')
                            <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                        @enderror
                </div>
                <div class="relative z-0 w-full mb-5 group">
                    <input type="text" wire:model.live.debounce.200ms = "address" name="address" id="address_loc" autocomplete="off"
                        class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                        placeholder="" required />
                    <label for="address"
                        class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                        Address</label>
                        @error('address')
                            <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                        @enderror
                </div>
                <div class="relative z-0 w-full mb-5 group">
                    <label for="countries" class="block mb-2 text-sm font-medium text-gray-900">Select an
                        option</label>
                    <select id="" name = "branch" wire:model.live.debounce.200ms = "brid"
                        class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 ">
                        <option selected>Choose a Branch</option>
                        @if ($brname)
                            @foreach ($brname as $branch)
                                <option wire:click = "selectBranch({{ $branch->brid }})" wire:key = "{{ $branch->brid }}" value="{{ $branch->brid }}">{{ $branch->brname }}</option>
                            @endforeach
                        @endif

                    </select>
                </div>
                <div class="relative z-0 w-full mb-1 group">
                    <label class="block mb-2 text-sm font-medium text-gray-500" for="default_size">Attach a 2x2
                        Picture
                    </label>
                    @error('photo')
                        <span class="text-red-800 text-[12px] font-normal font-sans"> {{ $message }}</span>
                    @enderror

                    <input
                        class="block w-full mb-5 text-sm text-gray-500 border border-gray-300 rounded-lg cursor-pointer bg-gray-5"
                        id="default_size" name="photo" wire:model.live.debounce.200ms = "photo" type="file" required>

                        @if($photo)
                            <div class="flex items-left justify-left">
                                <img class="w-36" src="{{ $photo->temporaryUrl() }}">
                            </div>
                        @endif

                </div>
                <div class="flex justify-center">
                    <button type="submit"
                        class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>

