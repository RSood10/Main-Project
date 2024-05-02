<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	  <nav
    class="navbar navbar-expand-lg bg-body-tertiary "
    style="position: fixed; z-index: 50;width: 100%;">
    <div class="container-fluid">
      <a class="navbar-brand" href="home.html">GROCERY</a>
      <button
        class="navbar-toggler"
        type="button"
        data-bs-toggle="collapse"
        data-bs-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent"
        aria-expanded="false"
        aria-label="Toggle navigation"
      >
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul
          class="navbar-nav me-auto mb-2 mb-lg-0"
          style="align-items: center"
        >
          <li class="nav-item">
            <a class="nav-link active fs-5" aria-current="page" href="#"
              >Home</a
            >
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5" href="#">All Products</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5" href="#">All Orders</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5" href="#">All Customers</a>
          </li>
          
        </ul>
        
        <!-- use servlet call or jsp page to show user prpfile -->

        <img
          src="profile-user.png"
          alt="pofile"
          style="
            width: 3.5%;
            height: 3.5%;
            margin: 0rem 1rem;
            cursor: pointer;
          "
        />
      </div>
    </div>
  </nav>
</body>
</html>