<?php header("Content-Type: application/json; charset=UTF-8"); ?>
<?php
	$user_name = '';
	$user_number = '';
	$user_pw = '';

	if (isset($_POST['user_name'])) {
		$user_name = $_POST['user_name'];
	}
	
	if (isset($_POST['user_number'])) {
		$user_number = $_POST['user_number'];
	}

	if (isset($_POST['user_pw'])) {
		$user_pw = $_POST['user_pw'];
	}

	$result = "FAIL";
	if ( $user_name == "송승하" && $user_number == "123456789" && $user_pw == "123qwe!@#" ) {
		$result = "OK";
	}
?>
{ "result" : "<?=$result?>" } 