<?php

session_start();
include('myDB.class.php');



if (isset($_POST['edit-submit'])) {
	var_dump($_POST);
	$id = $_SESSION['user_id'];
    $fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$pword = $_POST['password'];
	$status = $_POST['status'];
	$category = $_POST['category'];
		
	$db = new myDB("localhost","root","","thefirm");
	$db->updateUser($id, $fname, $lname, $phone, $email, $pword, $status, $category);
	echo "<div>Profile updated- thank you</div>";
	header('Refresh: 10; URL=../apps/home/index.html');
}


 if(isset($_POST['delete-submit'])){
 		
	$id = $_SESSION['user_id'];
	$db = new myDB("localhost","root","","thefirm");
	$db->deleteUser($id);
	session_unset();
	session_destroy();
	echo "<div>Profile deleted</div>";

    }







?>
