<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<base href="./">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>Main</title>
<!-- Icons-->
<link
	href="<c:url value = "/assets/lib/@coreui/icons/css/coreui-icons.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value = "/assets/lib/flag-icon-css/css/flag-icon.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value = "/assets/lib/font-awesome/css/font-awesome.min.css"/>"
	rel="stylesheet">
<link
	href="<c:url value = "/assets/lib/simple-line-icons/css/simple-line-icons.css"/>"
	rel="stylesheet">
<!-- Main styles for this application-->
<link href="<c:url value = "/assets/css/style.css"/>" rel="stylesheet">
</head>
<body
	class="app header-fixed sidebar-fixed aside-menu-fixed sidebar-lg-show">
	<!-- Header -->
	<jsp:include page="include/header.jsp"><jsp:param
			name="page" value="index" /></jsp:include>
	<!-- /Header -->

	<div class="app-body">
		<!-- SideBar -->
		<jsp:include page="include/sidebar.jsp"><jsp:param
				name="page" value="index" /></jsp:include>
		<!-- /SideBar -->

		<main class="main"> <!-- Breadcrumb-->
		<ol class="breadcrumb">
			<li class="breadcrumb-item">Home</li>
			<li class="breadcrumb-item active">Dashboard</li>
			<!-- Breadcrumb Menu
          <li class="breadcrumb-menu d-md-down-none">
            <div class="btn-group" role="group" aria-label="Button group">
              <a class="btn" href="#">
                <i class="icon-speech"></i>
              </a>
              <a class="btn" href="./">
                <i class="icon-graph"></i> Â Dashboard</a>
            </div>
          </li>
          -->
		</ol>
		<div class="container-fluid">
			<div class="animated fadeIn">
				<div class="card">
					<div class="card-header">
						<i class="fa fa-align-justify"></i>System Services
					</div>
					<div class="card-body">
						<table
							class="table table-responsive-sm table-bordered table-striped table-sm">
							<thead>
								<tr>
									<th>No</th>
									<th>Service Name</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<!-- ************************ -->
								<tr>
									<td>1</td>
									<td>XRates historical</td>
									<td>Active</td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>XRates latest</td>
									<td>Active</td>
									<td></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Fee rates</td>
									<td>Active</td>
									<td></td>
								</tr>
								<!-- ************************ -->
							</tbody>
						</table>

						<div class="chart-wrapper"
							style="height: 300px; margin-top: 40px;">
							<canvas class="chart" id="main-chart" height="300"></canvas>
						</div>
					</div>
					<div class="card-footer"></div>
				</div>
			</div>
		</div>
		</main>
	</div>

	<!-- Footer -->
	<jsp:include page="include/footer.jsp"><jsp:param
			name="page" value="index" /></jsp:include>
	<!-- Footer -->

	<!-- CoreUI and necessary plugins-->
	<script src="<c:url value = "/assets/lib/jquery/js/jquery.min.js"/>"></script>
	<script src="<c:url value = "/assets/lib/popper.js/js/popper.min.js"/>"></script>
	<script
		src="<c:url value = "/assets/lib/bootstrap/js/bootstrap.min.js"/>"></script>
	<script
		src="<c:url value = "/assets/lib/perfect-scrollbar/js/perfect-scrollbar.min.js"/>"></script>
	<script
		src="<c:url value = "/assets/lib/@coreui/coreui/js/coreui.min.js"/>"></script>
	<!-- Plugins and scripts required by this view-->
	<script src="<c:url value = "/assets/js/main.js"/>"></script>
</body>
</html>