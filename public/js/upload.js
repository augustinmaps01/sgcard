// JavaScript for the modal image carousel
const modal = document.getElementById('modal');
const modalImage = document.getElementById('modalImage');
const prevButton = document.getElementById('prevButton');
const nextButton = document.getElementById('nextButton');

const images = ['image1.jpg', 'image2.jpg', 'image3.jpg'];
let currentImageIndex = 0;

// Function to show the modal with the current image
function showModal() {
    modal.classList.remove('hidden');
    modalImage.src = images[currentImageIndex];
}

// Event listener for the previous button
prevButton.addEventListener('click', () => {
    currentImageIndex = (currentImageIndex - 1 + images.length) % images.length;
    showModal();
});

// Event listener for the next button
nextButton.addEventListener('click', () => {
    currentImageIndex = (currentImageIndex + 1) % images.length;
    showModal();
});
