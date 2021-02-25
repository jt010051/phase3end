<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Tasks</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet" crossorigin="anonymous">
  <style>
  body{
  background-color: #3e3e3e;
  color: white;
  }
  </style>
</head>
<body>
<div class="d-flex justify-content-center vh-100">
		<div class="d-flex justify-content-center align-items-center ">
			<form th:action="@{/register}" method="POST"id="form" class="border border-3 rounded p-4">
				<h1 class="text-center">Sign Up:</h1>
				<p>Please enter a username, email and password:</p>
				<div class="input-group mb-3">

					<input type="text" id="userName" name="userName"
						placeholder="Enter a username" class="form-control">

				</div>
			
				<div class="input-group mb-2">

					<input type="password" id="password" name="password"
						placeholder="Enter a password" class="form-control">
				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
				<div class="text-center text-danger">${error}</div>
				
			</form>
		</div>

	</div>
</body>
</html>