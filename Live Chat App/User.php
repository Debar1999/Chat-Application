<?php
  session_start();
  if(!isset($_SESSION['unique_id'])) {
      header("location:Login Page.php");
  }
?>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <meta http-eqiv="X-UA-Compatible" content="ie=edge">
    <title>Realtime Chat App</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <style>
        * {
            margin:0;
            padding:0;
            box-sizing:border-box;
            font-family:century gothic;
        }

        body {
            display:flex;
            align-items:center;
            justify-content:center;
            min-height:100vh;
            background: #f7f7f7;
        }
        .wrapper {
            background:#fff;
            width:450px;
            border-radius: 16px;
            box-shadow: 0 0 128px 0 rgba(0,0,0,0.1),
                        0 32px 64px -48px rgba(0,0,0,0.5);
        }

        .form{
            padding:25px 30px;
        }
        .form header {
            font-size:25px;
            font-weight:600;
            padding-bottom:10px;
            border-bottom:1px solid #e6e6e6;
        }
        .form form {
            margin:20px 0;
        }
        .form form .error-txt {
            color: #721c24;
            background: #f8d7da;
            padding:8px 10px;
            text-align:center;
            border-radius:5px;
            margin-bottom:10px;
            border:1px solid #f5c6cb;
        }
        .form form .field .active::before {
            color:#333;
            content:"\f070";
        }
       
         .form form .field {
            display:flex;
            position:relative;
            flex-direction:column;
            margin-bottom:10px;
        }
        .form form .field  label {
            margin-bottom:2px;
        }
        .form form .field label{
            margin-bottom:2px;
        }
        .form form .field input {
            outline:none;
        }
        .form form .input input {
            height:40px;
            width:100%;
            font-size:16px;
            padding:0 10px;
            border:1px solid #ccc;
            border-radius:5px;
        }
        .form form .image input {
            font-size:17px;
        }
        .form form .button input {
            margin-top:13px;
            height:45px;
            border:none;
            font-size:17px;
            font-weight:400;
            background:#333;
            color:#fff;
            border-radius:5px;
            cursor:pointer;

        }
        .form .link {
            text-align:center;
            margin:10px 0;
            font-size:17px;
        }
        form .link a{
            color:#333;
            text-decoration:none;
        }
        form .link a:hover{
           text-decoration:underline;
        }
        .form form .field i {
            position:absolute;
            right:15px;
            color:#ccc;
            top:70%;
            transform:translateY(-50%);
            cursor:pointer;
        }
        .users {
            padding:25px 30px;
        }
        .users header,.users-list a {
            display:flex;
            align-items:center;
            padding-bottom:20px;
            justify-content:space-between;
            border-bottom:1px solid #e6e6e6;
        }
        .wrapper img {
            object-fit:cover;
            border-radius:50%;
        }
        .users header .content,.users-list a .content {
            display:flex;
        }
        .users header .content img {
            height:50px;
            width: 50px;
        }
        .users-list .content span,.users-list .content p {
            margin-left:15px;
            align-items:center;
            color:black;
            text-decoration:none;
        }
        .users-list .content span {
            font-weight:bold;
        }
        .users header .details {
            margin-left:15px;
            align-items:center;
        }
        .users header .details span {
            font-size:18px;
            font-weight:bold;
        }
        .users header .logout {
            background:#333;
            color:#fff;
            padding:7px 15px;
            background:#333;
            border-radius:5px;
        }

        .users .search  {
            margin:20px 0;
            position:relative;
            display:flex;
            align-items:center;
            justify-content: space-between;
        }
        .users .search .text {
            font-size:18px;
        }
        .users .search input {
            position:absolute;
            height:42px;
            width:87%;
            border:1px solid #ccc;
            padding:0 13px;
            font-size:16px;
            border-radius:5px 0 0 5px;
            outline:none;
            opacity: 0;
            pointer-events:none;
            transition:all 0.3s ease;
        }
        .users .search input.active {
            opacity:1;
            pointer-events:auto;
        }
        .users .search button {
            width:47px;
            height:42px;
            border:none;
            outline:none;
            color:#333;
            background:#fff;
            cursor:pointer;
            font-size:17px;
            border-radius:0 5px 5px 0;
        }
        .users .search button.active {
           color:#fff;
           background:#333;
        }
        .users .search button.active i::before {
            content:"\f00d";
        }
        .users-list a .content img {
            height:40px;
            width:40px;
        }
        .users-list a .status-dot {
            font-size:12px;
            color:#468669;
        }
        a {
            text-decoration:none;
        }
        .users-list a {
            margin-bottom:15px;
            page-break-after:10px;
            padding-right:15px;
            border-bottom-color:#f1f1f1;
        }
        .users-list a:last-child {
            border:none;
            margin-bottom:0px;
        }
        .users-list {
            max-height:350px;
            overflow-y:auto;
        }
        .users-list::-webkit-scrollbar {
            width:0px;
        }
        .users-list a .content p {
            color:#67676a;
        }
        .users-list a .offline {  /* We use this class php to show that the user is offline*/
            color:#cccccc;
        }

        
    </style>
</head>
<body>
    <div class="wrapper">
        <section class="users">
         <header>
            <?php
              include_once "php/config.php";
              $sql = mysqli_query($conn,"SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
              if(mysqli_num_rows($sql)>0) {
                $row = mysqli_fetch_assoc($sql);
              }

            ?>
            <div class="content">
               <img src = "php/images/<?php echo $row['img']; ?>" alt="">
               <div class="details">
                   <span><?php echo $row['fname']." ".$row['lname']; ?></span>
                   <p><?php echo $row['status']; ?></p>
               </div>
            </div>
            <a href="php/logout.php?logout_id=<?php echo $row['unique_id']; ?>" class="logout">Log Out</a>
         </header>
         <div class="search">
             <span class="text">Select an user to start chat</span>
             <input type="text" placeholder="Enter Name to search....">
             <button><i class="fas fa-search"></i></button>
         </div>
            <div class="users-list">
                
            </div>
        </section>
    </div>
  <script src="javascript/users.js"></script>
</body>
</html>


