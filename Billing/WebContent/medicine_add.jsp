<!DOCTYPE html>

<%@page import="connections.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<html lang="en">


<%
	ResultSet resultset = null;
	ResultSet rs = null;
%>


<head>

<!-- #9999ff -->

<link rel="stylesheet" type="text/css" href="css/All.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<script type="text/javascript" src="js/clock.js"></script>


<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Add Medicines</title>

</head>

<body>
<body onload="startTime()">

	<div class="d-flex" id="sidebar-wrapper">

		<!-- Sidebar -->
		<jsp:include page="_sidebar.jsp"></jsp:include>
	
		<!-- Page Content -->
		<div class=container-fluid>
			<div id="content">
				<jsp:include page="_navbar.jsp"></jsp:include>

				<div class="container">
					<form class="forms" action="MedicinesAddServlet" method="post">
				
				
						<%
						if (null != session.getAttribute("Successed")) {
						%>

						<div class="alert alert-success" role="alert">Medicine add Successfully..</div>

						<%
						}else if (null != session.getAttribute("error")) {
						%>

						<div class="alert alert-danger" role="alert">Cannot add the medicine..</div>

						<%
						}
						%>
				
						<br><br>
						<h3 style="color:black;">Add Medicines </h3>
						<br><br>
						
						<div class="row">
							<div class="col-75">
								<input type="text" name="medicineName" placeholder="Enter Name.." required>
							</div>
						</div>


						<div class="row">
							<div class="col-75">
								<input type="text" name="medicineCategory" placeholder="Enter category.." required>
							</div>
						</div>



						<div class="row">
							<div class="col-75">
								<select name="medicineBoxType" required>
									<option value="" disabled selected>Medicine Stored Box Type</option>
									<option>Box A 1</option>
									<option>Box A 2</option>
									<option>Box A 3</option>
									<option>Box B 1</option>
									<option>Box B 2</option>
									<option>Box B 3</option>
								</select>
							</div>
						</div>


						<div class="row">
							<div class="col-75">
								<input type="text" name="medicinePharchasePrice" placeholder="Enter pharchase price" style='width: 49.5%' required> 
								<input type="text" style='width: 49.5%' name="medicineSellingPrice" placeholder="Enter Selling price" required>
							</div>
						</div>

						<div class="row">
							<div class="col-75">
								<input type="text" name="medicineQuantity" placeholder="Enter Quantity.." required>
							</div>
						</div>



						<div class="row">
							<div class="col-75">
								<input type="text" name="medicineGenericName" placeholder="Enter Generic Name.." required>
							</div>
						</div>


						<div class="row">
							<div class="col-75">
								<input type="text" name="medicineCompany" placeholder="Enter Company" required>
							</div>
						</div>



							<div class="row" style="float: right">
								<div class="col-75">
									<input type="submit" value="Add medicine details">					
									<input type="reset" value="Clear">
								</div>
							</div>
								
							
							
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- /#page-content-wrapper -->


	<footer class="footer" style="background-color: #464646; z-index: 150; position: relative; margin-left: -15px; height: 40px; width: 103%;">
		<div class="container-fluid">
			<ul class="navbar-nav ml-auto mt-2 mt-lg-0">
				<li class="nav-link" style="text-color: #fff; text-align: center">
				<font color="#fffff">SLIIT</font>
				</li>
			</ul>
		</div>
	</footer>



	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
		$("#menu-toggle").click(function(e) {
			e.preventDefault();
			$("#wrapper").toggleClass("active");
		});

		$(document).ready(function() {

			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});

		});

		var dropdown = document.getElementsByClassName("dropdown-btn");
		var i;

		for (i = 0; i < dropdown.length; i++) {
			dropdown[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var dropdownContent = this.nextElementSibling;
				if (dropdownContent.style.display === "block") {
					dropdownContent.style.display = "none";
				} else {
					dropdownContent.style.display = "block";
				}
			});
		}
		
		window.history.forward();
        function noBack()
        {
            window.history.forward();
        }
	</script>



</body>

</html>
