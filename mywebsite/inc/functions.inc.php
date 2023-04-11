<?php


function loginCheck($conn){

    if(isset($_SESSION['userUID']))
    {
        $id = $_SESSION['userUID'];
        $query = "SELECT * FROM users WHERE userUID = '$id' limit 1";

        $result = mysqli_query($conn, $query);
        if($result && mysqli_num_rows($result) > 0)
        {
            $userData = mysqli_fetch_assoc($result);
            return $userData;
        }
    }

    // take back to login
    header("Location: login.php");
     die;

}

function random_num($length)
{
    $text = "";
    if($length < 5)
    {
        $length = 5;
    }

    $len = rand(4,$length);

    for ($i=0; $i < $len; $i++)
    {
        $text .= rand(0,9);
    }
    return $text;
}