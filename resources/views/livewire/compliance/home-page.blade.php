<div>
    {{-- To attain knowledge, add things every day; To attain wisdom, subtract things every day. --}}

    <div x-data="{inputValue : '',isTyped:false  }">
        <div  class="flex items-center justify-center mb-10 border-gray-100 rounded-full">
                {{-- <div class="relative max-w-[500px] w-72 px-4">
                    <input type="text"
                            x-ref = "searchField" x-on:input:debounce.150ms="isTyped = ($event.target.value != '')"
                            x-on:keydown.window.prevent.slash = "$refs.searchField.focust()"
                            x-on:input.debounce.150ms="isTyped = ($event.target.value != '')"
                            x:on:keyup.escape= "isTyped = false; $refs.searchField.blur()"
                            x-model = "inputValue"
                            wire:model.live.debounce.150ms = "search"
                            autocomplete="off"
                            name="term"
                            class="w-full h-12 p-4 border rounded-full shadow dark:text-gray-800 dark:border-gray-700 dark:bg-gray-200" id ="search" placeholder="search">
                    <div @click = "inputValue = ''">
                            <svg x-show = "!inputValue" class="text-[#0051d4a2] h-5 w-5 absolute top-3.5 right-7 fill-current dark:text-teal-300"
                                xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
                                x="0px" y="0px" viewBox="0 0 56.966 56.966"
                                style="enable-background:new 0 0 56.966 56.966;" xml:space="preserve">
                                <path
                                    d="M55.146,51.887L41.588,37.786c3.486-4.144,5.396-9.358,5.396-14.786c0-12.682-10.318-23-23-23s-23,10.318-23,23  s10.318,23,23,23c4.761,0,9.298-1.436,13.177-4.162l13.661,14.208c0.571,0.593,1.339,0.92,2.162,0.92  c0.779,0,1.518-0.297,2.079-0.837C56.255,54.982,56.293,53.08,55.146,51.887z M23.984,6c9.374,0,17,7.626,17,17s-7.626,17-17,17  s-17-7.626-17-17S14.61,6,23.984,6z">
                                </path>
                            </svg>
                            <svg x-show = "inputValue"  class="text-[#00050ca2] h-5 w-5 absolute top-3.5 right-7 fill-current dark:text-teal-300 " aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
                                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18 17.94 6M18 18 6.06 6"/>
                            </svg>
                    </div>
                </div> --}}
            </div>
            <div>
                <ul  class="absolute z-20 w-64 text-lg text-black bg-white rounded-lg shadow-xl cursor-pointer left-2/4 top-[150px]">
                    <div class="relative">
                        {{-- @if ($isEmpty)
                            {{ $isEmpty }}
                        @else
                            @if (!empty($results))
                                @foreach($results as $result)

                                    <li
                                        wire:click = "selectCustomer({{ $result->custid }})"
                                        id ="list" class="p-3 cursor-pointer hover:text-black hover:bg-green-300"
                                        wire:key="{{ $result->custid }}"
                                        x-on:click = "inputValue = ''" >

                                        {{ $result->fname . ' ' . $result->lname }}
                                    </li>
                                @endforeach
                            @endif
                        @endif --}}
                    </div>
                </ul>
            </div>
        <div class="container bg-white shadow-xl">
            <div class="col-span-1 pt-10 pl-4">
                <h1 class="pb-4 text-2xl font-semibold leading-10 text-blue-600">
                        CUSTOMER PROFILE NAME:
                    <span class="font-normal text-green-500">
                        {{-- @if($selectcustomer)
                                {{ $selectcustomer->lname . ', ' .$selectcustomer->fname }}
                        @endif --}}
                    <span/>
                </h1>
                <h1 class="pb-4 text-2xl leading-10 text-blue-600">
                    BRANCH:
                    <span class="font-normal text-green-500">
                        {{-- @if ($selectcustomer)
                                {{ $selectcustomer->brname }}
                        @endif --}}
                    </span>
                </h1>
                <h1 class="pb-4 text-2xl leading-10 text-blue-600">
                    STATUS:
                    <span class="font-normal text-green-500">
                        {{-- @if($selectcustomer)
                            {{ $selectcustomer->status }}
                        @endif --}}
                    </span>
                </h1>
                <h1 class="pb-4 text-2xl leading-10 text-blue-600">
                    LAST UPDATE:
                    <span class="font-normal text-green-500">
                        {{-- @if($selectcustomer)
                            {{ $selectcustomer->updated_at->format('M d, Y') }}
                        @endif --}}
                    </span>
                </h1>
            </div>
            {{-- @include('roles.superAdmin.modal') --}}
            <div class="grid grid-cols-3 gap-4 mx-auto mt-8">
                <!-- First Column -->
                <div class="p-4 rounded ">
                    <h2 class="mb-4 text-xl font-bold text-center text-blue-600">SIGCARD</h2>
                    <div class="grid grid-cols-2 gap-2">
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">FRONT</h2>
                               {{-- @if($selectcustomer)
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                    onclick="openModal();currentSlide(1)" src="{{ asset('storage/'.$selectcustomer->card_front) }}"
                                    alt="Front image">
                                @elseif (empty($selectcustomer))
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                         onclick="openModal();currentSlide(1)" src="{{ asset('storage/img/uploads/deafult/SIGCARD .jpg') }}"
                                        alt="Front image">
                               @endif --}}
                        </div>
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">BACK</h2>
                                {{-- @if($selectcustomer)
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                        onclick="openModal();currentSlide(2)" src="{{ asset('storage/'.$selectcustomer->card_back) }}"
                                        alt="Back image">
                                @elseif (empty($selectcustomer))
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                        onclick="openModal();currentSlide(2)" src="{{ asset('storage/img/uploads/deafult/SIGCARD .jpg') }}"
                                        alt="Back image">
                                @endif --}}
                        </div>
                        <!-- Add more sub-columns here if needed -->
                    </div>
                </div>
                <div class="p-4 rounded">
                    <h2 class="mb-4 text-xl font-bold text-center text-blue-600">NAIS</h2>
                    <div class="grid grid-cols-2 gap-2">
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">FRONT</h2>
                                {{-- @if($selectcustomer)
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                    onclick="openModal();currentSlide(3)"
                                    src="{{ asset('storage/'.$selectcustomer->nais_front) }}" alt="front image">
                                @elseif (empty($selectcustomer))
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                        onclick="openModal();currentSlide(3)"
                                        src="{{ asset('storage/img/uploads/deafult/dataprivacy.jpg') }}" alt="fornt image">
                                @endif --}}
                        </div>
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">BACK</h2>
                            {{-- @if($selectcustomer)
                                <img class="h-auto mx-auto" src="{{ asset('storage/'.$selectcustomer->nais_back) }}"
                                    onclick="openModal();currentSlide(4)" alt="back image">
                            @elseif (empty($selectcustomer))
                                <img class="h-auto mx-auto" onclick="openModal();currentSlide(4)"
                                    src="{{ asset('storage/img/uploads/deafult/dataprivacy.jpg') }}" alt="back image">
                            @endif --}}
                        </div>
                        <!-- Add more sub-columns here if needed -->
                    </div>
                </div>
                <div class="p-4 rounded">
                    <h2 class="mb-4 text-xl font-bold text-center text-blue-600">DATA PRIVACY</h2>
                    <div class="grid grid-cols-2 gap-2">
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">FRONT</h2>
                                {{-- @if($selectcustomer)
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                        src="{{ asset('storage/'.$selectcustomer->dpr_front) }}"
                                        onclick="openModal();currentSlide(5)" alt="Front image">
                                @elseif (empty($selectcustomer))
                                    <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                        src="{{ asset('storage/img/uploads/deafult/dataprivacy.jpg') }}"
                                        onclick="openModal();currentSlide(5)" alt="Front image">
                                @endif --}}
                        </div>
                        <div class="p-2 rounded">
                            <h2 class="mb-4 text-xl font-bold text-center text-green-400">BACK</h2>
                            {{-- @if($selectcustomer)
                                <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                    onclick="openModal();currentSlide(6)"
                                    src="{{ asset('storage/'.$selectcustomer->dpr_back) }}" alt="back image">
                            @elseif (empty($selectcustomer))
                                <img class="h-auto mx-auto border border-gray-300 shadow-lg"
                                    src="{{ asset('storage/img/uploads/deafult/dataprivacy.jpg') }}"
                                    onclick="openModal();currentSlide(5)" alt="Back image">
                            @endif --}}
                        </div>
                                 <!-- Add more sub-columns here if needed -->
                    </div>
                </div>
            </div>
        </div>
    </div>


</div>
