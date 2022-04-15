<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Job Listed</title>
<%@include file="all_components/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<c:if test="${userobj.role ne 'admin }">
		<:redirect url="Login.jsp" ></:redirect>
	</c:if>

	<%@include file="all_components/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offet-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"> </i>
						
						<% int id=Integer.parseInt(request.getParameter("id"));
						JobDAO dao=new JobDAO(DBConnect.getConn());
						Jobs j=dao.getJobById(id);
						%>
						
						<h5>Edit Jobs</h5>

					</div>      

					<form action="update" method="post">
					
					<input type="hidden" value="<%=j.getId()  %>" name="id" >
					
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title"
								required class="form-control" value="<%=j.getTitle() %>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%=j.getLocation() %>"><%=j.getLocation() %></option>
									<option value="Odisha">Odisha</option>
									<option value="Karnataka">Karnataka</option>
									<option value="Delhi">Delhi</option>
									<option value="Maharastra">Maharastra</option>
									<option value="Tamil Nadu">Tamil Nadu</option>

								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Category</label><select name="category"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
									<option value="Developer">Developer</option>
									<option value="Security">Security</option>
									<option value="Analyst">Analyst</option>
									<option value="Sales">Sales</option>
									<option value="Finance">Finance</option>

								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Status</label><select class="form-control" name="status">
									
									<option class="<%=j.getStatus() %>" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>

						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control" ><%=j.getDescription() %> </textarea>
						</div>
						<button class="btn btn-success">Update Job</button>
					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>