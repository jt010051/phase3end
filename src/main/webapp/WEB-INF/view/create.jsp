<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create New Task</title>
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
<p>Please enter the details of your task:</p>

<form method="post">
    <label for="name">Task Name:</label>
    <input type="text" id="name" name="name"><br><br>
    <label for="startDate">Start Date:</label>
    <input type="date" id="startDate" name="startDate"><br><br>
    <label for="endDate">End Date:</label>
    <input type="date" id="endDate" name="endDate"><br><br>
    <label for="description">Description:</label>
    <textarea id="description" name="description" rows="4" cols="50">

    </textarea><br><br>
    <label for="email">Email:</label>
    <input type="text" id="email" name="email"><br><br>
    <label for="severity">Severity:</label>
    <select name="severity" id="severity">
        <option value="high">High</option>
        <option value="medium">Medium</option>
        <option value="low">Low</option>
    </select> <br><br>
    <label for="userName">User Name:</label>
    <input type="text" id="userName" name="userName"><br><br>
    <input type="submit" value="Submit"><br><br>
    <input type="reset" value="Reset"><br><br>

</form>
</body>
</html>