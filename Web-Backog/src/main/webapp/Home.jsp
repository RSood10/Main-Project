<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import ="com.dao.*" %>
<%@page import ="java.util.*" %>
<%@page import ="com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HOME</title>
<%ProductDao pd = new ProductDao();
	ArrayList<Product> pdlist = pd.getAllProducts();
	int size = pdlist.size();
	
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
    <!-- hr line to divide btw nav and next component -->
    <!-- <hr class="border border-primary border-3 opacity-75 m-0" /> -->
    <div class="hero">
      <img
        src="images/bgf.png"
        class="img-fluid"
        alt="image"
        style="width: 100%; height: 100dvh; object-fit: contain; padding-left: 40vw;"
      />
      <div style="position: absolute; z-index: 4; top: 14.5rem; left: 8rem">
        <h1
          style="
            font-size: 4rem;
            font-weight: bolder;
            color: whitesmoke;
            -webkit-text-stroke: 2px #67CCD1;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS',
            sans-serif;
            padding-right: 49vw;
          "
          >
          Buy Groceries and more <br />Farm Fresh Products
        </h1>
      </div>
    </div>
    <!-- Main content to display the customer -->
    <!-- vegis product details  -->
    <main>
      <!-- content with items displayed on this page -->
      <div style="background-color:whitesmoke;padding:2rem;margin:2rem;border-radius:2rem">
        <div class="px-8">
         <h4 style="padding-left: 8rem;
    font-size: 2rem;
    font-weight: bolder;
    color: #052A75;">Fruits</h4>
        </div>
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
    	
    	
        for(int i=0;i<size;i++){ 
        	String img = "images/products_images/"+pdlist.get(i).getImage();
        	String name = pdlist.get(i).getName();
        	double price = pdlist.get(i).getPrice();
        	String description = pdlist.get(i).getDesc();
        	String category = pdlist.get(i).getCategory();
        	if(category.equalsIgnoreCase("fruits"))
        	{
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
        	}
        	} %>
        </div>
        </div>
      </div>
       <!-- Fruits details  -->
       <div style="background-color:whitesmoke;padding:2rem;margin:2rem;border-radius:2rem">
        <div class="px-8">
         <h4 style="padding-left: 8rem;
    font-size: 2rem;
    font-weight: bolder;
    color: #052A75;">Vegetables</h4>
        </div>
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
    	
    	
        for(int i=0;i<size;i++){ 
        	String img = "images/products_images/"+pdlist.get(i).getImage();
        	String name = pdlist.get(i).getName();
        	double price = pdlist.get(i).getPrice();
        	String description = pdlist.get(i).getDesc();
        	String category = pdlist.get(i).getCategory();
        	if(category.equalsIgnoreCase("Vegetables"))
        	{
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
        	}
        	} %>
        </div>
        </div>
      </div>
       <!-- Dairy details  -->
       <div style="background-color:whitesmoke;padding:2rem;margin:2rem;border-radius:2rem">
        <div class="px-8">
         <h4 style="padding-left: 8rem;
    font-size: 2rem;
    font-weight: bolder;
    color: #052A75;">Dairy Products</h4>
        </div>
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
    	
    	
        for(int i=0;i<size;i++){ 
        	String img = "images/products_images/"+pdlist.get(i).getImage();
        	String name = pdlist.get(i).getName();
        	double price = pdlist.get(i).getPrice();
        	String description = pdlist.get(i).getDesc();
        	String category = pdlist.get(i).getCategory();
        	if(category.equalsIgnoreCase("Dairy Product"))
        	{
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
        	}
        	} %>
        </div>
        </div>
      </div>
        
       
    </main>
    <!-- footer start -->
    <jsp:include page="footer.jsp"></jsp:include>
 <a href="AdminHome.jsp">Admin</a>
  <a href="Register.jsp">REGISTER</a>
</body>
</html>