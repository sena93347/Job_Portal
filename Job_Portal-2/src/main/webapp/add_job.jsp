<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_components/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2;">
	<%@include file="all_components/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offet-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"> </i>
						<c:if test="${not  empty succMsg }">
							<div class="alert alert-success" role="alert">${ succMsg}</div>
							<c:remove var="succMsg" />
						</c:if>

						<h5>Add Jobs</h5>

					</div>

					<form action="addJob" method="post">
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title"
								required="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label><select name="Location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose</option>
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
									<option selected>Choose</option>
									<option value="Developer">Developer</option>
									<option value="Security">Security</option>
									<option value="Analyst">Analyst</option>
									<option value="Sales">Sales</option>
									<option value="Finance">Finance</option>

								</select>
							</div>

							<div class="form-group col-md-4">
								<label>Status</label><select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>

						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>

				</div>
			</div>
		</div>
	</div>

</body>
</html>