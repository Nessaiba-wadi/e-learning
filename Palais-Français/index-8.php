<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="edutim,coaching, distant learning, education html, health coaching, kids education, language school, learning online html, live training, online courses, online training, remote training, school html theme, training, university html, virtual training  ">
  
  <meta name="author" content="themeturn.com">

<title>Palais Français</title>

  <link rel="icon" href="assets/images/logo.png" type="image/x-icon">

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



    <!-- Nessaiba -->
    <!-- Dark CSS -->
    <link rel="stylesheet" href="assets/css/dark.css">

</head>

<body id="top-header">

  
<!--  Header Menu start -->

<header>
    <?php
    session_start();


    ?>
    <!-- Main Menu Start -->
    <div class="site-navigation main_menu menu-2" id="mainmenu-area">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="index-8.php">
                    <img src="assets/images/logo-dark.png" alt="Edutim" class="img-fluid">
                </a>

                <!-- Toggler -->

                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="fa fa-bars"></span>
                </button>

                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="navbarMenu">


                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item " >
                            <a class="nav-link js-scroll-trigger" href="home_cm1.php" >
                                Nénuphar CM1
                            </a>
                        </li>
                        <li class="nav-item " >
                            <a class="nav-link js-scroll-trigger" href="home_cm2.php" >
                                Nénuphar CM2
                            </a>
                        </li>


                    </ul>

                    <a href="login-registration.php" class="btn btn-main btn-small">
                        <?php
                        if(isset($_SESSION['username'])) {
                            echo '<i class="fa fa-sign-in-alt mr-2"></i>'.$_SESSION['username'];  // Displaying the username when logged in
                        } else {
                            echo '<i class="fa fa-sign-in-alt mr-2"></i>Login';  // Displaying the "Login" text when not logged in
                        }
                        ?>
                    </a>

                </div> <!-- / .navbar-collapse -->
            </div> <!-- / .container -->
        </nav>
    </div>
</header>
<!--Nessaiba-->
<!-- Banner Start -->

<section class="banner-style-8">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-12 col-xl-6">
                <div class="banner-content">
                    <span class="subheading">Apprenez le français facilement </span>
                    <h1>Acquérez des compétences avec des cours flexibles</h1>
                    <p>Ce site propose d'excellents cours de français, conçus spécialement pour les étudiants en quête d'une formation exceptionnelle.</p>
                    <a href="#" class="btn btn-main">voir details</a>
                </div>
            </div>

            <div class="col-xl-6">
                <div class="banner-img">
                    <img src="assets/images/home/education-girl.png" alt="" class="img-fluid">
                </div>
            </div>
        </div> <!-- / .row -->
    </div>
    <!-- / .container -->


</section>

<section class="banner-style-8-2">

</section>

<section class="blog section-padding">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
                <div class="section-heading center-heading">
                    <span class="subheading">CM1 & CM2</span>
                    <h3>Nénuphar</h3>
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="row no-gutters">
            <div class="col-lg-3 col-md-6">
                <div class="feature-item feature-style-2">
                    <a href="home_cm1.php">
                        <div class="feature-icon">
                            <img src="assets/images/home/sav.gif" style="width: 70px; height: 70px;">
                        </div>
                        <div class="feature-text">
                            <h4>CM1 <br>Cahier de savoirs </h4>
                            <p>Mieux apprendre grâce aux neurosciences</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="feature-item feature-style-2">
                    <?php
                    include "conn.php"; // Include the database connection file

                    // Define the theme ID you want to fetch (for example, theme 1)
                    $theme_id =100;

                    // Query courses only for the specific theme
                    $resultCourses = $mysqli->query("SELECT * FROM Courses WHERE theme_id = $theme_id");

                    // Counter for the loop
                    $counter = 0;

                    // Iterate through each course
                    while ($course = $resultCourses->fetch_assoc()) {
                    $counter++;

                    // Add 'last' class if the counter is divisible by 3
                    $class = ($counter % 4 == 0) ? 'product last' : 'product';
                    ?>
                    <?php echo '<a href="' . $course['course_pdf'] . '">
                        <div class="feature-icon">
                            <img src="assets/images/home/exer.gif" style="width: 70px; height: 70px;">
                        </div>
                        <div class="feature-text">
                            <h4>CM1 <br> Cahier d`exercices</h4>
                            <p>Exercices pratiques pour une meilleure compréhension </p>
                        </div>
                    </a>'?>
                        <?php

                    }?>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="feature-item feature-style-2">
                    <a href="home_cm2.php">
                        <div class="feature-icon">
                            <img src="assets/images/home/sav.gif" style="width: 70px; height: 70px;">
                        </div>
                        <div class="feature-text">
                            <h4>CM2 <br>Cahier de savoirs </h4>
                            <p>Mieux apprendre grâce aux neurosciences</p>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-lg-3 col-md-6">
                <div class="feature-item feature-style-2">
                    <?php
                    include "conn.php"; // Include the database connection file

                    // Define the theme ID you want to fetch (for example, theme 1)
                    $theme_id =101;

                    // Query courses only for the specific theme
                    $resultCourses = $mysqli->query("SELECT * FROM Courses WHERE theme_id = $theme_id");

                    // Counter for the loop
                    $counter = 0;

                    // Iterate through each course
                    while ($course = $resultCourses->fetch_assoc()) {
                    $counter++;

                    // Add 'last' class if the counter is divisible by 3
                    $class = ($counter % 4 == 0) ? 'product last' : 'product';
                    ?>
                        <?php echo '<a href="' . $course['course_pdf'] . '">
                        <div class="feature-icon">
                            <img src="assets/images/home/exer.gif" style="width: 70px; height: 70px;">
                        </div>
                        <div class="feature-text">
                            <h4>CM2 <br> Cahier d`exercices</h4>
                            <p>Exercices pratiques pour une meilleure compréhension </p>
                        </div>
                    </a>'?>
                        <?php

                    }?>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- Feature start -->
<div style="padding-top: 50px;">
</div>

<!--  Cta Start -->

<!--  Footer Start -->
<?php include "footer.php" ?>


<div class="fixed-btm-top">
	<a href="#top-header" class="js-scroll-trigger scroll-to-top"><i class="fa fa-angle-up"></i></a>
</div>



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
   