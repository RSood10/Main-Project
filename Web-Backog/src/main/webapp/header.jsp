<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

	    <nav
      class="navbar navbar-expand-lg bg-body-tertiary"
      style="position: fixed; z-index: 50"
    >
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
              <a class="nav-link active fs-5" aria-current="page" href="Home.jsp"
                >Home</a
              >
            </li>
            <li class="nav-item">
              <a class="nav-link fs-5" href="userAllproducts.jsp">All Products</a>
            </li>
            <li class="nav-item dropdown">
              <a
                class="nav-link dropdown-toggle fs-5"
                href="#"
                role="button"
                data-bs-toggle="dropdown"
                aria-expanded="false"
              >
                Products
              </a>
              <!-- Friday's work of sorting -->
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Fruits</a></li>
                <li><a class="dropdown-item" href="#">Vegetables</a></li>
                <li><hr class="dropdown-divider" /></li>
                <li><a class="dropdown-item" href="#">Dairy </a></li>
              </ul>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" aria-disabled="true"
                ><img
                  src="img/shopping-cart.png"
                  alt="CART"
                  style="width: 6%; height: 6%"
              />
              
              </a>
            </li>
          </ul>
          <form class="d-flex" role="search">
            <input
              class="form-control me-2"
              type="search"
              placeholder="Search"
              aria-label="Search"
            />
            <button class="btn btn-outline-success" type="submit">
              Search
            </button>
          </form>
          <!-- use servlet call or jsp page to show user prpfile -->

          <img
            src="img/profile-user.png"
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
