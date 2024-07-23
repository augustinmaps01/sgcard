<div id="myModal" class="modal">
    <span class="close cursor" onclick="closeModal()">&times;</span>
    <div class="modal-content">

        <div class="flex items-center justify-center mySlides">
            <div class="numbertext">1 / 6</div>

                <div class="flex items-center justify-center pt-12">
                    @if($selectcustomer)
                        <img class="max-auto" src="{{ asset($selectcustomer->card_back) }}" alt="Back image">
                    @elseif (empty($selectcustomer))
                        <img class="max-auto" src="{{ asset('img/uploads/deafult/SIGCARD .jpg') }}" alt="Back image">
                    @endif
                </div>

        </div>
        <div class="mySlides">
            <div class="numbertext">2 / 6</div>
            <div class="flex items-center justify-center">
                @if ($selectcustomer)
                    <img class="w-auto mx-auto" src="{{ asset($selectcustomer->card_back) }}" alt="Back image"
                        style="width: 50%">
                @elseif (empty($selectcustomer))
                    <img class="w-auto mx-auto" src="{{ asset('img/uploads/deafult/SIGCARD .jpg') }}" alt="Back image"
                        style="width: 50%">
                @endif
            </div>
        </div>
        <div class="mySlides">
            <div class="numbertext">3 / 6</div>
            <div class="flex items-center justify-center">
                @if ($selectcustomer)
                    <img cl ass="mx-auto w-auto" src="{{ asset($selectcustomer->nais_front) }}"
                    alt="fornt image" style="width: 50%">
                @elseif (empty($selectcustomer))
                    <img class="w-auto mx-auto" src="{{ asset('img/uploads/deafult/dataprivacy.jpg') }}"
                    alt="fornt image" style="width: 50%">
                @endif
            </div>
        </div>
        <div class="mySlides">
            <div class="numbertext">4 / 6</div>
            <div class="flex items-center justify-center">

                @if ($selectcustomer)
                    <img class="w-auto mx-auto" src="{{ asset($selectcustomer->nais_back) }}"alt="back image"
                        style="width: 50%">
                @elseif (empty($selectcustomer))
                    <img class="w-auto mx-auto" src="{{ asset('img/uploads/deafult/dataprivacy.jpg') }}"
                    alt="back image" style="width: 70%">
                @endif

            </div>
        </div>
        <div class="mySlides">
            <div class="numbertext">5 / 6</div>
            <div class="flex items-center justify-center">
                @if($selectcustomer)
                    <img class="w-auto mx-auto"
                    src="{{ asset($selectcustomer->dpr_front) }}"alt="Front image">
                @elseif (empty($selectcustomer))
                        <img class="w-auto mx-auto"
                        src="{{ asset('img/uploads/deafult/dataprivacy.jpg') }}"alt="Front image">
                @endif
            </div>
        </div>
        <div class="mySlides">
            <div class="numbertext">6 / 6</div>
            <div class="flex items-center justify-center">
                @if ($selectcustomer)
                    <img class="w-auto mx-auto" src="{{ asset($selectcustomer->dpr_back) }}"
                    alt="back image">
                @elseif (empty($selectcustomer))
                    <img class="w-auto mx-auto" src="{{ asset('img/uploads/deafult/dataprivacy.jpg') }}"
                    alt="back image">
                @endif
            </div>
        </div>
        <!-- Next/previous controls -->
        <a class="prev" onclick="plusSlides(-1)">&#10094; </a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        <!-- Caption text -->
    </div>
</div>
