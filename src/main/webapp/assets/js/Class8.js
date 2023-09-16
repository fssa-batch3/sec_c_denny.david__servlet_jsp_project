/**
 * 
 */
let popup = document.querySelector(".popup");
popup.style.display = "none";
var close = document.getElementById("close");
close.addEventListener("click", function(){
    document.querySelector(".popup").style.display = "none";
});

let assign_Student = document.getElementById("assign_student");
assign_Student.addEventListener("click",function(){
	popup.style.display = "block";
})