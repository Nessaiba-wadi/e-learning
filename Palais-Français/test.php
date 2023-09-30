<li class="nav-item " >
    <?php
    include "conn.php"; // Include the database connection file

    // Define the theme ID you want to fetch (for example, theme 1)
    $theme_id =10;

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