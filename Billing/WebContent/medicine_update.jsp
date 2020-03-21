<!DOCTYPE html>
<%@page import="medicines.MedicinesDao"%>
<%@page import="medicines.Medicines"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@page import="java.util.List"%>



<html lang="en">

<%
	ResultSet resultset = null;
	ResultSet rs = null;
%>

<%
	
	String name = (String)request.getAttribute("mname");

	String err = (String) request.getAttribute("wrongs");

	String succ = (String) request.getAttribute("successfuled");

	Medicines g = MedicinesDao.getMedicineByName(name);

	String bee = (String) request.getAttribute("bee");

	System.out.println("bee :" + bee);

	
%>
<head>

<!-- #9999ff -->

<link rel="stylesheet" type="text/css" href="css/All.css">
<link rel="stylesheet" type="text/css" href="css/register.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


<script type="text/javascript" src="js/clock.js"></script>


<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Update Medicines</title>

</head>

<body>
<body onload="startTime()">



	<div class="d-flex" id="sidebar-wrapper">

		<!-- Sidebar -->

		<jsp:include page="_sidebar.jsp"></jsp:include>
		<!-- /#sidebar-wrapper -->

		<!-- Page Content -->
		<div class=container-fluid>
			<div id="content">
				<jsp:include page="_navbar.jsp"></jsp:include>


				<div class="container">

					<!-- /#Type Body Here -->

					<br>
					<%
						if (err != null) {
					%>
					<br>
					<div class='alert alert-danger' role='alert'>Content is not in the list..</div>

					<%
						} else if (succ != null) {
					%>

					<div class='alert alert-success' role='alert'>Medicine Updated successfully..</div>

					<%
						}
					%>


					<form action="MedicineViewServlet" method="post">

						<h3>Update Medicine</h3>

						<br><br><br>
						<div class="row">

							<div class="col-25">
								<p>
									<b><b>Search</b></b>
								</p>
							</div>

							<div class="col-50">
								<%
									if (g.getName() == null) {
								%>
								<input type="search" name="search" required class="search" value="" placeholder="Search id" style="margin-right: 16px;">
								<%
									} else {
								%>
								<input type="search" name="search" required class="search" value="medicine_id" placeholder="Search id" style="margin-right: 16px;">
								<%
									}
								%>
							</div>
							<br>
							<div class="col-25">
								<button type="submit" name="search" style="float: left; margin-left: 16px; text-align: center;" class="btn btn-primary">Search</button>
							</div>

						</div>
					</form>
					
					<br><br>	<br><br><br>
					
					
					<form action="MedicineUpdateServlet" method="post">
					
					
					
						<div class="row">
							<div class="col-25">
								<p><b><b>Name of the medicine</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicineName" required placeholder="Name of the medicine...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getName()%>" name="medicineName" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Category of the medicine</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text"  value="" name="medicineCategory" required placeholder="Category of the medicine...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getCategory()%>" name="medicineCategory" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Storing box type</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value=">" name="medicineStoreBox" required placeholder="Storing box type...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getStoredBoxes()%>" name="medicineStoreBox" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Purchasing price</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicinePurchasingPrice" required placeholder="Phurchasing price...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getCompany()%>" name="medicinePurchasingPrice" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Selling price</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName()== null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicineSeellingprice" required placeholder="Selling price...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getSelingPrice()%>" name="medicineSeellingprice" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Quantity of the medicine</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicineQuantity" required placeholder="Quantity of the medicine...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getQuantity()%>" name="medicineQuantity" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Generic Name</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicineGenericName"  required placeholder="Generic Name...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getGenericName()%>" name="medicineGenericName" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
						
						<div class="row">
							<div class="col-25">
								<p><b><b>Company Name</b></b></p>
							</div>
							<div class="col-65">
								<div class="input-group mb-3">
									<%
										if (g.getName() == null) {
									%>
									<div class="input-group-prepend">
										<input type="text" value="" name="medicineCompanyName" required placeholder="Company Name...">
									</div>
									<%
										} else {
									%>
									<div class="input-group-prepend">
										<input type="text" value="<%=g.getCompany()%>" name="medicineCompanyName" required placeholder="">
									</div>
									<%
										}
									%>
								</div>
							</div>
						</div>
						
				
						<div class="row">
							<div class="col-25">
							</div>
							<div class="col-65">
								<input type="submit" class="btn btn-secondary" value="Update Guest">
							</div>
						</div>


					</form>

				</div>

			</div>

		</div>



	</div>


	<!-- /#page-content-wrapper -->

	<footer class="footer"
		style="background-color: #464646; z-index: 150; position: relative; margin-left: -15px; height: 40px; width: 103%;">
		<div class="container-fluid">

			<ul class="navbar-nav ml-auto mt-2 mt-lg-0">

				<li class="nav-link" style="text-color: #fff; text-align: center"><font
					color="#fffff">SLIIT</font></li>
			</ul>

		</div>
	</footer>




	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Menu Toggle Script -->
	<script>
	
	$(function () {
		  $('[data-toggle="popover"]').popover()
		});
	
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
		function noBack() {
			window.history.forward();
		}
	</script>
	<script>
		var today = new Date().toISOString().split('T')[0];

		document.getElementsByName("dobirth")[0].setAttribute('max', today);

		function yesnoCheck() {
			if (document.getElementById('yesChecks').checked) {
				document.getElementById('ifYess').style.visibility = 'visible';
			} else
				document.getElementById('ifYess').style.visibility = 'hidden';

		}
	</script>



</body>

</html>
