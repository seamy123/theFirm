<?php


include('myDB.class.php');



if (isset($_POST['update'])) {
	var_dump($_POST);
	//$id = $_POST['id'];
    $fname = $_POST['fname'];
	$lname = $_POST['lname'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	$pword = $_POST['pword'];
	$status = $_POST['status'];

	
	//hardcode id for now - will get user id from login & use session variables
	$id = 14;
	$db = new myDB("localhost","root","","thefirm");
	$db->updateUser($id, $fname, $lname, $phone, $email, $pword, $status);	
}


 if(isset($_POST['delete'])){
 		//$id = $_POST['id']; 		
	
		$id = 13; 
		$db = new myDB("localhost","root","","thefirm");
		$db->deleteUser($id);
		echo "<div>deleted</div>";

    }







?>
