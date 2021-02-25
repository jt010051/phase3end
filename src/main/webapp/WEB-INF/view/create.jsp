<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create/Update New Task</title>
</head>
<body>
<p>Please enter the details of your task:</p>

<form method="post">
    <label for="task">Task Name:</label>
    <input type="text" id="task" name="task"><br><br>
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
    <label for="username">User Name:</label>
    <input type="text" id="username" name="username"><br><br>
    <input type="submit" value="Submit"><br><br>
    <input type="reset" value="Reset"><br><br>

</form>
</body>
</html>