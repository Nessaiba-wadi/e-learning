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
                            <a href="home_cm2.php" class="nav-link js-scroll-trigger">
                                Home
                            </a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbar3" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Dossiers<i class="fa fa-angle-down"></i>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbar3">
                                <a class="dropdown-item " href="theme7.php">
                                    Dossier 1
                                </a>
                                <a class="dropdown-item " href="theme8.php">
                                    Dossier 2
                                </a>
                                <a class="dropdown-item " href="theme9.php">
                                    Dossier 3
                                </a>
                                <a class="dropdown-item " href="theme10.php">
                                    Dossier 4
                                </a>
                                <a class="dropdown-item " href="theme11.php">
                                    Dossier 5
                                </a>
                                <a class="dropdown-item " href="theme12.php">
                                    Dossier 6
                                </a>
                            </div>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link js-scroll-trigger" href="poesie.php" >
                                Poésie
                            </a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link js-scroll-trigger" href="PDE.php" >
                                Production de l'écrit
                            </a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link js-scroll-trigger" href="eveil_scientifique.php" >
                                eveil scientifique
                            </a>
                        </li>
                        <li class="nav-item" >
                            <a class="nav-link js-scroll-trigger" href="projets.php" >
                                Projet de classe
                            </a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link js-scroll-trigger" href="Evaluation2.php" >
                                Evaluations
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
