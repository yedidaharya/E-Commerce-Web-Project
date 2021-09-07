
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script
      src="https://kit.fontawesome.com/64d58efce2.js"
      crossorigin="anonymous"
    ></script>
    <link rel="stylesheet" href="css/styleLoginRegister.css" />
    <title>Login</title>
  </head>
  <body>
    <div class="container">
      <div class="forms-container">
        <div class="signin-signup">
        <!-- Sign in    -->
          <form action="login.php" method="POST" class="sign-in-form">
            <h2 class="title">Login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="U_USERNAME" name="U_USERNAME" placeholder="Username"/>
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="U_PASS" name="U_PASS" placeholder="Password"/>
            </div>
            <input type="submit" id="modalLogin" name="modalLogin" class="btn solid" value="Login" />
          </form>
          <!-- *****   -->
          <!-- Sign Up    -->

          <form action="customer/controller.php?action=add" onsubmit="return personalInfo();" name="personal" method="POST" enctype="multipart/form-data" class="sign-up-form" >
            <h2 class="title">Daftar</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="FNAME" name="FNAME" placeholder="First Name" />
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="LNAME" name="LNAME" placeholder="Last Name" />
            </div>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" id="CUSUNAME" name="CUSUNAME" placeholder="Username" />
            </div>
            <div class="input-field">
              <i class="fas fa-address-book"></i>
              <input type="text" id="PHONE" name="PHONE" placeholder="No. Telepon" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" id="EMAIL" name="EMAIL" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" id="CUSPASS" name="CUSPASS" placeholder="Password" required/>
            </div>
            <input type="submit" class="btn" name="submit" value="Daftar" />
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
          <img src="assets/img/log.svg" class="image" alt="" />
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
          <img src="assets/img/register.svg" class="image" alt="" />
        </div>
      </div>
    </div>

    <script src="js/app.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
    <script type="text/javascript"></script>
  </body>
</html>
