<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: home</title>
<%@include file="allCss.jsp"%>

<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>


</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container">
		<div class="row p-5">

			<div class="col-md-3">
				<a href="add_cameras.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-3x text-primary"></i><br>
							<h4>Thêm</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_cameras.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-camera fa-3x text-danger"></i><br>
							<h4>Tất cả</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="order_cameras.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-cart-shopping fa-3x text-warning"></i><br>
							<h4>Đặt Hàng</h4>
							-----------
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="all_cameras.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-right-from-bracket fa-3x text-success"></i><br>
							<h4>Thoát</h4>
							-----------
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	<div style="margin-top: 481px"><%@include file="footer.jsp"%></div>

</body>
</html>