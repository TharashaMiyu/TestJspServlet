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

@WebServlet("/MedicineViewServlet")
public class MedicineViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public MedicineViewServlet() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		HttpSession session = request.getSession();

		String name = request.getParameter("search");
		
		Medicines e = MedicinesDao.getMedicineByName(name);
		
		String cno = name;

		String x = "this is wrong";

		String SID = e.getName();

		if (cno == null) {
			request.setAttribute("wrong", x);
			request.getRequestDispatcher("medicine_update.jsp").forward(request, response);
			System.out.println("Data not Retrieved");

		} else if (SID == name) {

			String mname = e.getName();
			String mcategory = e.getCategory();
			String mbox = e.getStoredBoxes();
			Double purchase = e.getPharchaseprice();
			Double selling = e.getSelingPrice();
			int quantity = e.getQuantity();
			String genericname = e.getGenericName();
			String company = e.getCompany();
			

			String xString = name;

			e.setName(mname);
			e.setCategory(mcategory);
			e.setStoredBoxes(mbox);
			e.setPharchaseprice(purchase);
			e.setSelingPrice(selling);
			e.setQuantity(quantity);
			e.setGenericName(genericname);
			e.setCompany(company);
			

			request.getRequestDispatcher("medicine_update.jsp").forward(request, response);

			System.out.println("Data Retrieved from medicine table ");

		} else {
			request.setAttribute("wrong", x);
			request.getRequestDispatcher("medicine_update.jsp").forward(request, response);
			System.out.println("Data not Retrieved");
		}
		out.close();
	}

}
