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
            display:none;
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
        .form form .field .active::before {
            color:#333;
            content:"\f070";
        }
        a {
            text-decoration:none;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <section class="form signup">
            <header>Realtime Chat App</header>
            <form action="#" method="post" enctype="multipart/form-data">
                <div class="error-txt">This is an error message</div>
            <div class="name-details">
                <div class="field input">
                    <label>First Name</label>
                    <input type = "text" name="fname" placeholder = "First Name" required>
                </div>
                <div class="field input">
                    <label>Last Name</label>
                    <input type = "text" name="lname" placeholder = "Last Name" required>
                </div>
                <div class="field input">
                    <label>Email Address</label>
                    <input type = "text" name="email" placeholder = "Enter Your Email" required>
                </div>
                <div class="field input">
                    <label>Password</label>
                    <input type = "password" name="password" placeholder = "Enter Your Password" required>
                    <i class="fas fa-eye"></i>
                </div>
                <div class="field image">
                    <label>Select Image</label>
                    <input type="file" name="image" required>
                </div>
                <div class="field button">
                   <input type = "submit" value="Continue to Chat">
                </div>
            </div>
            </form>
            <div class="link">Already Signed Up?<a href="Login Page.php">Login now</a></div>

        </section>
    </div>
    <script src="javascript/pass-show-hide.js"></script>
    <script src="javascript/signup.js"></script>
</body>
</html>