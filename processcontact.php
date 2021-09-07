<?php
    $nama       = "";
    $email      = "";
    $subject    = "";
    $message    = "";

    $db = mysqli_connect('localhost', 'root', '', 'db_ecommerce');

    if (isset($_POST['submit'])) {
        $nama       = $_POST['name'];
        $email      = $_POST['email'];
        $subject    = $_POST['subject'];
        $message    = $_POST['message'];

        $query = "INSERT INTO tblcontactmsg (name, email, subject, message) VALUES ('$nama', '$email', '$subject', '$message')";
        mysqli_query($db, $query);
        $_SESSION['msg'] = "Successfully Added";
        header('location: index.php?q=contact');
    }
?>  