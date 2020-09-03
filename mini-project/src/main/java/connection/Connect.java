package connection;


import java.sql.*;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Connect {

	 static Connection con=null;
	public static  Connection dbcon()
	{
		
		
		
		String driver="org.postgresql.Driver";
		String url="jdbc:postgresql://ec2-34-200-101-236.compute-1.amazonaws.com:5432/dfs9n2v4auvav1";
		String user="dwvpbgiyykbnot";
		String pass="97f63975d28168a585839ca7afb0811073caa7a2ff8ac0b6d5c0ef62703f47d8";
		

		
		try {
			Class.forName(driver);
			try {
				con = DriverManager.getConnection(url, user, pass);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return con;
	
	}
}

