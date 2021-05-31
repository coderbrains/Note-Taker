package com.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;


public class SaveServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		Note note = new Note(title, content, new Date());
		
		//saving data to the database using hibernate
		
		Session session = FactoryProvider.getFactory().openSession();
		Transaction tr = session.beginTransaction();
		
		
		session.save(note);
		
		tr.commit();
		session.close();
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<div'>"
				+ "<h1>Successfully added...</h1>"
				+ "</div>");
		
		out.println("<h1><a href = 'all_list.jsp'>View All list</h1>");
		
	}

}
