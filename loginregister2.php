<?php
require_once("include/initialize.php");

 ?>
  <?php
 // login confirmation
  if(isset($_SESSION['USERID'])){
    redirect(web_root."admin/index.php");
  }
  ?>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/styleLoginRegister2.css" />
    <title>Login</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        <!-- Sign in    -->
          <form action="" method="POST" class="sign-in-form">
            <h2 class="title">Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="U_USERNAMELOGIN" name="user_email" placeholder="Username"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="U_PASSLOGIN" name="user_pass" placeholder="Password"/>
            </div>
            <input type="submit" id="buttonLogin" name="btnLogin" class="btn solid" value="Login" />
          </form>
          <!-- *****   -->
          <!-- Sign Up    -->

          <form action="admin/user/controllerSeller.php?action=addSeller" onsubmit="return personalInfo();" name="personal" method="POST" enctype="multipart/form-data" class="sign-up-form" >
            <h2 class="title">Daftar</h2>
            <input type="hidden" name="U_ROLE" value="Seller">
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="U_NAME" name="U_NAME" placeholder="Full Name" />
            </div>
            <div class="input-field">
              <i class="fa fa-bank"></i>
              <input type="text" id="NO_REKENING" name="NO_REKENING" placeholder="Nomor Rekening" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" id="EMAIL" name="EMAIL" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="U_USERNAME" name="U_USERNAME" placeholder="Username" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="U_PASS" name="U_PASS" placeholder="Password" required/>
            </div>
            <input type="submit" class="btn" name="saveSeller" value="Daftar" />
          </form>
          <!-- **** -->
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>Don't Have an Account?</h3>
            <p>
             Sign Up Here!
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign Up
            </button>
          </div>
          <img src="assets/img/login2.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>Already Have an Account?</h3>
            <p>
              Sign In Here!
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Login
            </button>
          </div>
          <img src="assets/img/register2.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script type="text/javascript"></script>
  </body>
</html>
<?php 

if(isset($_POST['btnLogin'])){
  $email = trim($_POST['user_email']);
  $upass  = trim($_POST['user_pass']);
  $h_upass = sha1($upass);
  
   if ($email == '' OR $upass == '') {

      message("Invalid Username and Password!", "error");
      redirect("loginregister2.php");
         
    } else {  
  //it creates a new objects of member
    $user = new User();
    //make use of the static function, and we passed to parameters
    $res = $user::userAuthentication($email, $h_upass);
    if ($res==true) { 
       message("You logon as ".$_SESSION['U_ROLE'].".","success");
      if ($_SESSION['U_ROLE']=='Administrator'){
         redirect(web_root."admin/index.php");
	  } elseif ($_SESSION['U_ROLE'] == 'Seller') {
		redirect(web_root."admin/index.php");
	  } else{
           redirect(web_root."loginregister2.php");
      }
    }else{
      message("Account does not exist! Please contact Administrator.", "error");
       redirect(web_root."loginregister2.php"); 
    }
 }
 } 
 ?> 