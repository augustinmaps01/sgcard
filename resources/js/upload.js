const dragArea = document.querySelector('.drag-area');
const dragText = document.querySelector('.header');
let button  = document.querySelector('.button');
let input = document.querySelector('input');
let file;

button.onClick = () => {
    input.click();
}

input.addEventListener('change', function() {
    file = this.files[0];
    dragArea.classList.add('active');
    displayFile();

})
// when file is inside the drag area
dragArea.addEventListener('dragover', (event) => {
    event.preventDefault();
    dragText.textContent = 'Release to upload';
    dragArea.classList.add('active');
});

// when files leaves the drag area
dragArea.addEventListener('dragleave', () => {
    dragTex.textContent = 'Drag & Drop';
});

dragArea.addEventListener('drop', (event) => {
    // console.log('the file is dropped is drag area');
    event.preventDefault();
    file = event.dataTransfer.files[0];
});
    function displayFile() {
        let fileType = file.type;
        let validExtensions = ['image/jpeg', 'image/jpg', 'image/png'];

        if(validExtensions.includes(fileType)) {
            let fileReader = new FileReader();

            fileReader.onload = () => {
                let fileUrl = fileReader.result();
                let imgTag = '<img src = "${fileUrl" alt = "">'
                dragArea.innerHTML = imgTag;
            };
            fileReader.readAsDataURL(file);
        }
        else {
            alert('this file is not supported');
            dragArea.classList.remove('active');
        }

    }

    // console.log('The file is dropped in drag area');



