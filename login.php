 <?php
 require_once ("include/initialize.php"); 
 if (@$_GET['page'] <= 2 or @$_GET['page'] > 5) {
  # code...
    // unset($_SESSION['PRODUCTID']);
    // // unset($_SESSION['QTY']);
    // // unset($_SESSION['TOTAL']);
} 

function function_alert($message) { 
      
  // Display the alert box  
  echo "<script>alert('$message');</script>"; 
} 


 
if(isset($_POST['sidebarLogin'])){
  $email = trim($_POST['U_USERNAME']);
  $upass  = trim($_POST['U_PASS']);
  $h_upass = sha1($upass);
  
   if ($email == '' OR $upass == '') {

      message("Invalid Username and Password!", "error");
      redirect(web_root."index.php");
         
    } else {   
        $cus = new Customer();
        $cusres = $cus::cusAuthentication($email,$h_upass);

        if ($cusres==true){


           redirect(web_root."index.php?q=profile");
        }else{
             message("Invalid Username and Password! Please contact administrator", "error");
             redirect(web_root."index.php");
        }
 
 }
}



 if(isset($_POST['modalLogin'])){
  $email = trim($_POST['U_USERNAME']);
  $upass  = trim($_POST['U_PASS']);
  $h_upass = sha1($upass);
  
   if ($email == '' OR $upass == '') { 
      //message("Invalid Username and Password!", "error");
      function_alert("Invalid Username and Password! Please contact administrator");
      redirect(web_root."loginregister.php");
         
    } else {   
        $cus = new Customer();
        $cusres = $cus::cusAuthentication($email,$h_upass);

        if ($cusres==true){

           
            redirect(web_root."index.php");
           

         
        }else{
             //message("Invalid Username and Password! Please contact administrator", "error");
             function_alert("Invalid Username and Password! Please contact administrator");
             redirect(web_root."loginregister.php");
        }
 
 }
 }
 ?> 
 

 