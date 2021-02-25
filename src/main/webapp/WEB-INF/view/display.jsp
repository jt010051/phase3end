<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
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
<script src="https://kit.fontawesome.com/f8ebbde80f.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	window.setTimeout(function() {
		document.getElementById('alert').style.display = 'none';
	}, 2500);
</script>
</head>
<body class="p-2">

	<c:if test="${param.deleted != null}">
		<div id="alert" class="alert alert-success" role="alert">
			<strong>Success!</strong> Task deleted successfully!
		</div>
	</c:if>

	<div class="d-flex justify-content-between p-2">
		<h1>Welcome! Displaying Tasks Below</h1>

		<form:form action="logout" method="post">
			<input type="submit" class="btn btn-dark" value="Sign Out" />
		</form:form>
	</div>

	<div class="p-2 mb-2">
		<a href="/create"><i
			class="fas fa-plus-square fa-2x text-dark"></i></a>
	</div>

	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">Task Name</th>
				<th scope="col">Description</th>
				<th scope="col">Start Date</th>
				<th scope="col">End Date</th>
				<th scope="col">Email</th>
				<th scope="col">Severity</th>
				<th scope="col">User</th>
				<th scope="col"></th>
				<th scope="col"></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${tasks}" var="task">
				<tr>
					<td>${task.name}</td>
					<td>${task.description}</td>
					<td><${task.startDate}/></td>
					<td><${task.endDate}/></td>
					<td>${task.email}</td>
					<td>${task.severity}</td>
					<td>${task.user.userName}</td>
					<c:choose>
						<c:when test="${task.id == task.id}">
							<td><a href="/update/${task.id}"><i
									style="color: white" class="far fa-edit"></i></a></td>
							<td><a href="/delete-task/${task.id}"><i
									style="color: white" class="fas fa-trash"></i></a></td>
						</c:when>
						<c:otherwise>
							<td></td>
							<td></td>
						</c:otherwise>
					</c:choose>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>