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

<title>View & Delete Medicines</title>

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

					<h3>View Medicines</h3>

					<a href='medicine_add.jsp'>Add New medicines</a> <br>

					<%
						List<Medicines> list = MedicinesDao.getAllMedicines();
					%>
					

					<br>
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Name</th>
								<th scope="col">Category</th>
								<th scope="col">Store Box</th>
								<th scope="col">Purchase price</th>
								<th scope="col">Selling price</th>
								<th scope="col">Quantity</th>
								<th scope="col">Generic Name</th>
								<th scope="col">Company</th>
								<th scope="col">Edit</th>
								<th scope="col">Delete</th>

							</tr>
						</thead>
						<tbody>

							<%
								for (Medicines e : list) {
							%>
							<tr>

								<td><%=e.getName()%></td>
								<td><%=e.getCategory()%></td>
								<td><%=e.getStoredBoxes()%></td>
								<td><%=e.getPharchaseprice()%></td>
								<td><%=e.getSelingPrice()%></td>
								<td><%=e.getQuantity()%></td>
								<td><%=e.getGenericName()%></td>
								<td><%=e.getCompany()%></td>
								

								<td>
									<a href='medicine_update.jsp?id=<%=e.getName()%>'>edit 
									<img src="images/edit.png" alt="" border=3 height=20 width=20 style="float: center; margin-right: 0.5em">
									</a>
								</td>

								<td>
									<a href='MedicineDeleteServlet?id=<%=e.getName()%>'>delete
										<img src="images/delete.png" alt="" border=3 height=20 width=20 style="float: center; margin-right: 0.5em">
									</a>
								</td>
								
							</tr>
							<tr>



								<%
									}
								%>
							
						</tbody>
					</table>
 
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
