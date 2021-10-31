var form = document.querySelector(".login form");
var continueBtn = form.querySelector(".button input");
var errorText = form.querySelector(".error-txt");

continueBtn.addEventListener("click",function(){
  event.preventDefault();  
  var xhr=new XMLHttpRequest();
  xhr.open("POST","php/login.php",true);
  xhr.onload = () => {
     if(xhr.readyState === XMLHttpRequest.DONE) {
         if(xhr.status === 200) {
             var data = xhr.response;
             console.log(data);
             if(data == "success") {
                location.href="User.php";
             } else {
                errorText.textContent = data; 
                errorText.style.display = "block";
            }
         }
     }
  }
  var formData = new FormData(form);

  xhr.send(formData);
    
});