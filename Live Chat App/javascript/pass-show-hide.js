var pswrdField = document.querySelector(".form input[type='password']");
var toggleBtn = document.querySelector(".form .field i");
toggleBtn.addEventListener("click",function(){
   
    if(pswrdField.type == "password") { 
       pswrdField.type = "text";
       toggleBtn.classList.add('active');
    }
    else {
       pswrdField.type = "password";
       toggleBtn.classList.remove('active');
    }
       
});
