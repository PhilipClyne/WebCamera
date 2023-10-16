<%@page import="com.entity.CameraDtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.*"%>
<%@page import="com.DAO.cameraDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: All Cameras</title>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${not empty succMsg }">
		<p class="text-center text-success">${succMsg }</p>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<p class="text-center text-danger">${failedMsg }</p>
		<c:remove var="failedMsg" scope="session" />
	</c:if>

	<h3 class="text-center">Hello Lorem</h3>
	<br>
	<table class="table table-striped">
		<thead class="bg-dark text-white">
			<tr>
				<th scope="col">Mã</th>
				<th scope="col">Ảnh minh hoạ</th>
				<th scope="col">Tên</th>
				<th scope="col">Giá</th>
				<th scope="col">Hãng</th>
				<th scope="col">Loại</th>
				<th scope="col">Trạng thái</th>
				<th scope="col">Chức năng</th>

			</tr>
		</thead>
		<tbody>
			<%
			cameraDAOImpl dao = new cameraDAOImpl(DBConnect.getConn());
			List<CameraDtls> list = dao.getAllCameras();
			for (CameraDtls c : list) {
			%>
			<tr>
				<th><%=c.getCameraId()%>></th>
				<td><img src="../camera/<%=c.getPhotoName()%>"
					style="width: 50px; height: 50px"></td>
				<td><%=c.getCameraName()%></td>
				<td><%=c.getCameraPrice()%></td>
				<td><%=c.getCameraBrand()%></td>
				<td><%=c.getCameraCategony()%></td>
				<td><%=c.getStatus()%></td>
				<td><a href="update_cameras.jsp?id=<%=c.getCameraId()%>"
					class="btn btn-sm btn-primary">Sửa</a> <a
					href="../delete_cameras?id=<%=c.getCameraId()%>"
					class="btn btn-sm btn-danger">Xoá</a></td>

			</tr>


			<%
			}
			%>


		</tbody>
	</table>
	<div style="margin-top: 333px"><%@include file="footer.jsp"%></div>
</body>
</html>