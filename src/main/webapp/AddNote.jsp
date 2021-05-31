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

						<form id= "reg-form" action="SaveServlets" method="post">
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
							
							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>

							</div>

						</form>


					</div>


				</div>
			</div>
		</div>
	</div>


	<!-- <script>
		
	 $(document).ready(function () {
         
         
         $('#reg-form').on('submit', function (event) {
             event.preventDefault();
             let form = new FormData(this);

             $.ajax({
                 url: "SaveServlets",
                 type: "POST",
                 data: form,
                 success: function (data, textStatus, jqXHR) {
                     console.log(data);
                    
                     swal("Good job!", "Your data has been saved!", "success");
                         
                     
                 },
                 error: function (jqXHR, textStatus, errorThrown) {
                     console.log(jqXHR);
                 },
                 processData: false,
                 contentType: false
             });

         })


     });
	
	</script> -->
</body>
</html>