<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dtb login</title>
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/3.18.1/build/cssreset/cssreset-min.css">
<link rel="stylesheet" type="text/css" href="../css/dtb.css">
</head>
<body>
	<section class="login-form">
	<form action="login" method="post" name="goLoginForm">
		<div class="login">
			<h1>Login</h1>
			<div class="idpw">
				<label for="id">ID</label>
				<input type="text" id="id">
			</div>
			<div class="idpw">
				<label for="pw">PW</label>
				<input type="password" id="pw">
			</div>
			<div class="sign">
				<button type="submit">Sign in</button>
			</div>
			<div class="fotgot">
				<a href="#">Forgot your password?</a>
			</div>
			<div class="login-type">
				<a class="btn btn1" href=""></a>
				<a class="btn btn1" href=""></a>
				<a class="btn btn1" href=""></a>
				<a class="btn btn1" href=""></a>
			</div>
		</div>
	</form>
	</section>
</body>
</html>