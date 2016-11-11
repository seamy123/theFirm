<?php

class myDB{
	public $query;
	public $con;

	public function __construct($host,$username, $password, $dbname){
		$this->con = mysqli_connect($host, $username,$password,$dbname);

	}

	public function insertUser($fname, $lname,$phone,$email,$pword,$status, $category){
		$this->query = "INSERT INTO users(first_name, last_name, phone, email, password, status, category)
						VALUES('".$fname."','".$lname."','".$phone."','".$email."','".$pword."',".$status.",".$category.")"
						or die("Error...".mysqli_error($con));
					
		$this->con->query($this->query);
		$user_id = mysqli_insert_id($this->con);
		return $user_id;
	}	



	public function updateUser($id, $fname, $lname, $phone, $email, $pword, $status, $category){
		$this->query = "UPDATE users 
						SET first_name='".$fname."',last_name = '".$lname."', phone = '".$phone."', email = '".$email."', password = '".$pword."', status = ".$status.", category = ".$category."
						WHERE id =".$id			
						
						or die("Error...".mysqli_error($con));
		//var_dump($this->query);
		$this->con->query($this->query);
	}

	


	public function deleteUser($id){
		$this->query = "DELETE FROM users
						WHERE id =".$id
						or die("Error...".mysqli_error($con));

		$this->con->query($this->query);				
	}


}//end class

?>
