<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="Misc.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Centre - Subscription Plans</title>
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
            width: 300px;
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

        /* Main Content */
        .main {
            margin-left: 0px;
            padding: 30px;
        }

        .cardbox {
            display: flex;
            gap: 20px;
            margin-bottom: 30px;
        }

        .card {
            background-color: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 20px;
            border-radius: 8px;
            width: 2220px;
            text-align: center;
        }

        .card .numbers {
            font-size: 30px;
            font-weight: bold;
            color: #333;
        }

        .card .cardname {
            font-size: 18px;
            margin-top: 10px;
            color: #666;
        }

        .card .iconbox i {
            font-size: 50px;
            color: #5bc0de;
            margin-top: 15px;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.15);
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th, table td {
            padding: 12px;
            text-align: center;
            font-size: 16px;
            border-bottom: 1px solid #ddd;
            
        }

        table th {
            background-color: #343a40;
            color: white;
        }

        table tbody tr:hover {
            background-color: #f8f9fa;
        }

        table td a {
            text-decoration: none;
            padding: 6px 12px;
            border-radius: 5px;
            font-size: 14px;
            margin: 0 5px;
            transition: all 0.3s ease;
        }

        table td a:hover {
            opacity: 0.8;
        }

        table td .btn-edit {
            background-color: #ffc107;
            color: white;
        }

        table td .btn-edit:hover {
            background-color: #e0a800;
        }

        table td .btn-delete {
            background-color: #dc3545;
            color: white;
        }

        table td .btn-delete:hover {
            background-color: #c82333;
        }

        /* Responsive Table */
        @media screen and (max-width: 768px) {
            .navigation {
                width: 200px;
            }

            .main {
                margin-left: 210px;
            }

            table th, table td {
                padding: 8px;
            }
        }

        /* Add transition effects to sidebar and content */
        @media screen and (max-width: 992px) {
            .navigation {
                width: 100%;
                height: auto;
                position: relative;
                padding: 10px;
            }

            .main {
                margin-left: 0;
                padding-top: 80px;
            }

            .navigation ul li a {
                padding: 10px;
            }
        }
    </style>
</head>
<body>

    <div class="container">
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

        <div class="main">
            <div class="cardbox">
                <div class="card">
                    <h2>Manage Subscription Plans</h2>
                    
                </div>
            </div>

            <div class="details">
                <div class="recentorders">
                    <div class="cardheader">
                        <h2>Subscription Plan Details</h2>
                        
                    </div>
                    <table>
                        <thead>
                            <tr>
                                <th>Plan ID</th>
                                <th>Plan Name</th>
                                <th>Price($)</th>
                                <th>Description</th>
                                <th>Actions</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                Connection con = null;
                                PreparedStatement stmt = null;
                                ResultSet rs = null;
                                try {
                                    con = ConnectionProvider.createCon();
                                    String query = "SELECT * FROM subscription_plans";
                                    stmt = con.prepareStatement(query);
                                    rs = stmt.executeQuery();
                                    
                                    while (rs.next()) {
                                        int planId = rs.getInt("plan_id");
                                        String planName = rs.getString("plan_name");
                                        double price = rs.getDouble("price");
                                        String description = rs.getString("description");
                            %>
                            <tr>
                                <td><%= planId %></td>
                                <td><%= planName %></td>
                                <td><%= price %></td>
                               	<td> <%= description %></td>
                                <td>
                                    <a href="edit_plan.jsp?id=<%= planId %>" class="btn-edit">Edit</a> |<br>
                                    <br><a href="delete_plan.jsp?id=<%= planId %>" class="btn-delete">Delete</a>
                                </td>
                            </tr>
                            <% 
                                    }
                                } catch (Exception e) {
                                    e.printStackTrace();
                                } finally {
                                    try {
                                        if (rs != null) rs.close();
                                        if (stmt != null) stmt.close();
                                        if (con != null) con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
