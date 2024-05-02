<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form style="width: 50%;margin: auto; padding: 5rem;" action="Register_Login?action=registerCustomer" method="post" name="Registerform">
        <!-- Name-->
        <div data-mdb-input-init class="form-outline mb-4">
            <label class="form-label" for="form2Example1">Full Name</label>
          <input name="cust_name" type="text" id="form2Example1" class="form-control" required/>
        </div>
        <!-- Email input -->
        <div data-mdb-input-init class="form-outline mb-4">
            <label class="form-label" for="form2Example1">Email address</label>
          <input  name="cust_email"  type="email" id="form2Example1" class="form-control" required/>
        </div>
      <!---->
        <!-- Password input -->
        <div data-mdb-input-init class="form-outline mb-4">
            <label class="form-label" for="form2Example2">Password</label>
          <input  name="cust_password"  type="password" id="pass" class="form-control" required/>
        </div>
        <!--Confirm Password input -->
        <div data-mdb-input-init class="form-outline mb-4">
        <p id="errormsg" style="color:red"></p>
            <label class="form-label" for="c_pass">Confirm Password</label>
          <input  name="cust_confirm_password" type="password" id="c_pass" class="form-control" required onchange="validate()"/>
        </div>
       <!-- Address-->
       <div data-mdb-input-init class="form-outline mb-4">
        <label class="form-label" for="form2Example1">Address</label>
      <input  name="cust_address"  type="text" id="form2Example1" class="form-control" required/>
    </div>
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          <div class="col d-flex justify-content-center">
            <!-- Checkbox -->
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked />
              <label class="form-check-label" for="form2Example31"> Remember me </label>
            </div>
          </div>
      
          <div class="col">
            <!-- Simple link -->
            <a href="#!">Forgot password?</a>
          </div>
        </div>
      
        <!-- Submit button -->
        <button type="submit" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary btn-block mb-4">Sign in</button>
      
        <!-- Register buttons -->
        <div class="text-center">
          <p>Already a Member: <a href="Login.jsp">login</a></p>
          
        </div>
      </form>
      <script>
        function validate()
        {
            let pass = document.getElementById("pass").value;
            let c_pass = document.getElementById("c_pass").value;
            let error = document.getElementById("errormsg");
			console.log(pass);
			
            if(pass != c_pass)
            {
                error.innerHTML = "password and confirm pass does not match";
                console.log("working");
            }
            else
            {
            	error.innerHTML = "Success!"
            }
        }
      </script>
</html>