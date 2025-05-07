<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="Misc.ConnectionProvider" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Centre</title>
    <!-- Bootstrap 4.5 CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="./css/admindashboard.css">
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f7fc;
            color: #333;
            line-height: 1.6;
        }

        /* Navigation Styles */
        .navigation {
            background-color: #1e1e2f;
            width: 250px;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 20px;
            padding-left: 20px;
            color: white;
            border-right: 2px solid #444;
        }

        .navigation ul {
            list-style: none;
        }

        .navigation ul li {
            padding: 15px 0;
            text-align: left;
        }

        .navigation ul li a {
            color: white;
            text-decoration: none;
            font-size: 16px;
            display: flex;
            align-items: center;
            transition: all 0.3s ease;
        }

        .navigation ul li a:hover {
            background-color: #2b2b3b;
            border-radius: 5px;
            padding-left: 30px;
        }

        .navigation ul li a .icon {
            margin-right: 10px;
        }

        .navigation ul li a h2 {
            font-size: 18px;
            font-weight: 600;
        }

        /* Main Content */
        .main {
            margin-left: 0px;
            padding: 30px;
        }

        .topbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .topbar .search input {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            width: 250px;
        }

        .topbar .search i {
            position: absolute;
            margin-left: -30px;
            margin-top: 10px;
        }

        .topbar .user img {
            height: 60px;
            width: 60px;
            border-radius: 50%;
        }

        /* Table Styles */
        .table-container {
            margin-top: 50px;
        }

        .table {
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            padding: 15px;
        }

        .table th, .table td {
            padding: 15px;
            text-align: center;
        }

        .table th {
            background-color: #007bff;
            color: #fff;
            font-size: 1.2rem;
        }

        .table td {
            background-color: #f1f1f1;
        }

        .table tr:hover {
            background-color: #f8f9fa;
        }

        .container {
            max-width: 1200px;
        }
    </style>
</head>
<body>

    <!-- Sidebar Navigation -->
    <div class="navigation">
        <ul>
            <li>
                <a href="admindashboard.jsp">
                    <span class="icon"><i class="fa fa-user-plus" aria-hidden="true"></i></span>
                    <span class="title"><h2>Admin Dashboard</h2></span>
                </a> 
            </li>
            <li>
                <a href="admindashboard.jsp">
                    <span class="icon"><i class="fa fa-home" aria-hidden="true"></i></span>
                    <span class="title">Home</span>
                </a>
            </li>
            <li>
                <a href="subscription_plans.jsp">    
                    <span class="icon"><i class="fa fa-id-card" aria-hidden="true"></i></span>
                    <span class="title">Subscription Plans</span>
                </a>
            </li>
            <li>
                <a href="trainers_data.jsp">
                    <span class="icon"><i class="fa fa-user" aria-hidden="true"></i></span>
                    <span class="title">View Trainers</span>
                </a>
            </li>
            <li>
                <a href="users.jsp">
                    <span class="icon"><i class="fa fa-cogs" aria-hidden="true"></i></span>
                    <span class="title">View Users</span>
                </a>
            </li>
            
            <li>
                <a href="./admin_login.jsp">
                    <span class="icon"><i class="fa fa-sign-out" aria-hidden="true"></i></span>
                    <span class="title">Log out</span>
                </a>
            </li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main">
        <h1 class="text-center">Viewing User Data</h1>
       
        
        <div class="table-container">
            <table class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone Number</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                    Connection con = ConnectionProvider.createCon();
                    PreparedStatement pstm = null;
                    ResultSet rs = null;
                    String name = null;
                    String email = null;
                    String phno = null;

                    try {
                        pstm = con.prepareStatement("SELECT * FROM user");
                        rs = pstm.executeQuery();

                        while (rs.next()) {
                            name = rs.getString(1);
                            email = rs.getString(2);
                            phno = rs.getString(3);
                            
                            out.println("<tr>");
                            out.println("<td>" + name + "</td>");
                            out.println("<td>" + email + "</td>");
                            out.println("<td>" + phno + "</td>");
                            out.println("</tr>");
                        }
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
