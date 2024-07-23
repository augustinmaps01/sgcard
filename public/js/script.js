
const passwordInput = document.getElementById('password');
const showPasswordBtn = document.getElementById('show-password-btn');

showPasswordBtn.addEventListener('click', function() {
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        showPasswordBtn.innerHTML = '<i class="fa fa-eye-slash" aria-hidden="true"></i> ';
    } else {
        passwordInput.type = 'password';
        showPasswordBtn.innerHTML = '<i class="fa fa-eye" aria-hidden="true"></i>';
    }
});
// Prevent User from going back
function preventBack() { window.history.forward(); }
setTimeout("preventBack()", 0);
window.onunload = function () { null };


// super admin dahboard
    //GHI Progress Bar
     // Get the progress value from MySQL database using PHP
     $.get("get_progress.php", function(data) {
        var progress = parseInt(data);
        // Set the progress bar value based on the retrieved progress value
        var progressBar = document.getElementById("progress-bar");
        progressBar.style.width = progress / 10 + "%";
        progressBar.innerHTML = progress + "/1000";
        // Set the progress bar color based on the retrieved progress value
        if (progress < 100) {
          progressBar.style.backgroundColor = "#FF4F4F";
        } else if (progress < 400) {
          progressBar.style.backgroundColor = "#FF7027";
        } else if (progress < 601) {
          progressBar.style.backgroundColor = "#FFD51E";
        } else if (progress < 900) {
          progressBar.style.backgroundColor = " #A4DD8C";
        } else {
          progressBar.style.backgroundColor = "#00BF63";
        }
      });
      //Notification open
const bellIcon = document.querySelector("#notification-bell");
const notificationPopup = document.querySelector(".notification-popup");
const closeBtn = document.querySelector(".close-btn");

bellIcon.addEventListener("click", function(event) {
  event.preventDefault();
  notificationPopup.style.display = "block";
});
  //Notification Close
closeBtn.addEventListener("click", function() {
  notificationPopup.style.display = "none";
});
//Calendar
    flatpickr("#datepicker", {
  dateFormat: "F j", // "F" displays the full month name, "j" displays the day of the month without leading zeros
  onClose: function(selectedDates, dateStr, instance) {
    document.getElementById("calendar-date").innerHTML = dateStr;
  }
});
//Menu
  var menuBtn = document.getElementById("menuBtn")
  var sideNav = document.getElementById("sideNav")
  var menu = document.getElementById("menu")

  sideNav.style.left = "-250px";

  menuBtn.onclick = function(){
      if(sideNav.style.left == "-250px"){
          sideNav.style.left = "0";
          menu.src = "photos/close.png";
      }
      else{
          sideNav.style.left = "-250px";
          menu.src = "photos/menu.png";
      }
  }
//Top Navigation Bar
let subMenu = document.getElementById("subMenu");

function toggleMenu(){
    subMenu.classList.toggle("open-menu");
}
$(document).ready(function() {
  $('.fa-user-circle-o').click(function() {
    $('.sub-menu').toggle();
  });
});

//adjust rectangle
function handleNavHover(isHovered) {
        const rectangles = document.querySelectorAll('.rectangle');
        if (isHovered) {
            rectangles.forEach(rectangle => {
                rectangle.style.width = '500px';
                rectangle.style.height = '340px';
            });
        } else {
            rectangles.forEach(rectangle => {
                rectangle.style.width = '540px';
                rectangle.style.height = '380px';
            });
        }
    }

//adjust rec
function handleNavHover(isHovered) {
        const rectangles = document.querySelectorAll('.rec');
        if (isHovered) {
            rectangles.forEach(rectangle => {
                rectangle.style.width = '450px';
                rectangle.style.height = '290px';
            });
        } else {
            rectangles.forEach(rectangle => {
                rectangle.style.width = '500px';
                rectangle.style.height = '340px';
            });
        }
    }



    const uploadInput = document.getElementById('upload');
    const filenameLabel = document.getElementById('filename');
    const imagePreview = document.getElementById('image-preview');

    // Check if the event listener has been added before
    let isEventListenerAdded = false;

    uploadInput.addEventListener('change', (event) => {
      const file = event.target.files[0];

      if (file) {
        filenameLabel.textContent = file.name;

        const reader = new FileReader();
        reader.onload = (e) => {
          imagePreview.innerHTML =
            `<img src="${e.target.result}" class="max-h-48 rounded-lg mx-auto" alt="Image preview" />`;
          imagePreview.classList.remove('border-dashed', 'border-2', 'border-gray-400');

          // Add event listener for image preview only once
          if (!isEventListenerAdded) {
            imagePreview.addEventListener('click', () => {
              uploadInput.click();
            });

            isEventListenerAdded = true;
          }
        };
        reader.readAsDataURL(file);
      } else {
        filenameLabel.textContent = '';
        imagePreview.innerHTML =
          `<div class="bg-gray-200 h-48 rounded-lg flex items-center justify-center text-gray-500">No image preview</div>`;
        imagePreview.classList.add('border-dashed', 'border-2', 'border-gray-400');

        // Remove the event listener when there's no image
        imagePreview.removeEventListener('click', () => {
          uploadInput.click();
        });

        isEventListenerAdded = false;
      }
    });

    uploadInput.addEventListener('click', (event) => {
      event.stopPropagation();
    });
