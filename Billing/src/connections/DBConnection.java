package connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection() {
		Connection con = null;
		String url = "jdbc:mysql://localhost:3306/hospitaldb";
		String username = "Tharasha";
		String password = "root";

		try {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection(url, username, password);
				
				if (con != null)
					System.out.println("connection success");
								

				} 
			catch (ClassNotFoundException e) 
				{
				System.out.println("fail 1");
				e.printStackTrace();
				}

			}
		
		catch (Exception e) 
		{
			System.out.println("fail 2");
			e.printStackTrace();
		}
		
		return con;
	}
	
//	
//	public static void main(String[] args) 
//	{
//		DBConnection conn = new DBConnection();
//		conn.getConnection();
//	}
}
