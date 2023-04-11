<?php
    include_once 'header.php';
?>

<?php
    session_start();

    include("inc/dbh.inc.php");
    include("inc/functions.inc.php");

    if($_SERVER['REQUEST_METHOD'] == "POST")
    {
       $userName = $_POST['userName'];
       $userPWD = $_POST['userPWD'];

       if(!empty($userName) && !empty($userPWD))
       {
            $userUID = random_num(20);
            $query = "INSERT INTO users (userUID, userName, userPWD) values ('$userUID', '$userName', '$userPWD')";

            mysqli_query($conn, $query);

            header("Location: login.php");
            die;

       }
       else{
        echo "Please enter valid information";
       }
    

    }
   
?>
    <section class="signup-form">
         <h1>Sign up</h1>
         <p>Please use the form below to Sign up</p>
         <div class="login-form-part">
            <form method="post">
                <input type="text" name="userName" placeholder="Username"><br><br>
                <input type="password" name="userPWD" placeholder="Password"><br><br>
                <button type="submit" name="submit">Sign up</button><br><br>
                
            </form>
         </div>
        
    </section>



<?php
    include_once 'footer.php';
?>
