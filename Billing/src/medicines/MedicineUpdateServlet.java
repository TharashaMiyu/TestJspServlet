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
import javax.servlet.http.HttpSession;




@WebServlet("/MedicineUpdateServlet")
public class MedicineUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


    public MedicineUpdateServlet() {
        super();


    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();
		
		Medicines e = new Medicines();
		
		String sid = request.getParameter("medicineId");
		int id = Integer.parseInt(sid);
		
		  String name =request.getParameter("medicineName");  
	      String category =request.getParameter("medicineCategory");  
	      String storebox =request.getParameter("medicineStoreBox");  
	      Double purchaseprice = Double.parseDouble(request.getParameter("medicinePurchasingPrice"));
	      Double sellingprice = Double.parseDouble(request.getParameter("medicineSeellingprice"));	    
	      int qunatity = Integer.getInteger(request.getParameter("medicineQuantity"));  
	      String genericname =request.getParameter("medicineGenericName");  
	      String company =request.getParameter("medicineCompanyName");  
	    
		
		
	      	e.setName(name);
			e.setCategory(category);
			e.setStoredBoxes(storebox);
			e.setPharchaseprice(purchaseprice);
			e.setSelingPrice(sellingprice);
			e.setQuantity(qunatity);
			e.setGenericName(genericname);
			e.setCompany(company);
			

		int status = MedicinesDao.update(e);
		
		if (status > 0) {
			String sucessmsg = "success message";
			request.setAttribute("bee", sucessmsg);
			request.getRequestDispatcher("medicine_update.jsp").forward(request, response);
		}
		 else {
				session.setAttribute("updated_Guest", null);
				out.print("<div class='alert alert-danger' role='alert'>" + "Record not saved!" + "</div>");
			}
	      
		out.close();
			
		}

}
