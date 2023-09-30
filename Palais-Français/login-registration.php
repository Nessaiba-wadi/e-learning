<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="edutim,coaching, distant learning, education html, health coaching, kids education, language school, learning online html, live training, online courses, online training, remote training, school html theme, training, university html, virtual training  ">
  
  <meta name="author" content="themeturn.com">

<title>Palais Français</title>

  <link rel="icon" href="assets/images/logo.png" type="image/x-icon">

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="assets/vendors/bootstrap/bootstrap.css">
  <!-- Iconfont Css -->
  <link rel="stylesheet" href="assets/vendors/fontawesome/css/all.css">
  <link rel="stylesheet" href="assets/vendors/bicon/css/bicon.min.css">
  <link rel="stylesheet" href="assets/vendors/themify/themify-icons.css">
  <!-- animate.css -->
  <link rel="stylesheet" href="assets/vendors/animate-css/animate.css">
  <!-- WooCOmmerce CSS -->
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce-layouts.css">
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce-small-screen.css">
  <link rel="stylesheet" href="assets/vendors/woocommerce/woocommerce.css">
   <!-- Owl Carousel  CSS -->
  <link rel="stylesheet" href="assets/vendors/owl/assets/owl.carousel.min.css">
  <link rel="stylesheet" href="assets/vendors/owl/assets/owl.theme.default.min.css">

  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/responsive.css">

</head>

<body id="top-header">
<?php
session_start(); // Starting session at the beginning
require "conn.php";

if (isset($_POST['login'])) {
    $input = $_POST['username']; // This can be either a username or email
    $password = $_POST['password'];

    // Try logging in with a name first
    $query = "SELECT name, password FROM users WHERE name = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("s", $input);
    $stmt->execute();
    $result = $stmt->get_result();
    $user = $result->fetch_assoc();

    // If login with name failed, try with email
    if (!$user) {
        $query = "SELECT name, password FROM users WHERE email = ?";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("s", $input);
        $stmt->execute();
        $result = $stmt->get_result();
        $user = $result->fetch_assoc();
    }

    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['username'] = $user['name']; // Store the user's name in session
        header('Location: index-8.php');
        exit;
    } else {
        echo "<script>alert('Invalid username or password!');</script>";
    }
}

if (isset($_POST['register'])) {
    $username = $_POST['user-name'];
    $email = $_POST['email'];
    $hashedPassword = password_hash($_POST['password'], PASSWORD_DEFAULT);

    // Check if username or email already exists
    $query = "SELECT * FROM users WHERE name = ? OR email = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("ss", $username, $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        echo "<script>alert('Username or Email already exists!');</script>";
    } else {
        $query = "INSERT INTO users (name, email, password) VALUES (?, ?, ?)";
        $stmt = $mysqli->prepare($query);
        $stmt->bind_param("sss", $username, $email, $hashedPassword);

        if ($stmt->execute()) {
            echo "<script>alert('Registration successful!');</script>";
        } else {
            echo "<script>alert('Registration failed!');</script>";
        }
    }
}

?>


<main class="site-main page-wrapper woocommerce single single-product">
    <section class="space-3">
        <div class="container">
            <div class="row">
                <!-- Start of the new image column -->
                <div class="col-md-6">
                    <img src="assets/images/home/girl.jpg" alt="Your Image Description" class="img-fluid">
                </div>
                <!-- End of the new image column -->
                <div class="col-md-6">
                    <div class="woocommerce-notices-wrapper"></div>
                    <h2 class="font-weight-bold mb-4"><img src="assets/images/logo-dark.png" style="padding-left: 160px;"></h2>
                    <form class="woocommerce-form woocommerce-form-login login" method="post">
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label for="username">Username or email address&nbsp;<span class="required">*</span></label>
                            <input type="text" class="woocommerce-Input woocommerce-Input--text input-text form-control" name="username" id="username" autocomplete="username" value="">
                        </p>
                        <p class="woocommerce-form-row woocommerce-form-row--wide form-row form-row-wide">
                            <label for="password">Password&nbsp;<span class="required">*</span></label>
                            <input class="woocommerce-Input woocommerce-Input--text input-text form-control" type="password" name="password" id="password" autocomplete="current-password">
                        </p>
                        <p class="form-row">
                            <input type="hidden" id="woocommerce-login-nonce" name="woocommerce-login-nonce" value="a414dce984"><input type="hidden" name="_wp_http_referer" value="/my-account/">
                            <button type="submit" class="woocommerce-button button woocommerce-form-login__submit" name="login" value="Log in" >Log in</button>
                            <label class="woocommerce-form__label woocommerce-form__label-for-checkbox woocommerce-form-login__rememberme">
                                <input class="woocommerce-form__input woocommerce-form__input-checkbox" name="rememberme" type="checkbox" id="rememberme" value="forever"> <span>Remember me</span>
                            </label>
                        </p>
                        <p class="woocommerce-LostPassword lost_password">
                            <a href="#">Lost your password?</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>
    </section>
</main>


    <!-- 
    Essential Scripts
    =====================================-->
    
    <!-- Main jQuery -->
    <script src="assets/vendors/jquery/jquery.js"></script>
    <!-- Bootstrap 4.5 -->
    <script src="assets/vendors/bootstrap/bootstrap.js"></script>
    <!-- Counterup -->
    <script src="assets/vendors/counterup/waypoint.js"></script>
    <script src="assets/vendors/counterup/jquery.counterup.min.js"></script>
    <script src="assets/vendors/jquery.isotope.js"></script>
    <script src="assets/vendors/imagesloaded.js"></script>
    <!--  Owlk Carousel-->
    <script src="assets/vendors/owl/owl.carousel.min.js"></script>
    <script src="assets/js/script.js"></script>


  </body>
  </html>