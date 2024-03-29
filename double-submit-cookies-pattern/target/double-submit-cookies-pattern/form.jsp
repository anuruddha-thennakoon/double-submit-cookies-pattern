<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

input[type=submit] {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
}

input[type=submit]:hover {
	background-color: #45a049;
}

.container {
	border-radius: 0px;
	background-color: #f2f2f2;
	padding: 20px;
	margin-left: 25%;
	margin-right: 25%;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.center {
	text-align: center;
}

@media screen and (max-width: 600px) {
	.col-25, .col-75, input[type=submit] {
		width: 100%;
		margin-top: 0;
	}
}
</style>
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.0.3.min.js"></script>
<script>
	$(document).ready(function() {
		var getCookiebyName = function(name){
			var pair = document.cookie.match(new RegExp(name + '=([^;]+)'));
			return !!pair ? pair[1] : null;
		};
		$("#csrf").val(getCookiebyName("CSRFTOKEN"));
	});
</script>

</head>
<body>

	<h2 class="center">Registration Form</h2>

	<div class="container">
		<form action="submit" method="POST">
			<div class="row">
				<div class="col-25">
					<label for="fname">First Name</label>
				</div>
				<div class="col-75">
					<input type="text" name="fname" placeholder="First name">
				</div>
			</div>
			<div class="row">
				<div class="col-25">
					<label for="lname">Last Name</label>
				</div>
				<div class="col-75">
					<input type="text" name="lname" placeholder="Last name">
				</div>
			</div>
			<div class="row">
				<div class="col-25"></div>
				<div class="col-75">
					<input type="hidden" id="csrf" name="csrf">
				</div>
			</div>
			<div class="row">
				<input type="submit" value="Submit">
			</div>
		</form>
	</div>

</body>
</html>