<nav class="bg-gray-800 p-4">
    <div class="container mx-auto flex items-center justify-between">
        <!-- Left Side (Brand/Logo and Navigation) -->
        <div class="flex items-center space-x-4">
            <!-- Logo and Brand Name -->
            <img src="logo.png" alt="Logo" class="h-8 w-8">
            <span class="text-white text-lg font-semibold">Your Brand</span>

            <!-- Navigation Items -->
            <ul class="hidden md:flex space-x-4">
                <li><a href="#" class="text-white">Home</a></li>
                <li><a href="#" class="text-white">About</a></li>
                <li><a href="#" class="text-white">Services</a></li>
                <li><a href="#" class="text-white">Products</a></li>
                <li class="relative group">
                    <!-- Entry Dropdown -->
                    <a href="#" class="text-white group-hover:text-gray-300">Entry</a>
                    <ul class="absolute hidden bg-white text-gray-800 mt-2 space-y-2">
                        <li><a href="#" class="block px-4 py-2">Profile</a></li>
                        <li><a href="#" class="block px-4 py-2">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>

        <!-- Right Side (Search, Notification, User) -->
        <div class="flex items-center space-x-4">
            <!-- Search Input -->
            <input type="text" placeholder="Search"
                class="p-2 rounded-md focus:outline-none focus:ring focus:border-blue-300">

            <!-- Notification Icon -->
            <div>
                <svg class="text-white h-6 w-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                        d="M12 19v3m0 0a6 6 0 01-6-6h2a4 4 0 018 0h2a6 6 0 01-6 6z"></path>
                </svg>
            </div>

            <!-- User Image and Dropdown -->
            <div class="relative group">
                <button class="focus:outline-none">
                    <img src="user.jpg" alt="User" class="h-8 w-8 rounded-full">
                </button>
                <!-- User Dropdown Content -->
                <ul class="absolute hidden bg-white text-gray-800 mt-2 space-y-2">
                    <li><a href="#" class="block px-4 py-2">Profile</a></li>
                    <li><a href="#" class="block px-4 py-2">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
