<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>Employee Form</title>
</head>
<body>
	
		<div class="container-fluid">


			<div class="row">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="container-fluid">
						<a class="navbar-brand" href="#"> <img
							src="https://www.bluetree.in/wp-content/uploads/2016/05/BT_logo1.png"
							alt="" width="60" height="30"
							class="d-inline-block align-text-top"> BlueTree
						</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="btn btn-primary"
									aria-current="page" href="/">Home</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>

			<div class="row">
				<br> <br>
				<h1 class="btn btn-primary">Update Employee Information</h1>
				<br> <br>
			</div>
<form action="/update" method="post">
			<div class="row">
			 <input
						type="hidden" class="form-control" id="id" name="id"
						value="${data.getId()}">
				<div class="col-md-6 offset-md-3">
					<label for="name" class="form-label">Name</label> <input
						type="text" class="form-control" id="name" name="name"
						value="${data.getName()}" required>
				</div>
				<div class="col-md-6 offset-md-3">
					<label for="email" class="form-label">Email Id</label> <input
						type="email" class="form-control" id="email" name="email"
						value="${data.getEmail()}" required>
				</div>
				<div class="col-md-6 offset-md-3">
					<label for="dob" class="form-label">Date of Birth</label> <input
						type="date" class="form-control" id="dob" min="1962-04-01" max="2004-04-01" value="${data.getDob()}" name="dob" onchange="getAge()" required>
				</div>
				<div class="col-md-6 offset-md-3">
					<label for="age" class="form-label">Age</label> 
					 <input
						type="hidden" name="age" class="form-control" id="age"
						value="${data.getAge()}">
					<input
						type="text" name="age1" class="form-control" id="age1"
						value="${data.getAge()}" required disabled>
				</div>
				<div class="col-md-6 offset-md-3">
					<label for="salary" class="form-label">Enter Salary</label> <input
						type="number" class="form-control" name="salary" id="salary" step="any"
						value="${data.getSalary()}" required>
				</div>
				<div class="col-md-6 offset-md-3">
					<label class="form-label" for="autoSizingSelect">Employee
						Status ::- </label> <select class="form-select" name="status" id="status" required>
						<option value="1"><c:if test="${data.isStatus() == true}">
																	<c:out>Active</c:out></c:if></option>
								<option value="0"><c:if test="${data.isStatus() == false}"><c:out>Inactive</c:out></c:if></option>
						<!-- <option value="1">Active</option>
						<option value="0">Inactive</option> -->
					</select> <br> <br>
				</div>
			</div>

			
				<br>
				<center>
				<button type="submit" class="btn btn-primary">Save Employee</button>
				</center>
				</form>

		</div>
	<script type="text/javascript">
	function getAge() {
		   var ageInMilliseconds = new Date() - new Date(document. getElementById('dob'). value);
		   var age = Math.floor(ageInMilliseconds/1000/60/60/24/365);
		   console.log(age);
		   document.getElementById("age").setAttribute('value',age);
		   document.getElementById("age1").setAttribute('value',age);
		   // convert to years
		}
	</script>
	
</body>
</html>