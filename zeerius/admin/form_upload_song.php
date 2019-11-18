<?php
 require_once('../includes/connect.php');

 	//get the artist data
 	$artist = $conn->query('select * from artist');

 	$artist_data = array();
 	if( $artist->num_rows > 0 ){
 		while( $row = $artist->fetch_assoc() ){
 			$artist_data[$row['id']] = $row['name'];
 		}
 	}

 	//get the albums
 	$albums_data = array();
 	$albums = $conn->query('select * from albums');
 	if( $albums->num_rows > 0 ){
 		while ( $album_row = $albums->fetch_assoc() ) {
 			$albums_data[$album_row['id']] = $album_row['title'];
 		}
 	}

 	//get genre
 	$genre_data = array();
 	$genre = $conn->query('select * from genres');
 	if( $genre->num_rows > 0 ){
 		while ( $genre_row = $genre->fetch_assoc() ) {
 			$genre_data[$genre_row['id']] = $genre_row['name'];
 		}
 	}

 	//process the submit data
 	$msg = "";
 	if( isset( $_POST['submit'] ) ){
 		$msg = "No data submitted.";
 		if( count($_FILES['file']['name']) > 0 ){
 			$target_path = '../assets/music/';
 			$ctr = 0;
 			foreach ($_FILES['file']['name'] as $key => $value) {
 				$filename = trim($value);
 				if( empty($filename) ) continue;
 				$tmp_file = $_FILES['file']['tmp_name'][$key];
 				$title = $_POST['title'][$key];
 				$artist = $_POST['artists'][$key];
 				$genre = $_POST['genre'][$key];
 				$album = $_POST['album'][$key];
 				$duration = $_POST['duration'][$key];

 				$ctr++;

 				//move uploaded file
 				if( move_uploaded_file($tmp_file, $target_path . $filename) ){
 					$path = str_replace("../", "", $target_path) . $filename;
 					$sqlInsert = 'insert into Songs (title,artist,album,genre,duration,path) values ("'.$title.'","'.$artist.'","'.$album.'","'.$genre.'","'.$duration.'","'.$path.'")';

 					$queryInsert = $conn->query($sqlInsert);

 					if( $queryInsert ){
 						$msg = $ctr . " records has been added.";
 					}
 				}

 			}

 		}

 	}


?>

<?=$msg?>


<div id="adminContainer">

	<div id="adminContainer">

		<div id="navAdminContainer">

<form action="<?=$_SERVER['PHP_SELF']?>" method="post" enctype="multipart/form-data" autocomplete="off">

	<table>
		<tr>
			<th>Title</th>
			<th>Artist</th>
			<th>Genre</th>
			<th>Album</th>
			<th>Duration</th>
			<th>File</th>
		</tr>
		<?php
			for ($i=0; $i < 5; $i++) { 
		?>
			<tr>
				<td>
					<input type="text" name="title[]" value="" />
				</td>
				<td>
					<select name="artists[]">
						<option value="">Select Artists</option>
						<?php
							if( ! empty($artist_data) ){
								foreach ($artist_data as $key => $value) {
						?>
									<option value="<?=$key?>"><?=$value?></option>
						<?php
								}
							}
						?>
					</select>
				</td>
				<td>
					<select name="genre[]">
						<option value="">Select Genre</option>
						<?php
							if( ! empty($genre_data) ){
								foreach ($genre_data as $key => $value) {
						?>
									<option value="<?=$key?>"><?=$value?></option>
						<?php
								}
							}
						?>
					</select>
				</td>
				<td>
					<select name="album[]">
						<option value="">Select Album</option>
						<?php
							if( ! empty($albums_data) ){
								foreach ($albums_data as $key => $value) {
						?>
									<option value="<?=$key?>"><?=$value?></option>
						<?php
								}
							}
						?>
					</select>
				</td>
				<td>
					<input type="text" name="duration[]" value="" />
				</td>
				<td>
					<input type="file" name="file[]">
				</td>
			</tr>
		<?php } ?>
	</table>

	<div>
		<input type="submit" name="submit" value="SUBMIT SONG" />
	</div>
</form>

</div>

</div>

</div>

</body>