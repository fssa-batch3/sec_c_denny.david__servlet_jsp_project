/**
 * 
 */
// Get the modal element
var modal = document.getElementById("addstupopup");
modal.style.display = "none";


// Get the button that opens the modal
var openModalButton = document.getElementById("openModalButton");

// Get the <span> element that closes the modal
var closeSpan = document.getElementsByClassName("close")[0];

// Open the modal when the button is clicked
openModalButton.onclick = function() {
    modal.style.display = "block";
}

// Close the modal when the <span> (x) is clicked
closeSpan.onclick = function() {
    modal.style.display = "none";
}

// Close the modal when the user clicks outside of it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
