<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<%@include file="all_components/all_css.jsp"%>

<style type="text/css">
.back-img {
	background: url("image/adminPic.jpg");
	height: 90vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body>
	<c:if test="${userobj.role ne 'admin }">
		<:redirect url="Login.jsp" ></:redirect>
	</c:if>

	<%@include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text-white p-4">Welcome Admin</h1>
		</div>
	</div>
</body>
</html>