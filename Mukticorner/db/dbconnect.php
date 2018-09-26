<?php

/* Connection to database */
	$conn =mysqli_connect("localhost","root","","mukticorner_v2");

	/* Check connection */
	if(mysqli_connect_error()) {
		echo "Connection failed";
		printf("Error : %s",mysqli_connect_error());
	}

?>
