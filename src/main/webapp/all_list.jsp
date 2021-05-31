<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>

	<div>
		<%@include file="navbar.jsp"%>
	</div>

	<br>

	<div class="container text-center">
		<h1>All notes are shown here.</h1>
	</div>

	<div class="container">

		<%
			Session session1 = FactoryProvider.getFactory().openSession();
			Query q = session1.createQuery("from Note");
			List<Note> list = q.list();
			session1.close();
		%>

		<%
			int count = 1;
			for (Note note : list) {
				count++;
		%>

		<div class="container mb-2">
			<div class="card">
				<img class="card-img-top" style="max-width: 100px; padding: 5px;" src="image/images.jpg" alt="Card image cap">
				<div class="card-body">
					<h5 class="card-title"><%= note.getTitle() %></h5>
					<p class="card-text"><%= note.getContent() %></p>
					<a href="#" class="btn btn-primary">Update</a>
					<a href="#" class="btn btn-danger">Delete</a>
				</div>
			</div>


		</div>


		<%
			}
		%>

	</div>

</body>
</html>