package connection;

import java.sql.Connection;
import java.sql.DriverManager;


public class DataBaseConnection {
	Connection con = null;
	public Connection createConnection()
	{
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
	        
			System.out.println("Driver established connection");

			con = DriverManager.getConnection("jdbc:oracle:thin:@172.16.153.233:1521:xe","user2","techm123");
			System.out.println("Connection to database established successfully");
	}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println(" Error Connecting with database");
		}

		return con;
		
}

}

