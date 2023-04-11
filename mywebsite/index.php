<?php
    include_once 'header.php';

    session_start();

        include("inc/dbh.inc.php");
        include("inc/functions.inc.php");
    
        $UserData = loginCheck($conn);
?>


    <section class="intro">
         <h1>Welcome to the website</h1>
        <p>This website will show web based vulnerabilites!</p>


        <br> Hello, <?php echo $UserData['userName']; ?>
        <a href="logout.php">Click here to Log out</a>
    </section>



<?php
    include_once 'footer.php';
?>

