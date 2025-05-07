<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page session="true" %>
<% 
    // Retrieve the user's email and plan_type from session
    String sesval = (String) session.getAttribute("data"); 
    String planType = (String) session.getAttribute("plan_type");  // Plan type is also stored in session after login
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">  
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 

    <!-- Custom CSS for navbar -->
    <style>
        /* Custom navbar background color */
        .custom-navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            z-index: 1000;
            background: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
            backdrop-filter: blur(10px); /* Apply blur effect */
            -webkit-backdrop-filter: blur(10px); /* Safari compatibility */
            padding: 10px 0;
        }

        /* Optional: Add a slight shadow for the navbar */
        .custom-navbar.navbar-dark {
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        }

        .navbar-nav .nav-link {
            color: white !important; /* Make text color white for contrast */
        }

        .navbar-nav .nav-link:hover {
            color: #00c6ff !important; /* Add a hover effect */
        }
    </style>
</head>
<body style="height:1500px">

    <!-- Navbar with custom class -->
    <nav class="navbar navbar-expand-sm custom-navbar navbar-dark fixed-top">  
        <a class="navbar-brand" href="#"><img src="img/dashboard logo.png" width="100" height="50"> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp </a>  
        <ul class="navbar-nav navbar-right">  
            <!-- Home button changes based on plan_type -->
            <li class="nav-item">
                <% if ("premium".equals(planType)) { %>
                    <a class="nav-link" href="premium_index.jsp">Home &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>
                <% } else if ("standard".equals(planType)) { %>
                    <a class="nav-link" href="standard_index.jsp">Home &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>
                <% } else if ("basic".equals(planType)) { %>
                    <a class="nav-link" href="basic_index.jsp">Home &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>
                <% } else { %>
                    <a class="nav-link" href="index.jsp">Home &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>
                <% } %>
            </li>  

            <li class="nav-item">  
                <a class="nav-link" href="About.jsp">About Us &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>  
            </li> 
            <li class="nav-item">  
                <a class="nav-link" href="About.jsp">Contact &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>  
            </li>
            <li class="nav-item">  
                <a class="nav-link" href="trainers.jsp">Trainers &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp  </a>  
            </li>  

            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search for services!" aria-label="Search">
                <button class="btn btn-outline-light" type="submit">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg>
                </button>
            </form>

            <li class="nav-item">  
                <a class="nav-link" href="#">
                    <%= sesval != null ? "Hello: " + sesval : "Hello: Guest" %>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
                </a>
            </li>

            <li class="nav-item">  
                <% if(sesval != null) { %>
                    <a class="nav-link" href="logout.jsp">Logout</a>
                <% } else { %>
                    <a class="nav-link" href="Sign_up.jsp">Sign Up</a>  
                </li>  
                <li class="nav-item">  
                    <a class="nav-link" href="login.jsp">Login</a>  
                </li>
                <% } %>
            </ul>  
    </nav>  

</body>
</html>
