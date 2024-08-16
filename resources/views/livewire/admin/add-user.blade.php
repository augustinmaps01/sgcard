<div>
    {{-- Close your eyes. Count to one. That is how long forever feels. --}}
    <div class="py-4 mb-24 sm:ml-64">
        <div class="container p-6 bg-white">
            <div class="flex items-center justify-center w-full px-5 mx-auto mb-10">
                <form wire:submit.prevent = "store" enctype="multipart/form-data">
                    <h1 class="text-3xl font-bold text-center text-black">ADD USER </h1>
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
                    <div class="grid pt-8 md:grid-cols-2 md:gap-6">
                        <div class="relative z-0 w-full mb-4 group">
                            <input type="text"
                            id="inputField"
                            wire:model.blur.debounce.200ms = "firstname"
                            autocomplete="off"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder="" required
                            />
                            <label for="firstname"
                                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                First name
                            </label>
                            @error('firstname')
                                <span class="text-red-800 text-[12px] font-normal font-sans">{{ $message }}</span>
                            @enderror
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <input type="text"
                                id="inputField"
                                wire:model.live.debounce.200ms = "middlename"
                                autocomplete="off"
                                pattern="^[A-Z][a-z]*$"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                placeholder=""
                            />
                            <label for="middlename"
                                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                Middle name
                            </label>
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <input type="text"
                                    id="inputField"
                                    wire:model.blur.debounce.200ms = "lastname"
                                    autocomplete="off"
                                    pattern="^[A-Z][a-z]*$"
                                    class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                    placeholder=""
                                    required />
                            <label for="lastname"
                                    class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                    Last name
                            </label>
                            @error('lastname')
                                <span class="text-red-800 text-[12px] font-normal font-sans">{{ $message }}</span>

                            @enderror
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <input type="text"
                                    id="inputField"
                                    wire:model.live.debounce.200ms = "suffix"
                                    autocomplete="off"
                                    pattern="^[A-Z][a-z]*$"
                                    class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                    placeholder=""
                                    />
                            <label for="suffix"
                                    class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                    Suffix
                            </label>
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <input  type="date"
                                    wire:model.live.debounce.200ms = "birthdate"
                                    name="birthdate" id="dateInput"
                                    autocomplete="off"
                                    class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                    placeholder="Select Birthday" required />
                            <label for="birthdate"
                                   class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                Birthdate
                            </label>
                            @error('birthdate')
                                <span class="text-red-800 text-[12px] font-normal font-sans">{{ $message }}</span>

                            @enderror
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <select id="" wire:model.live.debounce.200ms = "gender"
                                class="block py-2.5 px-2 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer">
                                <option selected>Select Gender</option>
                                <option value="Male">Male</option>
                                <option value="Femail">Female</option>
                            </select>
                        </div>
                        <div class="relative z-0 w-full mb-4 group">
                            <select id="" name = "branch" wire:model.live.debounce.200ms = "civilstat"
                                class="block py-2.5 px-2 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer">
                                <option selected>Select Civil Status</option>
                                <option value="Single">Single</option>
                                <option value="Married">Married</option>
                                <option value="Separated">Separated</option>
                                <option value="Divorced">Divorced</option>
                                <option value="Widow">Widow</option>
                                <option value="Widower">Widower</option>
                            </select>
                        </div>
                        <div class="relative z-0 w-full mb-5 group">
                            <input type="tel"
                                    name="floating_phone"
                                    id="floating_phone"
                                    wire:model.blur.debounce.200ms = "phone"
                                    autocomplete="off"
                                    class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                    placeholder=" "
                                    required />
                            <label for="floating_phone"
                                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                                Enter Mobile No.
                            </label>
                            @error('phone')
                            <span class="text-red-800 text-[12px] font-normal font-sans">{{ $message }}</span>

                        @enderror
                        </div>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text"
                                wire:model.live.debounce.200ms = "address" name="address" id="address_loc" autocomplete="off"
                                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                                placeholder="" required />
                        <label for="address"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Address
                        </label>
                        @error('address')
                            <span class="text-red-800 text-[12px] font-normal font-sans"{}></span>
                        @enderror
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <div class="absolute inset-y-0 right-0 flex items-center pl-3 pointer-events-none">
                            <!-- SVG Icon -->
                            <svg class="w-5 h-5 text-gray-400 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-width="2" d="m3.5 5.5 7.893 6.036a1 1 0 0 0 1.214 0L20.5 5.5M4 19h16a1 1 0 0 0 1-1V6a1 1 0 0 0-1-1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1Z"/>
                              </svg>
                        </div>
                        <input type="email"
                               aria-describedby="helper-text-explanation"
                               wire:model.live.debounce.200ms="email" name="address" id="address_loc" autocomplete="off"
                               class="block py-2.5 pl-10 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                               placeholder="" required />
                        <label for="email"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 rtl:peer-focus:left-auto peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Email</label>
                    </div>
                    <div class="relative z-0 w-full mb-5 group">
                        <input type="text" name="username"
                            wire:model.live.debounce.200ms = "username" id="inputField" autocomplete="off"
                            class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=""
                            required />

                        <label for="floating_last_name"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Username
                        </label>
                    </div>
                    <div x-data="{ show: false }" class="relative z-0 w-full mb-5 group">
                        <div @click="show = !show" class="absolute inset-y-0 right-0 flex items-center pr-3 cursor-pointer">
                            <!-- SVG Icon -->
                            <svg x-show="!show" class="w-6 h-6 text-gray-400 dark:text-white" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-width="2" d="M21 12c0 1.2-4.03 6-9 6s-9-4.8-9-6c0-1.2 4.03-6 9-6s9 4.8 9 6Z"/>
                                <path stroke="currentColor" stroke-width="2" d="M15 12a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                            </svg>
                            <svg x-show="show" class="w-6 h-6 text-gray-400 dark:text-white" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.933 13.909A4.357 4.357 0 0 1 3 12c0-1 4-6 9-6m7.6 3.8A5.068 5.068 0 0 1 21 12c0 1-3 6-9 6-.314 0-.62-.014-.918-.04M5 19 19 5m-4 7a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z"/>
                            </svg>
                        </div>
                        <input :type="show ? 'text' : 'password'" name="password"
                            id="inputField" autocomplete="off"
                            class="block py-2.5 px-0 w-full text-sm text-gray-800 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                            placeholder=""
                            required />
                        <label for="password"
                            class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:start-0 rtl:peer-focus:translate-x-1/4 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6">
                            Password
                        </label>
                    </div>

                    <div class="relative z-0 w-full mb-5 group">
                        <select id="" name = "userType" wire:model.live.debounce.200ms = "userType"
                        class="block py-2.5 px-2 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-black dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer">
                        <option selected>Select User Type</option>
                        @foreach ($userRole as $role)
                            <option  value="{{ $role->id }}">{{ $role->user_type }}</option>
                        @endforeach
                    </select>
                    </div>
                    <div x-data="{ photoPreview: @entangle('photo').defer }" class="relative z-0 w-full mb-5 group">
                        <!-- Image Preview -->
                        <template x-if="photoPreview">
                            <img :src="photoPreview ? URL.createObjectURL(photoPreview) : ''" alt="image" class="mx-auto cursor-pointer h-44 w-44" @click="$refs.fileInput.click()">
                        </template>


                        <!-- Upload Interface -->
                        <template x-if="!photoPreview">
                            <label for="dropzone-file" class="flex flex-col items-center justify-center w-full border-2 border-gray-300 border-dashed rounded-lg cursor-pointer h-58 bg-gray-50 dark:hover:bg-gray-800 dark:bg-gray-700 hover:bg-gray-100">
                                <div class="flex flex-col items-center justify-center pt-5 pb-6">
                                    <svg class="w-8 h-8 mb-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 16">
                                        <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M13 13h3a3 3 0 0 0 0-6h-.025A5.56 5.56 0 0 0 16 6.5 5.5 5.5 0 0 0 5.207 5.021C5.137 5.017 5.071 5 5 5a4 4 0 0 0 0 8h2.167M10 15V6m0 0L8 8m2-2 2 2"/>
                                    </svg>
                                    <p class="mb-2 text-sm text-gray-500 dark:text-gray-400"><span class="font-semibold">Click to upload</span> or drag and drop</p>
                                    <p class="text-xs text-gray-500 dark:text-gray-400">SVG, PNG, JPG or GIF (MAX. 800x400px)</p>
                                </div>
                                <input id="dropzone-file" x-ref="fileInput" wire:model="photo" type="file" class="hidden" x-on:change="photoPreview = $event.target.files[0]" required />

                            </label>
                        </template>
                    </div>


                    <div class="container text-center">
                        <button type="submit"
                            class="text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-lg px-8 py-2.5 text-center me-2 mb-4 dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">Submit</button>
                    </div>
                </form>
            </div>

        </div>
    </div>

</div>
