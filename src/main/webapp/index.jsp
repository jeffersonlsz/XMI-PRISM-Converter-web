<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/xtp-style.css">

<title>Upload File</title>
</head>

<body>
	<div class="bs-component">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">XMItoPRISM</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor03">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>
				</ul>

			</div>
		</nav>
        </div>
		<span class="border border-dark"></span>
		<div class="row justify-content-center topTitle">
			<h3>Upload an XMI standard compliant file</h3>
		</div>
		</span>
		<div class=".container">
		<div class="row justify-content-center">

			<div class="col-8 ">
				
				<form method="POST" action="uploadFile"
					enctype="multipart/form-data">
					<!-- COMPONENT START -->
					<div class="form-group">
						<div class="input-group input-file" name="Fichier1">
							<span class="input-group-btn">
								<button class="btn btn-default btn-choose" type="button">Choose</button>
							</span> <input type="text" class="form-control"
								placeholder='Click here to choose a file. Currently supported tools: Papyrus, Astah' required /> 
								<span class="input-group-btn">
								<button class="btn btn-warning btn-reset" type="button">Reset</button>
							</span>
						</div>
					</div>
					<!-- COMPONENT END -->
					<div class="form-group">
						<button type="submit" class="btn btn-primary pull-right">Submit</button>
						<button type="reset" class="btn btn-danger">Reset</button>
					</div>
					<p>Choose a file clicking on 'Choose' button then click on Submit</p>
					<p>Click on 'Reset' button to clear the field</p>
				</form>

			</div>

		</div>
		</div>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/functions.js"></script>
</body>
</html>