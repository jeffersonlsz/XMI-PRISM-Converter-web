<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<title>Upload</title>
</head>
<body>
	<div class="bs-component">
		<nav class="navbar navbar-expand-lg navbar-light bg-light"> <a
			class="navbar-brand" href="#">Navbar</a>
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
				<li class="nav-item"><a class="nav-link" href="#">Features</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Pricing</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About</a></li>
			</ul>

		</div>
		</nav>
	</div>
    
	
	<div class="bs-component">
		<div class="alert alert-dismissible alert-warning">
			<pre>
				<code>${requestScope.outputxtp}</code>
			</pre>
		</div>
	</div>    
	
	<div class="bs-component">
		<div class="jumbotron">
			<pre>
				<code>${requestScope.prism}</code>
			</pre>
		</div>
	</div>

	<div class="form-group">
		<button onclick="goBack()" type="submit"
			class="btn btn-primary pull-right">Go back</button>
	</div>

	<script>
		function goBack() {
			window.history.back();
		}
	</script>
</body>
</html>