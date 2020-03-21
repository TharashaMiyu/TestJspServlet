package medicines;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MedicinesAddServlet")
public class MedicinesAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public MedicinesAddServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 response.setContentType("text/html");  
	     
		 PrintWriter out=response.getWriter();  
	        
	     Medicines e = new Medicines();
	        
	        
		  String name = request.getParameter("medicineName");  
		  System.out.println("medicine name : "+name);
	      String category = request.getParameter("medicineCategory"); 
	      System.out.println("medicine category : "+category);
	      String storebox = request.getParameter("medicineBoxType");  
	      System.out.println("medicine box : "+storebox);
	      Double purchaseprice = Double.parseDouble(request.getParameter("medicinePharchasePrice"));
	      System.out.println("medicine purchase price : "+purchaseprice);
	      Double sellingprice = Double.parseDouble(request.getParameter("medicineSellingPrice"));	    
	      System.out.println("medicine selling price : "+sellingprice);
	      int qunatity = Integer.parseInt(request.getParameter("medicineQuantity"));  
	      System.out.println("medicine quantity : "+qunatity);
	      String genericname = request.getParameter("medicineGenericName");  
	      System.out.println("medicine generic name : "+genericname);
	      String company =request.getParameter("medicineCompany");  
	      System.out.println("medicine company : "+company);
	    
	    
	             
	          e.setName(name);
	          e.setCategory(category);
	          e.setStoredBoxes(storebox);
	          e.setPharchaseprice(purchaseprice);
	          e.setSelingPrice(sellingprice);
	          e.setQuantity(qunatity);
	          e.setGenericName(genericname);
	          e.setCompany(company);
	      
	          
	       
	        int status = MedicinesDao.save(e);
	        
	        if(status>0)
	        {  
	        	out.print("<div class='alert alert-success' role='alert'>" + "Record saved successfully!" +"</div>"); 
	            request.getRequestDispatcher("medicine_update.jsp").include(request, response);  
	        }
	        else
	        {  
	            out.println("Sorry! unable to save record");  
	        }  
	          
	        out.close();  
		
	}

}
