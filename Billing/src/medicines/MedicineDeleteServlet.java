package medicines;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MedicineDeleteServlet")
public class MedicineDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MedicineDeleteServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();  
		 
		String sid = request.getParameter("id");  
		int id=Integer.parseInt(sid);  
       
		MedicinesDao.delete(id);
       
		out.print("<div class='alert alert-danger' role='alert'>" + "Record Deleted successfully!" +"</div>"); 
		
        request.getRequestDispatcher("machine_view.jsp").include(request, response); 
	}

	

}
