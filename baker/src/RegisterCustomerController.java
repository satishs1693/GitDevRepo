package controllers;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javaBeans.Customer;
import daoclasses.AddCustomerDaoImpl;


public class RegisterCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterCustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName= request.getParameter("FirstName");
		String lastName= request.getParameter("LastName");
		String userName= request.getParameter("UserName");
		String password= request.getParameter("confPassword");
		String emailId= request.getParameter("confEmailId");
		String phoneNumber= request.getParameter("phoneNumber");
		String pincode= request.getParameter("pincode");
		String address= request.getParameter("address");
		Customer cust = new Customer();
	
		
		cust.setFirstName(firstName);
		cust.setLastName(lastName);
		cust.setUserName(userName);
		cust.setPassword(password);
		cust.setEmailId(emailId);
		cust.setPhoneNumber(phoneNumber);
		cust.setPincode(pincode);
		cust.setAddress(address);
		
		
		 AddCustomerDaoImpl aa=new AddCustomerDaoImpl();
		 aa.insertCustomerDetails(cust);
		 System.out.println(" Customer added : RegisterCustomerController");
		 RequestDispatcher rd = request.getRequestDispatcher("bakeryindex.jsp");
		 rd.forward(request,response);
		
		// TODO Auto-generated method stub
	}

}
