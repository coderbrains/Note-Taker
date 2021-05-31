<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note Here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
	</div>

	<div class="container mt-5">

		<div class="row">
			<div class="col md-12">

				<div class="card">

					<div class="card-body">

						<form action="SaveServlets" method="post">
							<div class="form-group">
								<label for="title">Enter Title</label> <input name="title"
									required="required" type="text" class="form-control" id="title"
									aria-describedby="emailHelp" placeholder="Enter Title">
								<small id="emailHelp" class="form-text text-muted">Try
									to give appropriate title .</small>
							</div>
							<div class="form-group">
								<label for="notecontent">Note Content</label>
								<textarea rows="10" required="required" class="form-control"
									id="content" name="content"
									placeholder="Enter the content related to the title."></textarea>
							</div>
							<div class="form-check">
								<input required="required" type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Check me out</label>
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>

							</div>

						</form>


					</div>


				</div>
			</div>
		</div>
	</div>

</body>
</html>