<%@page import="com.entity.CameraDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@ page import="java.util.*"%>
<%@page import="com.DAO.cameraDAOImpl"%>
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
						<h4 class="text-center">Cập nhật hàng</h4>
						<hr>


						<%
						int id = Integer.parseInt(request.getParameter("id"));
						cameraDAOImpl dao = new cameraDAOImpl(DBConnect.getConn());
						CameraDtls c = dao.getCameraById(id);
						%>


						<form action="../updateCamera" method="post">
							<input type="hidden" name="id" value="<%=c.getCameraId()%>">

							<div class="form-group">
								<label for="exampleInputEmail">Tên Camera</label> <input
									name="cname" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailHelp"
									value="<%=c.getCameraName()%>">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Giá</label> <input name="cprice"
									type="number" class="form-control" id="exampleInputEmail"
									aria-describedby="emailHelp" value="<%=c.getCameraPrice()%>">
							</div>

							<div class="form-group">
								<label for="inputState">Hãng</label> <input id="inputState"
									name="cbrand" class="form-control"
									value="<%=c.getCameraBrand()%>">

							</div>

							<!-- 							<div class="form-group">
								<label for="inputState">Loại Camera</label> <select
									id="inputState" name="ctype" class="form-control">
									<option selected>--chọn--</option>
									<option value="Digital Camera">Digital Camera</option>
									<option value="Popular Camera">Popular Camera</option>
									<option value="Vintage Camera">Vintage Camera</option>
								</select>
							</div> -->


							<div class="form-group">
								<label for="inputState">Trạng thái</label> <select
									id="inputState" name="cstatus" class="form-control">
									<%
									if ("Active".equals(c.getStatus())) {
									%>
									<option value="Active">Còn hàng</option>
									<option value="Inactive">Hết hàng</option>
									<%
									} else {
									%>
									<option value="Inactive">Hết hàng</option>
									<option value="Active">Còn hàng</option>
									<%
									}
									%>

								</select>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary mt-4">Cập
									nhật</button>
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