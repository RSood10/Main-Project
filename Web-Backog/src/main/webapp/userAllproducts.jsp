<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import ="com.dao.*" %>
<%@page import ="java.util.*" %>
<%@page import ="com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%
%>
 <link rel="stylesheet" href="styles/custom.css">
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"
    ></script>
  </head>
  <body class="d-flex flex-column min-vh-100">
	<jsp:include page="header.jsp"></jsp:include>
     <div style="background-color:whitesmoke;padding:2rem;margin:2rem;border-radius:2rem">
        
        <div
          style="
            width: 80%;
            margin: auto;
            margin-top: 3rem;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            align-items: center;
            align-content: center;
          "
        >
        <div class="card-box">
        <%
        ProductDao pd = new ProductDao();
    	ArrayList<Product> pdlist = pd.getAllProducts();
    	System.out.println(pdlist.size()+" ");
    	System.out.println(pdlist.get(0).getId());
    	System.out.println(pdlist.get(0).getName());
    	int size = pdlist.size();
    	
        for(int i=0;i<size;i++){ 
        	String img = "images/products_images/"+pdlist.get(i).getImage();
        	String name = pdlist.get(i).getName();
        	double price = pdlist.get(i).getPrice();
        	String description = pdlist.get(i).getDesc();
        	String category = pdlist.get(i).getCategory();
        	
        %>
         <card>
          <div class="card" style="width: 18rem;">
            <img src=<%=img %> class="card-img-top" alt="food" />
            <div class="card-body">
              <h5 class="card-title"><%=name %></h5>
              <p class="card-text">
                <%=description %>
              </p>
              <p class="card-text">
                <b>Rs <%=price %></b>
              </p>
              <div class="card-button-box">
                <a href="#" class="btn btn-outline-secondary">Add to cart</a>
                <a href="#" class="btn btn-outline-secondary">Buy Now</a>
              </div>
            </div>
          </div>
        </card>
         <%
        		
        	} %>
        </div>
        </div>
      </div>
    <!-- footer start -->
    <jsp:include page="footer.jsp"></jsp:include>
 <a href="AdminHome.jsp">Admin</a>
  <a href="Register.jsp">REGISTER</a>
</body>
</html>