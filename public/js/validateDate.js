$(document).ready(function(){
    $('#dateForm').submit(function(event){
        // Prevent the default form submission
        event.preventDefault();

        // Get the input date value
        var inputDate = new Date($('#dateInput').val());

        // Get the current date
        var currentDate = new Date();

        // Get the date 6 years ago


        // Compare input date with current date and 6 years ago
        if (inputDate > currentDate) {
            0

             alert('Please select a date not in the future.');
            // Clear the input field
            $('#dateInput').val('');
        } else if (inputDate.toDateString() === currentDate.toDateString()) {
            alert('Please select a date not the current date.');
            // Clear the input field
            $('#dateInput').val('');
        }  else {
            // Submit the form if validation passes
            this.submit();
        }
    });
});
