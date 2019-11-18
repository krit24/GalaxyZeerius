<?php require_once('../includes/connect.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta http-equiv="X-UA-Compatible" content="ie=edge" />

	<link rel="stylesheet" href="https://cdnjs.cloudfare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha256-UzFD2WYH2U1dQpKDjjZK72VtPeWP50NoJjd26rnAdUI="crossorigin="anonymous" />

	<link rel="stylesheet" type="text/css" href="admin.css">

	<link rel="stylesheet" type="text/css" href="style.css">

	<title>Admin Panel</title>
</head>
<body>

	<!--- NavBar -->
	<nav class="navbar is-fixed-top box-shadow-y">
		<div class="navbar-brand">
			<a href="#" class="navbar-burger toggler">
				<span></span>
				<span></span>
			</a>
			<a href="#" class="navbar-item has-text-weight-bold has-text-black">Music Genre</a>

			<a href="#" class="navbar-burger nav-toggler">
				<span></span>
				<span></span>
			</a>
		</div>
		<div class="navbar-menu has-background-white">
			<div class="navbar-start">
				<a href="#" class="navbar-item">
					<i class="fas fa-home icon"></i> Home
				</a>
				<a href="#" class="navbar-item">Users</a>
				<a href="#" class="navbar-item">Artist</a>
				<a href="#" class="navbar-item">Album</a>
				<a href="#" class="navbar-item">Genre</a>
				<a href="#" class="navbar-item">Songs</a>
			</div>
			
			<div class="navbar-end">
				<a href="#" class="navbar-item">New Updates</a>
				<div class="navbar-item has-dropdown is-hoverable"></div>
					<a href="#" class="navbar-link">Admin</a>
				<div class="navbar-dropdown">
					<a href="#" class=navbar-item>Users</a>
					<a href="#" class=navbar-item>Songs</a>
					<hr class="navbar-divider">
						<a href="#" class="navbar-item">Log Out</a>
				</div> 
			</div>
		</div>
	</nav>

	<!--- End NavBar -->

	<script src="js/jquey.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/script.js"></script>

</body>
</html>