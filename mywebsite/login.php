<?php
    include_once 'header.php';

 session_start();

include("inc/dbh.inc.php");
include("inc/functions.inc.php");

if($_SERVER['REQUEST_METHOD'] == "POST")
{
   $userName = $_POST['userName'];
   $userPWD = $_POST['userPWD'];

   if(!empty($userName) && !empty($userPWD))
   {
        $query = "SELECT * FROM users WHERE userName = '$userName'";

       $result = mysqli_query($conn, $query);

       if($result)
       {
            if($result && mysqli_num_rows($result) > 0)
            {
                $userData = mysqli_fetch_assoc($result);
                
                if($userData['userPWD'] === $userPWD)
                {
                    $_SESSION['userUID'] = $userData['userUID'];
                    header("Location: index.php");
                    die;
                }
            }
       }

       echo "Invalid credentials";

   }
   else{
    echo "Invalid credentials";
   }


}
?>

    <section class="login-form">
         <h1>Log in</h1>
         <p>Please use the form below to log in</p>
         <div class="login-form-part">
            <form method="post">
                <input type="text" name="userName" placeholder="Username"><br><br>
                <input type="password" name="userPWD" placeholder="Password"><br><br>
                <button type="submit" name="submit">Log In</button><br><br>
                <a href="signup.php">Click here to Sign up</a>
            </form>
         </div>
        
    </section>



<?php
    include_once 'footer.php';
?>

