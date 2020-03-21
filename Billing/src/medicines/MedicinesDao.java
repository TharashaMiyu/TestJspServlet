package medicines;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connections.DBConnection;

public class MedicinesDao {

	
	 public static int save(Medicines e){  
	      
		 int status=0; 
	        
	        try{  
	            Connection con = DBConnection.getConnection(); 
	            
	            PreparedStatement ps = con.prepareStatement("insert into medicinetable(MedicineName,MedicineCategory,MedicineStoredBox,MedicinePharchasePrice,MedicineSellingPrice,MedicineQuantity,MedicineGenericName,MedicineCompany) values (?,?,?,?,?,?,?,?)");  
	             
	            ps.setString(1,e.getName());
				ps.setString(2,e.getCategory());
				ps.setString(3,e.getStoredBoxes());
				ps.setDouble(4,e.getPharchaseprice());
				ps.setDouble(5,e.getSelingPrice());
				ps.setInt(6,e.getQuantity());
				ps.setString(7,e.getGenericName());
				ps.setString(8,e.getCompany());
			    
	            status = ps.executeUpdate();  
	           	            	              
	            con.close(); 
	        	}
	        
	        catch(Exception ex){
	        	ex.printStackTrace();
	        	}  
	          
	        return status;  
	    }   
	
	 
	public static int update(Medicines e) {
		
		int status = 0;

		try {
			
			Connection con = DBConnection.getConnection();
					
			PreparedStatement ps = con.prepareStatement("update medicinetable set MedicineName=?,MedicineCategory=?,MedicineStoredBox=?,MedicinePharchasePrice=?,MedicineSellingPrice=?,MedicineQuantity=?,MedicineGenericName=?,MedicineCompany=? where MedicineID=?");  

			ps.setString(1,e.getName());
			ps.setString(2,e.getCategory());
			ps.setString(3,e.getStoredBoxes());
			ps.setDouble(4,e.getPharchaseprice());
			ps.setDouble(5,e.getSelingPrice());
			ps.setInt(6,e.getQuantity());
			ps.setString(7,e.getGenericName());
			ps.setString(8,e.getCompany());
			
	
			status = ps.executeUpdate();

			con.close();
			}
		
		catch (Exception ex) {
			ex.printStackTrace();
			}

		return status;
	}

	
	
	public static int delete(int id){  
		
        int status=0;  
        
        try{  
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("delete from medicinetable where MedicineID=?");  
            
            ps.setInt(1,id);
     
            status = ps.executeUpdate();  
              
            con.close();  
        	}
        catch(Exception e){
        	e.printStackTrace();}  
          
        return status;  
    }  

	
	public static Medicines getMedicineByName(String name) {
		
		Medicines e = new Medicines();

		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps = con.prepareStatement("select * from medicinetable where MedicineID;");
			
			ps.setString(1, name);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
		
				e.setName(rs.getString(1));
				e.setCategory(rs.getString(2));
				e.setStoredBoxes(rs.getString(3));
				e.setPharchaseprice(rs.getDouble(4));
				e.setSelingPrice(rs.getDouble(5));
				e.setQuantity(rs.getInt(6));
				e.setGenericName(rs.getString(7));
				e.setCompany(rs.getString(8));
		
				
			}
			con.close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}

		return e;
	}
	
	
	
	
	 public static List<Medicines> getAllMedicines(){  
	        List<Medicines> list = new ArrayList<Medicines>();  
	          
	        try{  
	            Connection con = DBConnection.getConnection();  
	            PreparedStatement ps = con.prepareStatement("select * from medicinetable ORDER BY medicineID ASC;");  
	            ResultSet rs = ps.executeQuery();  
	            while(rs.next()){  
	               Medicines e = new Medicines();  
	                               
	                e.setName(rs.getString(1));
					e.setCategory(rs.getString(2));
					e.setStoredBoxes(rs.getString(3));
					e.setPharchaseprice(rs.getDouble(4));
					e.setSelingPrice(rs.getDouble(5));
					e.setQuantity(rs.getInt(6));
					e.setGenericName(rs.getString(7));
					e.setCompany(rs.getString(8));
				
					
	                list.add(e);  
	            }  
	            con.close();  
	        	}
	        catch(Exception e){
	        	e.printStackTrace();
	        	}  
	          
	        return list;  
	    }
	 
	 
}
