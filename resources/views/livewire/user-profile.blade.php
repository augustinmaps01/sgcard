<div>
      <div class="py-4 sm:ml-64">
        {{-- Success is as dangerous as failure. --}}
        <form>
            <div class="container p-6 mx-auto mb-16 bg-white">
                <h1 class="py-2 text-3xl text-gray-700 border-gray-400 shadow-md border-1">USER PROFILE</h1>
                    <!-- Two-Column, Two-Row Grid -->
                <div class="container grid grid-cols-1 gap-2 mx-auto mt-8 md:grid-cols-2">
                    <!-- First Column sigcard front -->
                    <div class="relative px-4 mx-auto rounded">
                        <img src="{{ asset('img/zoro-sword-fight-focus-water-desktop-wallpaper-cover.jpg') }}" class="w-full mx-auto border-2 border-gray-400 shadow-md h-3/6" />
                        <p class="text-3xl tracking-tighter text-gray-700 r">Ryam Doe</p>
                        <p class="text-xl text-gray-700">Admin</p>
                    </div>
                    <div class="p-4 rounded">
                        <div class="grid grid-cols-1 gap-4 md:grid-cols-2">
                            <h1 class="mb-4 text-3xl font-semibold">My Profile</h1>
                            <a href="#" class="flex items-center px-2 py-1 space-x-2 bg-opacity-75 border-gray-500 rounded border-1 shadow:md">
                                <!-- SVG Icon -->
                                <svg class="w-6 h-8 text-gray-800 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m14.304 4.844 2.852 2.852M7 7H4a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h11a1 1 0 0 0 1-1v-4.5m2.409-9.91a2.017 2.017 0 0 1 0 2.853l-6.844 6.844L8 14l.713-3.565 6.844-6.844a2.015 2.015 0 0 1 2.852 0Z"/>
                                  </svg>
                                  <!-- Text -->
                                  <span class="text-lg">Edit</span>
                              </a>
                        </div>


                        <div class="grid grid-cols-2 gap-4">
                            <div class="mt-4">
                                <label for="firstname" class="block text-gray-700">First name</label>
                                <input type="text" id="firstname" value="Ryan" wire:model="firstname" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="lastname" class="block text-gray-700">Middle name</label>
                                <input type="text" id="middlename" value="Smith" wire:model="middlename" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="lastname" class="block text-gray-700">Last name</label>
                                <input type="text" id="middlename" value="Smith" wire:model="lastname" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="suffix" class="block text-gray-700">Suffix</label>
                                <input type="text" id="suffix" value="Smith" wire:model="suffix" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="address" class="block text-gray-700">Address</label>
                                <input type="text" id="mobile" value="Smith" wire:model="address" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="phone" class="block text-gray-700">Mobile Phone</label>
                                <input type="tel" id="phone" value="+1234567890" wire:model="phone" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="email" class="block text-gray-700">Email</label>
                                <input type="email" id="email" value="ryan@example.com" wire:model="email" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="username" class="block text-gray-700">Username</label>
                                <input type="text" id="email" value="ryan@example.com" wire:model="username" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="password" class="block text-gray-700">Password</label>
                                <input type="password" id="password" wire:model="password" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                            <div class="mt-4">
                                <label for="password" class="block text-gray-700">Photo</label>
                                <input type="file" wire:model="photo" class="block w-full mt-1 border-gray-300 rounded-md shadow-sm">
                            </div>
                        </div>
                    </div>
                    <div class="p-4 rounded">
                    </div>

                </div>
                <div class="container text-center">
                    <button type="submit"
                        class="text-blue-700 hover:text-white border border-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-lg px-8 py-2.5 text-center me-2 mb-4 dark:border-blue-500 dark:text-blue-500 dark:hover:text-white dark:hover:bg-blue-500 dark:focus:ring-blue-800">Upload</button>
                </div>
            </div>
        </form>
    </div>


</div>
