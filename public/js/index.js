import { Dismiss } from 'flowbite';


// Open the Modal
function openModal() {
    document.getElementById("myModal").style.display = "block";
  }

  // Close the Modal
  function closeModal() {
    document.getElementById("myModal").style.display = "none";
  }

  var slideIndex = 1;
  showSlides(slideIndex);

  // Next/previous controls
  function plusSlides(n) {
    showSlides(slideIndex += n);
  }

  // Thumbnail image controls
  function currentSlide(n) {
    showSlides(slideIndex = n);
  }

  function showSlides(n) {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");

    // Limit slideIndex to be between 1 and 6
    if (n > 6) {
        slideIndex = 1; // Reset to the first slide
    } else if (n < 1) {
        slideIndex = 6; // Set to the last slide
    } else {
        slideIndex = n; // Keep the provided slide index within the range
    }

    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }

    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
    captionText.innerHTML = dots[slideIndex - 1].alt;
}


document.addEventListener('DOMContentLoaded', () => {
    const $targetEl = document.getElementById('targetElement');
    const $triggerEl = document.getElementById('triggerElement');
    const $countdown = document.getElementById('countdown');

    // options object
    const options = {
        transition: 'fade',
        duration: 3000,
        timing: 'ease-in',
        onHide: (context, targetEl) => {
            console.log('element has been dismissed');
            console.log(targetEl);
        }
    };

    // instance options object
    const instanceOptions = {
        id: 'targetElement',
        override: true
    };

    const dismiss = new Dismiss($targetEl, $triggerEl, options, instanceOptions);

    // Countdown function
    const startCountdown = () => {
        let timeLeft = 5; // seconds
        $countdown.textContent = timeLeft;

        const countdownInterval = setInterval(() => {
            timeLeft -= 1;
            $countdown.textContent = timeLeft;

            if (timeLeft <= 0) {
                clearInterval(countdownInterval);
                dismiss.hide();
            }
        }, 1000);
    };

    // Event listener for trigger button
    $triggerEl.addEventListener('click', startCountdown);
});
