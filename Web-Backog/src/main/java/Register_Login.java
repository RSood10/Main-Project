

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.beans.Customer;
import com.controller.RegisterController;
import com.helper.Helper;

/**
 * Servlet implementation class Register_Login
 */
@WebServlet("/Register_Login")
public class Register_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register_Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		RegisterController rs = new RegisterController();
		
		String result = req.getParameter("action");
		System.out.println(result);
		
		//creating session
		HttpSession hs = req.getSession();
		
		if(result.equalsIgnoreCase("registerCustomer"))
		{
			System.out.println("Working register");
			
			String customer_name = req.getParameter("cust_name");
			String customer_email = req.getParameter("cust_email");
			String customer_password = req.getParameter("cust_password");
			String customer_address = req.getParameter("cust_address");
			long id = (long) (Math.floor(Math.random() * 9000000l)+ 1000000); 
			Customer customer = new Customer(id, customer_name, customer_email,customer_password,customer_address);
			int output = rs.register( customer);
			PrintWriter pw = res.getWriter();
		if(output == 1)
		{
			 res.sendRedirect("Home.jsp");
			 
			
            
		}
		else
		{
			pw.println("Registering  failed");

		}
			
			System.out.println(id+" "+customer_name+" "+customer_email+" "+customer_password+" "+customer_address);
			
		}
		
		
		if(result.equalsIgnoreCase("loginCustomer"))
		{
			System.out.println("Working login");
			long customer_id = Long.parseLong(req.getParameter("cust_id"));
			String customer_password = req.getParameter("cust_password");
			
			
			System.out.println(customer_id+" "+customer_password);
			
			Customer customer = new Customer(customer_id,customer_password);
			Customer c1 = rs.login(customer);
			PrintWriter pw = res.getWriter();
		if(c1 != null)
		{
			 res.sendRedirect("Home.jsp");
		}
		else
		{
			pw.println("Customer not present");

		}
		
		}
	}

}
