/**
 * 
 */
let editButton = document.querySelectorAll(".editButton");

let edit = document.getElementById("editstupopup");
 edit.style.display = "none";
 editButton.forEach(e=>{
	 e.onclick =function(){
	edit.style.display = "block";
	
}
 })
