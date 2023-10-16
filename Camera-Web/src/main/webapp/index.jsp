<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Camera: Index</title>
<%@include file="all_component/allCss.jsp"%>

<style type="text/css">
.back-img {
	background: url("img/engaged!.png");
	height: 40vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #fcf7f7;
}
</style>

</head>
<body style="background-color: #f7f7f7;">

	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-img">
		<!-- <h2 class="text-center text-danger">Camera Management System</h2> -->
	</div>
	


	<!-- Start Popular Camera -->
	<div class="container ">
		<h3 class="text-center">Popular Camera</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="text-center mt-2">
			<a href="" class="bt btn-danger btn-sm text-white">Xem thêm</a>
		</div>

	</div>
	<!-- End Popular Camera -->

	<hr>

	<!-- Start Digital Camera -->
	<div class="container ">
		<h3 class="text-center">Digital Camera</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/Kimire16X.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/Kimire16X.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/Kimire16X.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/Kimire16X.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="text-center mt-2">
			<a href="" class="bt btn-danger btn-sm text-white">Xem thêm</a>
		</div>

	</div>
	<!-- End Digital Camera -->

	<hr>

	<!-- Start Vintage Camera -->
	<div class="container ">
		<h3 class="text-center">Vintage Camera</h3>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="camera/EOS2000D.jpg"
							style="width: 100px; height: 125px" class="img-thumlin">
						<p>EOS2000D</p>
						<p>Categories: new</p>
						<div class="row text-center">
							<a href="" class="btn btn-danger btn-sm ml-3"><i
								class="fa-solid fa-cart-plus"></i> Thêm vào giỏ</a> <a href=""
								class="btn btn-success btn-sm ml-1">Xem</a> <a href=""
								class="btn btn-danger btn-sm ml-1">Mua</a>
						</div>
					</div>
				</div>
			</div>

		</div>

		<div class="text-center mt-2">
			<a href="" class="bt btn-danger btn-sm text-white">Xem thêm</a>
		</div>

	</div>
	<!-- End Vintage Camera -->
	<hr>
	<%@include file="all_component/footer.jsp"%>

</body>
</html>