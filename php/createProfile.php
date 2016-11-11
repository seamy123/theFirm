<?php

include('myDB.class.php');
var_dump($_POST);


if(!empty($_POST)){


$fname = $_POST['fname'];
$lname = $_POST['lname'];
$phone = $_POST['phone'];
$email = $_POST['email'];
$pword = $_POST['pword'];
$status = $_POST['status'];

$db = new myDB("localhost","root","","thefirm");
$db->insertUser($fname, $lname,$phone,$email, $pword, $status);
}
echo "<div>Profile created - thank you</div>";
echo "<a href='../editProfile.html' data-role='button' id='edit' class='ui-btn'>Edit Profile</a>";

?>
