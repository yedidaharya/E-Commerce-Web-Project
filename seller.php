<?php
    session_start();
    $nama       = "";
    $notelepon  = "";
    $email      = "";
    $username   = "";
    $password   = "";
    $role       = "";

    $db = mysqli_connect('localhost', 'root', '', 'db_ecommerce');

    if (isset($_POST['buttonDaftar'])) {
        $nama       = $_POST['U_NAME'];
        $notelepon  = $_POST['NO_TELEPON'];
        $email      = $_POST['EMAIL'];
        $username   = $_POST['U_USERNAME'];
        $password   = $_POST['U_PASS'];
        $role       = $_POST['U_ROLE'];

        $query = "INSERT INTO tbluseraccount (U_NAME, NO_TELEPON, EMAIL, U_USERNAME, U_PASS, U_ROLE, USERIMAGE) VALUES ('$nama', '$notelepon', '$email', '$username', '$password', '$role', NULL)";
        mysqli_query($db, $query);
        $_SESSION['msg'] = "Successfully Added";
        header('location: index.php');
    }
?>