var searchBar = document.querySelector(".users .search input");
var searchBtn = document.querySelector(".users .search button");
var usersList = document.querySelector(".users .users-list");

searchBtn.addEventListener("click",function(){
   
    searchBar.classList.toggle("active");
    searchBar.focus();
    searchBtn.classList.toggle("active");
          
});

searchBar.onkeyup = ()=>{
    var searchTerm = searchBar.value;
    if(searchTerm != "") {
        searchBar.classList.add("active");
    } else {
        searchBar.classList.remove("active");
    }
    var xhr=new XMLHttpRequest();
    xhr.open("POST","php/search.php",true);
    xhr.onload = () => {
        if(xhr.readyState === XMLHttpRequest.DONE) {
            if(xhr.status === 200) {
                var data = xhr.response;
                usersList.innerHTML = data;
             }
         }
     }
     xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
     xhr.send("searchTerm=" + searchTerm);

}

setInterval(()=> {
    var xhr=new XMLHttpRequest();
    xhr.open("GET","php/users.php",true);
    xhr.onload = () => {
       if(xhr.readyState === XMLHttpRequest.DONE) {
           if(xhr.status === 200) {
               var data = xhr.response;
               if(!searchBar.classList.contains("active")) {
                   console.log(data);
                   usersList.innerHTML = data;
               }
            }
        }
    }
    xhr.send();
},500);
