package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javaBeans.Items;
import daoclasses.AddItemDaoImpl;
import daoclasses.DeleteItemDaoImpl;
import daoclasses.UpdateItemDaoImpl;

public class AdminOperationController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
    public AdminOperationController() {
        super();

        
    }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		HttpSession session=request.getSession();
 	   session.invalidate();
 	   response.sendRedirect("bakeryindex.jsp");
	}

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String operation= request.getParameter("Operation");
		System.out.println(operation);
       if(operation.equalsIgnoreCase("add")==true)
       {
    	   String itemId =request.getParameter("ItemId");
    	   String itemName =request.getParameter("ItemName"); 
    	   String price =request.getParameter("Price");
    	   String Quantity =request.getParameter("Quantity");
    	   String HomeDelivery =request.getParameter("HomeDelivery");
    	   
    	   Items item = new Items();
    	   item.setItemId(Integer.parseInt(itemId));
    	   item.setItemName(itemName);
    	   item.sethomeDelivery(Integer.parseInt(HomeDelivery));
    	   item.setPrice(Float.parseFloat(price));
    	   item.setQuantity(Integer.parseInt(Quantity));
    	   item.setAddedInCart(0);
    	   
    	   boolean flag1=new AddItemDaoImpl().insertItemDetails(item);
    	  
    	   if(flag1==true)
    	   {
    		System.out.println("ADMIN OPERATION PAGE : ITEM ADDED");
    	   RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
  		   rd.forward(request,response);
    	   }
    	   else
    	   {
    		   System.out.println(flag1);
    		   response.sendRedirect("http://localhost:7001/bakery/InvalidAddition.jsf");
    	   }
    	   
       }  
       
       else if(operation.equalsIgnoreCase("modify")==true)
       {
    	   String itemId =request.getParameter("ItemId");
    	  
    	   String itemName =request.getParameter("ItemName"); 
    	   String price =request.getParameter("Price");
    	   String Quantity =request.getParameter("Quantity");
    	   String HomeDelivery =request.getParameter("HomeDelivery");
    	   
    	   Items item = new Items();
    	   item.setItemId(Integer.parseInt(itemId));
    	   item.setItemName(itemName);
    	   item.sethomeDelivery(Integer.parseInt(HomeDelivery));
    	   item.setPrice(Float.parseFloat(price));
    	   item.setQuantity(Integer.parseInt(Quantity));
    	   
    	   System.out.println("In modify method");
    	   new UpdateItemDaoImpl().updateItemDetails(item ,true , true , true , true, true );
    	   //System.out.println("ADMIN OPERATION PAGE : ITEM modified");
    	   RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
  		 rd.forward(request,response);
    	   
       }
		
       else if(operation.equalsIgnoreCase("delete")==true)
       {
    	   String itemId =request.getParameter("ItemId");
    	   String itemName =request.getParameter("ItemName"); 
    	   Items item = new Items();
    	   item.setItemId(Integer.parseInt(itemId));
    	   item.setItemName(itemName);
    	   
    	   new DeleteItemDaoImpl().deleteItemDetails(item);
    	 
    	   RequestDispatcher rd = request.getRequestDispatcher("AdminHome.jsp");
    		 rd.forward(request,response);
      	   
    	   
       }
       
       else
       {  
       }
	
	}

}