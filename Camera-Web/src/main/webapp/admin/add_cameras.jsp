<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Thêm Hàng</title>
<%@include file="allCss.jsp"%>
</head>
<body style="background-color: #f0f2f2">
	<%@include file="navbar.jsp"%>
	<div class="container mt-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Thêm Hàng</h4><hr>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>

						<form action="../add_cameras" method="post"
							enctype="multipart/form-data">

							<div class="form-group">
								<label for="exampleInputEmail">Tên Camera</label> <input
									name="cname" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Giá</label> <input name="cprice"
									type="number" class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp">
							</div>

							<div class="form-group">
								<label for="inputState">Hãng</label> <select id="inputState"
									name="cbrand" class="form-control">
									<option selected>--chọn--</option>
									<option value="Digital Camera">Digital Camera</option>
									<option value="Popular Camera">Popular Camera</option>
									<option value="Vintage Camera">Vintage Camera</option>
								</select>
							</div>

							<div class="form-group">
								<label for="inputState">Loại Camera</label> <select
									id="inputState" name="ctype" class="form-control">
									<option selected>--chọn--</option>
									<option value="Digital Camera">Digital Camera</option>
									<option value="Popular Camera">Popular Camera</option>
									<option value="Vintage Camera">Vintage Camera</option>
								</select>
							</div>


							<div class="form-group">
								<label for="inputState">Trạng thái</label> <select
									id="inputState" name="cstatus" class="form-control">
									<option selected>--chọn--</option>
									<option value="Active">Còn hàng</option>
									<option value="Inactive">Hết hàng</option>
								</select>
							</div>

							<div class="form-gourp">
								<label for="exampleFormControlFile1">Tải ảnh lên...</label><input
									name="cimg" type="file" class="form-control-file"
									id="exampleFormControlFile1"></input>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary mt-4">Thêm</button>
							</div>

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 165px"><%@include file="footer.jsp"%></div>
</body>
</html>