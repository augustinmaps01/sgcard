import './bootstrap';
import '../css/app.css';
import 'flowbite';
import Alpine from 'alpinejs';
import mask from '@alpinejs/mask';
import intersect from '@alpinejs/intersect'

Alpine.plugin(intersect)


Alpine.plugin(mask)


window.Alpine = Alpine;


Alpine.start();
import.meta.glob([
    '../images/**'
  ]);



//   document.addEventListener('DOMContentLoaded', () => {
//     const $targetEl = document.getElementById('targetElement');
//     const $triggerEl = document.getElementById('triggerElement');
//     const $countdown = document.getElementById('countdown');

//     // options object
//     const options = {
//         transition: 'fade',
//         duration: 3000,
//         timing: 'ease-in',
//         onHide: (context, targetEl) => {
//             console.log('element has been dismissed');
//             console.log(targetEl);
//         }
//     };

//     // instance options object
//     const instanceOptions = {
//         id: 'targetElement',
//         override: true
//     };

//     const dismiss = new Dismiss($targetEl, $triggerEl, options, instanceOptions);

//     // Countdown function
//     const startCountdown = () => {
//         let timeLeft = 5; // seconds
//         $countdown.textContent = timeLeft;

//         const countdownInterval = setInterval(() => {
//             timeLeft -= 1;
//             $countdown.textContent = timeLeft;

//             if (timeLeft <= 0) {
//                 clearInterval(countdownInterval);
//                 dismiss.hide();
//             }
//         }, 1000);
//     };

//     // Event listener for trigger button
//     $triggerEl.addEventListener('click', startCountdown);
// });







