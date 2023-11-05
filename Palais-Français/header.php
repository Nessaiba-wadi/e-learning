<?php
session_start()
?>
<header>
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
                        <li class="nav-item ">
                            <a href="home_cm1.php" class="nav-link js-scroll-trigger">
                                Home
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbar3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Thèmes<i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbar3">
                                <a class="dropdown-item " href="theme1.php">
                                    Thème 1
                                </a>
                                <a class="dropdown-item " href="theme2.php">
                                    Thème 2
                                </a>
                                <a class="dropdown-item " href="theme3.php">
                                    Thème 3
                                </a>
                                <a class="dropdown-item " href="theme4.php">
                                    Thème 4
                                </a>
                                <a class="dropdown-item " href="theme5.php">
                                    Thème 5
                                </a>
                                <a class="dropdown-item " href="theme6.php">
                                    Thème 6
                                </a>
                            </div>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link js-scroll-trigger" href="lecturesuivie.php" >
                                Lecture suivie
                            </a>
                        </li>
                        <li class="nav-item ">
                            <?php
                            include "conn.php"; // Include the database connection file

                            // Define the theme ID you want to fetch (for example, theme 1)
                            $theme_id = 9;

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

                            <?php echo '<a class="nav-link js-scroll-trigger" href="' . $course['course_pdf'] . '">' . $course['course_name'] . '</a>'?>

                                <?php

                            }?>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link js-scroll-trigger" href="Evaluation.php" >
                                Evaluations
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link js-scroll-trigger" href="Science.php" >
                                Evil Scientifique
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
