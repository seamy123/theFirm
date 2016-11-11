<?php

class myDB{
	public $query;
	public $con;

	public function __construct($host,$username, $password, $dbname){
		$this->con = mysqli_connect($host, $username,$password,$dbname);

	}

	public function insertUser($fname, $lname,$phone,$email,$pword,$status){
		$this->query = "INSERT INTO users(first_name, last_name, phone, email, password, status)
						VALUES('".$fname."','".$lname."','".$phone."','".$email."','".$pword."',".$status.")"
						or die("Error...".mysqli_error($con));
					
		$this->con->query($this->query);
	}	



	public function updateUser($id, $fname, $lname, $phone, $email, $pword, $status){
		$this->query = "UPDATE users 
						SET first_name='".$fname."',last_name = '".$lname."', phone = '".$phone."', email = '".$email."', password = '".$pword."', status = ".$status."
						WHERE id =".$id			
						
						or die("Error...".mysqli_error($con));
		
		$this->con->query($this->query);
	}

	


	public function deleteUser($id){
		$this->query = "DELETE FROM users
						WHERE id =".$id
						or die("Error...".mysqli_error($myconection));

		$this->con->query($this->query);				
	}


}//end class

?>
