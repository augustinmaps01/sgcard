<nav class="fixed top-0 z-50 w-full bg-[#0052D4] border-b border-gray-200">
    <div class="px-3 py-3 lg:px-5 lg:pl-3">
        <div class="flex items-center justify-between">
            <div class="flex items-center justify-start rtl:justify-end">
                <button data-drawer-target="logo-sidebar" data-drawer-toggle="logo-sidebar" aria-controls="logo-sidebar"
                    type="button"
                    class="inline-flex items-center p-2 text-sm text-gray-500 rounded-lg sm:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600">
                    <svg class="w-6 h-6" aria-hidden="true" fill="currentColor" viewBox="0 0 20 20">
                        <path clip-rule="evenodd" fill-rule="evenodd"
                            d="M2 4.75A.75.75 0 012.75 4h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 4.75zm0 10.5a.75.75 0 01.75-.75h7.5a.75.75 0 010 1.5h-7.5a.75.75 0 01-.75-.75zM2 10a.75.75 0 01.75-.75h14.5a.75.75 0 010 1.5H2.75A.75.75 0 012 10z">
                        </path>
                    </svg>
                </button>
                <a href="{{ route('dashboard') }}" class="flex ms-2 md:me-24">
                    <img src="{{ asset('img/logos.png') }}" class="w-12 h-auto me-3" alt="FlowBite Logo" />
                    <span
                        class="self-center font-serif text-xl font-semibold text-white sm:text-2xl whitespace-nowrap">SIGCARD
                        SYSTEM</span>
                </a>
            </div>
            <!-- search box-->
            <div class="flex items-center">
                <div class="flex items-center me-8">
                    <div>
                        <button type="button" class="flex text-sm bg-gray-800 rounded-full" aria-expanded="false"
                            data-dropdown-toggle="dropdown-user">
                            <img class="h-auto rounded-full w-9" src="{{ asset('img/logos.png') }}" alt="user photo">
                        </button>
                    </div>
                    <div class="z-50 hidden my-4 text-base list-none bg-white divide-y divide-gray-100 rounded shadow dark:bg-gray-700 dark:divide-gray-600"
                        id="dropdown-user">

                        <div class="px-4 py-3">
                            <span class="block font-serif text-sm text-gray-900 dark:text-white">Charles Matthew G
                                Coming </span>
                            <span class="block font-serif text-sm text-gray-500 truncate dark:text-gray-400">MIS
                                 Assistant</span>
                        </div>
                        <ul class="py-1" role="none">
                            <li>
                                <a href="{{ route('userProfile') }}"
                                    class="block px-4 py-2 font-serif text-sm text-gray-700 hover:bg-blue-700 hover:text-white"
                                    role="menuitem">Profile
                                </a>
                            </li>
                            <li>
                                <a href="#"
                                    class="block px-4 py-2 font-serif text-sm text-gray-700 hover:bg-blue-700 hover:text-white"
                                    role="menuitem">Sign out
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="mt-1 ms-2">
                        <a aria-expanded="true" href="#" data-dropdown-toggle="dropdown-user"
                            class="font-serif text-lg font-semibold leading-none text-white uppercase">Charles
                            Matthew G.Coming
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</nav>
