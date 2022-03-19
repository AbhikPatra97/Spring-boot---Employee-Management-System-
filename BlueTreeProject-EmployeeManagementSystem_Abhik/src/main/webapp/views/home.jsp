<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<title>BlueTree Employee Management System</title>
</head>


<body>
	<form>
		<div class="container-fluid">


			<div class="row">
				<nav class="navbar navbar-expand-lg navbar-light bg-light">
					<div class="container-fluid">
						<a class="navbar-brand" href="#"> <img
							src="https://www.bluetree.in/wp-content/uploads/2016/05/BT_logo1.png"
							alt="" width="60" height="30"
							class="d-inline-block align-text-top">BlueTree
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
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/">Home</a></li>
								<li class="nav-item"><a class="nav-link" href="/addEmp">Add
										Employee</a></li>
							</ul>
						</div>
					</div>
				</nav>
			</div>

			<div class="container-fluid">
				<table
					class="table table-bordered border-primary">
					<thead>
						<tr>
							<th scope="col">Id</th>
							<th scope="col">Name</th>
							<th scope="col">Email Id</th>
							<th scope="col">Date of Birth</th>
							<th scope="col">Age</th>
							<th scope="col">Salary</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${data}" var="d">
							<tr>
								<td>${d.getId()}</td>
								<td>${d.getName()}</td>
								<td>${d.getEmail()}</td>
								<td>${d.getDob()}</td>
								<td>${d.getAge()}</td>
								<td>${d.getSalary()}</td>
								<td><c:choose><c:when test="${d.isStatus() == true}">Active</c:when> 
								<c:otherwise>Inactive</c:otherwise></c:choose></td>
								<td>
									<div class="btn-group" role="group" aria-label="Basic example">
										<a href="/updateEmp/${d.getId()}" button type="button"
											class="btn btn-primary">Update
											</button>&nbsp&nbsp
										</a> <br> <a href="/delete/${d.getId()}" button type="button"
											class="btn btn-secondary">Delete
											</button>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>


		</div>

		<!-- Optional JavaScript; choose one of the two! -->

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
			crossorigin="anonymous"></script>

		<!-- Option 2: Separate Popper and Bootstrap JS -->
		<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
	</form>
</body>
</html>