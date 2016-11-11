

<?php


include('myDB.class.php');


class Data{
public $db;

	public function __construct(){		
		$this->db = new myDB("localhost","root","","thefirm");
		}




 public function insertUser($fname, $lname,$phone,$email,$pword,$status){
 	 $this->db->insertUser($fname, $lname,$phone,$email,$pword,$status);
 }

 public function editProfile($id, $fname, $lname, $phone, $email, $pword, $status){
 	$this->db->updateUser($id, $fname, $lname, $phone, $email, $pword, $status);
 }

 public function deleteProfile($id){
 	$this->db->deleteUser($id);
 }



}

?>