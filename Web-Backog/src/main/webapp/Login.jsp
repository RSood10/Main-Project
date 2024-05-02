<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
    <form style="width: 50%;margin: auto; padding: 5rem;" action="Register_Login?action=loginCustomer" method="post" name="Loginform">
          <!-- User Id -->
          <div data-mdb-input-init class="form-outline mb-4">
            <label class="form-label" for="form2Example2">Customer-Id</label>
          <input  name="cust_id" type="text" id="form2Example2" class="form-control" required/>
        </div>
        <!-- Password input -->
        <div data-mdb-input-init class="form-outline mb-4">
            <label class="form-label" for="form2Example2">Password</label>
          <input  name="cust_password" type="password" id="form2Example2" class="form-control" required/>
        </div>
       
        <!-- 2 column grid layout for inline styling -->
        <div class="row mb-4">
          <div class="col d-flex justify-content-center">
            <!-- Checkbox -->
            <!-- <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="form2Example31" checked required/>
              <label class="form-check-label" for="form2Example31"> Remember me </label>
            </div> -->
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
          <p>Not a member? <a href="Register.jsp">Register</a></p>
         
        </div>
      </form>
</body>
</html>