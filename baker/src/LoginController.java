package controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBeans.Admin;
import javaBeans.Customer;
import daoclasses.RetrieveAdminDaoImpl;
import daoclasses.RetrieveCustomerDaoImpl;


public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginController() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		     String role= request.getParameter("role");
		     String loginId = request.getParameter("username"); 
	    	 String pass = request.getParameter("password");
	    	 boolean flag = false;
		     if(role.equals("admin")==true)
		     {
		    	 System.out.println("Login controller");
		    	 boolean flag1 = new RetrieveAdminDaoImpl().retrieveAdmin(loginId, pass);
		    	 System.out.println(flag1);
		    	 if(flag1==true)
		    	 {    
		    		 Admin admin= new Admin();
		    		 admin.setLoginId(loginId);
		    		 admin.setPassword(pass);
		    		 HttpSession session = request.getSession();
		    		 session.setAttribute("AdminName" , loginId);
		    		 RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
		    		 rd.forward(request,response);
		    	 }
		    	 else{
		    		  
		    		  response.sendRedirect("WrongCredentials.jsp");
		    		  
		    	 }
		     }	 
		    	
		     else if(role.equals("user")==true)
		     {    
		    	 System.out.println("Login controller");
		    	 ResultSet rs=new RetrieveCustomerDaoImpl().retrieveCustomerDetails(loginId,pass);
		    	 try {
		    		
					if(rs.next())
					 {	
						
						int id = rs.getInt("ID");
						String firstName=rs.getString("FIRSTNAME");
						
						String lastName= rs.getString("LASTNAME");
						String userName=rs.getString("USERNAME");
						String password= rs.getString("PASSWORD");
						String phoneNumber = rs.getString("PHONENUMBER");
						String emailId=rs.getString("EMAILID");
						String pincode = rs.getString("PINCODE");
						String address= rs.getString("ADDRESS");
						Customer cust = new Customer();
						
						cust.setFirstName(firstName);
						cust.setLastName(lastName);
						cust.setUserName(userName);
						cust.setPassword(password);
						cust.setEmailId(emailId);
						cust.setPhoneNumber(phoneNumber);
						cust.setPincode(pincode);
						cust.setAddress(address);
						
						HttpSession session = request.getSession();
			    		 session.setAttribute("NAME" , firstName);
						RequestDispatcher rd = request.getRequestDispatcher("CustomerHome.jsp");
						System.out.println("hello");
			    		 rd.forward(request,response);
						
					 }
					
					else
					{   
						System.out.println(" If u are a new User plz signUp first");
						
						 RequestDispatcher rd = request.getRequestDispatcher("WrongCredentials.jsp");
			    		  
			    		 rd.forward(request,response);
						
					}
		    	 
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		    	 
		     }
		     
	}

}
