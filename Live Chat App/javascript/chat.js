var form = document.querySelector(".typing-area");
var inputField = form.querySelector(".input-field");
var sendBtn = form.querySelector("button");
var chatBox = document.querySelector(".chat-box");

form.onsubmit = (e) => {
    e.preventDefault();
}

sendBtn.addEventListener("click",function(){
    var xhr=new XMLHttpRequest();
    xhr.open("POST","php/insert-chat.php",true);
    xhr.onload = () => {
       if(xhr.readyState === XMLHttpRequest.DONE) {
           if(xhr.status === 200) {
              inputField.value = " ";
              scrollToBottom(); 
           }
       }
    }
    var formData = new FormData(form);
  
    xhr.send(formData);
      
});

chatBox.onmouseenter = () => {
    chatBox.classList.add("active");
}
chatBox.onmouseleave = () => {
    chatBox.classList.remove("active");
}

setInterval(()=> {
    var xhr=new XMLHttpRequest();
    xhr.open("POST","php/get-chat.php",true);
    xhr.onload = () => {
       if(xhr.readyState === XMLHttpRequest.DONE) {
           if(xhr.status === 200) {
               var data = xhr.response;
               chatBox.innerHTML = data;
               if(!chatBox.classList.contains("active")) {
                    scrollToBottom(); 
               }
               
            }
        }
    }
    var formData = new FormData(form);
    xhr.send(formData);
},500);

function scrollToBottom() {
     chatBox.scrollTop = chatBox.scrollHeight;

}