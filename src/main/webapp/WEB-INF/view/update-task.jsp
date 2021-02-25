
    
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
     <div class="container">

    <form th:action="@{/update}">

<p>

          <label for="Task-id" class="sr-only">Enter task id to update</label>
          <input type="text" id="taskid" name="taskid" class="form-control" placeholder="Task-id" required="" autofocus="">
        </p>
           <button class="btn btn-lg btn-primary btn-block" type="submit">Next</button>
        </form>
        </div>
</body>
</html>