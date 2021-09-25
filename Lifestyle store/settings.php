<?php
	require './includes/common.php';

	if(!isset($_SESSION["email_id"])){
		header("location: index.php");
	}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Settings | Life Style Store</title>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </head>
    <body>
        
    <?php
			require './includes/header.php';
		?>
		<div class="container panel-margin">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h2 class="panel-title">Change Password</h2>
				</div>
				<div class="panel-body">
					<form actiom="settings_script.php" method="post">
						<div class="form-group">
							<input type="password" class="form-control" name="old_pass" placeholder="Old Password" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="new_pass" placeholder="New Password" required>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="retype_new_pass" placeholder="Re-type New Password" required>
						</div>
						<button type="submit" class="btn btn-primary">Change</button>
					</form>
				</div>
			</div>
		</div>
		<?php
			require './includes/footer.php';
		?>
    </body>
</html>