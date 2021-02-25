
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
  <style>
  body{
  background-color: #3e3e3e;
  color: white;
  }
  </style>
<meta charset="UTF-8">
<title>Update Task</title>
</head>
<body>
			<c:forEach items="${tasks}" var="task">
				<tr>
					<td>${task.name}</td>
					<td>${task.description}</td>
					<td> ${task.startDate}</td>
					<td>${task.endDate}</td>
					<td>${task.email}</td>
					<td>${task.severity}</td>
					<td>${task.user.userName}</td>
					<c:choose>
						<c:when test="${task.id == task.id}">
							<td><a href="/update-task/${task.id}"><i
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
     <div class="container">

    <div class="d-flex justify-content-center">
		<div class="d-flex justify-content-center align-items-center ">
			<form:form id="form" class="border border-3 rounded p-4 m-3">
				<h1 class="text-center">Update Task:</h1>
				<p>Please update the details of your task:</p>
				<label for="name" class="mb-1">Task Name:</label>
				<div class="input-group mb-3">

					<input type="text" id="name" name="name" value="${task.name}"
						class="form-control">

				</div>
				<label for="startDate" class="mb-1">Start Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="startDate" name="startDate"
						class="form-control"
						value=pattern = "yyyy-MM-dd" value = "${task.startDate}">
				</div>
				<label for="endDate" class="mb-1">End Date:</label>
				<div class="input-group mb-3">

					<input type="date" id="endDate" name="endDate" class="form-control"
						value="${task.endDate}" >
				</div>
				<label for="description" class="mb-1">Description:</label>
				<div class="input-group mb-3">

					<textarea id="description" name="description" rows="5" cols="33"
						class="form-control">${task.description}</textarea>

				</div>
				<label for="email" class="mb-1">Email:</label>
				<div class="input-group mb-3">

					<input type="text" id="email" name="email" value="${task.email}"
						class="form-control">

				</div>
				<label for="severity" class="mb-1">Severity:</label>
				<div class="input-group mb-2">

					<select name="severity" id="severity" class="form-control">
						<option value="high"
							<c:if test="${task.severity == 'high'}">selected</c:if>>High</option>
						<option value="medium"
							<c:if test="${task.severity == 'medium'}">selected</c:if>>Medium</option>
						<option value="low"
							<c:if test="${task.severity == 'low'}">selected</c:if>>Low</option>
					</select>
				</div>
				<div class="d-flex justify-content-center mt-3">
					<input type="submit" value="Submit">
				</div>
			</form:form>
        </div>
</body>
</html>