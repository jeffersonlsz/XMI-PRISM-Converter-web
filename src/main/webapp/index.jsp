<!DOCTYPE html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Upload File</title>
</head>
<html>
<body>
	
	<div class="container">
		<div class="col-md-8 col-md-offset-2">
			<h3>File Input</h3>
			<form method="POST" action="uploadFile" enctype="multipart/form-data">
				<!-- COMPONENT START -->
				<div class="form-group">
					<div class="input-group input-file" name="Fichier1">
						<span class="input-group-btn">
							<button class="btn btn-default btn-choose" type="button">Choose</button>
						</span> <input type="text" class="form-control"
							placeholder='Choose a file...' /> <span class="input-group-btn">
							<button class="btn btn-warning btn-reset" type="button">Reset</button>
						</span>
					</div>
				</div>
				<!-- COMPONENT END -->
				<div class="form-group">
					<button type="submit" class="btn btn-primary pull-right">Submit</button>
					<button type="reset" class="btn btn-danger">Reset</button>
				</div>
				<p>Submit is disabled because it's not handle on this site
				<p>Input Reset or Input Choose can be omitted
				<p>Input Reset or Input Choose can be placed on left or right
			</form>


			
		</div>
	</div>

	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/functions.js"></script>
</body>
</html>