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




<?php include "header2.php" ?>
<!--search overlay start-->
<!--search overlay end-->


<section class="page-header-13">
</section>


<main class="site-main page-wrapper woocommerce">
    <!--les cours-->

    <section class="space-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-4 mb-lg-0">
                    <div class="section-title">
                        <h2 class="title d-block text-left-sm">Cours du manuel</h2>
                        <p class="woocommerce-result-count"> Semaine 1–5</p>
                    </div>



                    <ul class="products columns-3">
                        <?php
                        include "conn.php"; // Include the database connection file

                        // Define the theme ID you want to fetch (for example, theme 1)
                        $theme_id = 14;

                        // Query courses only for the specific theme
                        $resultCourses = $mysqli->query("SELECT * FROM Courses WHERE theme_id = $theme_id");

                        // Counter for the loop
                        $counter = 0;

                        // Iterate through each course
                        while ($course = $resultCourses->fetch_assoc()) {
                            $counter++;

                            // Add 'last' class if the counter is divisible by 3
                            $class = ($counter % 3 == 0) ? 'product last' : 'product';
                            ?>
                            <li class="<?php echo $class; ?>">
                                <div class="product-wrap">
                                    <?php echo '<a href="' . $course['course_pdf'] . '" target="_blank" class=""><img src="' . $course['picture'] . '" alt=""></a>'; ?>
                                </div>
                            </li>
                            <?php

                        }?>
                    </ul>



                </div>
            </div>
        </div>
    </section>

    <!--les cours à écrire -->
 <!--
    <section class="space-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-4 mb-lg-0">
                    <div class="section-title">
                        <h2 class="title d-block text-left-sm">Cours à écrire</h2>
                        <p class="woocommerce-result-count"> Semaine 1–5</p>
                    </div>
                    <ul class="products columns-4">
                        <?php /*
                        include "conn.php"; // Include the database connection file

                        // Define the theme ID you want to fetch (for example, theme 1)
                        $theme_id = 10;

                        // Query courses only for the specific theme
                        $resultsCourses = $mysqli->query("SELECT * FROM writingcourses WHERE theme_id = $theme_id");

                        // Counter for the loop
                        $counter = 0;

                        // Iterate through each course
                        while ($courses = $resultsCourses->fetch_assoc()) {
                            $counter++;

                            // Add 'last' class if the counter is divisible by 3
                            $class = ($counter % 4 == 0) ? 'product last' : 'product';
                            ?>
                            <li class="<?php echo $class; ?>">
                                <div class="product-wrap">
                                    <?php echo '<a href="' . $courses['course_pdf'] . '" target="_blank" class=""><img src="' . $courses['picture'] . '" alt=""></a>'; ?>
                                </div>
                                <span class="price">
                                <span class="woocommerce-Price-amount amount">
                                     <?php echo $courses['course_name'] ?>
                                </span>
                            </span>
                            </li>

                            <?php

                        }?>
                    </ul>

                </div>
            </div>
        </div>
    </section>


    <!--les exercices -->
    <section class="space-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 mb-4 mb-lg-0">
                    <div class="section-title">
                        <h2 class="title d-block text-left-sm">Exercices</h2>
                    </div>
                    <ul class="products columns-4">
                        <?php
                        include "conn.php"; // Include the database connection file

                        // Define the theme ID you want to fetch (for example, theme 1)
                        $theme_id = 1;

                        // Query courses only for the specific theme
                        $resultsCourses = $mysqli->query("SELECT * FROM exercises WHERE theme_id = $theme_id");

                        // Counter for the loop
                        $counter = 0;

                        // Iterate through each course
                        while ($courses = $resultsCourses->fetch_assoc()) {
                            $counter++;

                            // Add 'last' class if the counter is divisible by 3
                            $class = ($counter % 4 == 0) ? 'product last' : 'product';
                            ?>
                            <li class="<?php echo $class; ?>">
                                <div class="product-wrap">
                                    <?php echo '<a href="' . $courses['exercise_pdf'] . '" target="_blank" class=""><img src="' . $courses['picture'] . '" alt=""></a>'; ?>
                                </div>
                            </li>

                            <?php

                        } */ ?>
                    </ul>

                </div>
            </div>
        </div>
    </section>
    -->
    <!-- product section end-->
</main>



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