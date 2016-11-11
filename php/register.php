<?php
session_start();
include('myDB.class.php');
var_dump($_POST);


if(!empty($_POST)){

	$fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$pword = $_POST['password'];
	$status = $_POST['status'];
	$category = $_POST['category'];

	$db = new myDB("localhost","root","","thefirm");
	$user_id = $db->insertUser($fname, $lname,$phone,$email, $pword, $status, $category);
	$_SESSION['user_id'] = $user_id;
	//var_dump($_SESSION['user_id']);
	$_SESSION['fname'] = $fname;
	$_SESSION['lname'] = $lname;
	$_SESSION['phone'] = $phone;
	$_SESSION['email'] = $email;
	$_SESSION['password'] = $pword;
	$_SESSION['status'] = $status;
	$_SESSION['category'] = $category;
	var_dump($_SESSION);
}

echo "<div>Profile created - thank you</div>";
header('Refresh: 10; URL=../apps/home/index.html');


?>


