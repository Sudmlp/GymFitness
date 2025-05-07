<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>
<%@ page import="Misc.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Subscription Plan</title>
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

        .main h2 {
            text-align: center;
            font-size: 2rem;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
            font-size: 1rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 1rem;
        }

        .form-group input[type="number"] {
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
        }

        .btn {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            display: block;
            margin: 0 auto;
            width: 200px;
            transition: all 0.3s ease;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        /* Container */
        .container {
            max-width: 1200px;
            margin: 0 auto;
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
                <a href="app">
                    <span class="icon"><i class="fa fa-cogs" aria-hidden="true"></i></span>
                    <span class="title">View Feedback</span>
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
        <h2>Edit Subscription Plan</h2>

        <% 
            // Retrieve plan id from query parameter
            String planIdStr = request.getParameter("id");
            int planId = Integer.parseInt(planIdStr);

            // Fetch the plan details from the database
            Connection con = null;
            PreparedStatement stmt = null;
            ResultSet rs = null;
            String planName = "";
            double price = 0;
            String description = "";

            try {
                con = ConnectionProvider.createCon();
                String query = "SELECT * FROM subscription_plans WHERE plan_id = ?";
                stmt = con.prepareStatement(query);
                stmt.setInt(1, planId);
                rs = stmt.executeQuery();

                if (rs.next()) {
                    planName = rs.getString("plan_name");
                    price = rs.getDouble("price");
                    description = rs.getString("description");
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

        <form action="edit_plan.jsp?id=<%= planId %>" method="post">
            <div class="form-group">
                <label for="planName">Plan Name:</label>
                <input type="text" name="planName" id="planName" value="<%= planName %>" required>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" name="price" id="price" value="<%= price %>" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <input type="text" name="description" id="description" value="<%= description %>" required>
            </div>
            <button type="submit" class="btn">Update Plan</button>
        </form>

        <% 
            // Handle form submission to update plan
            if(request.getMethod().equalsIgnoreCase("POST")) {
                String updatedPlanName = request.getParameter("planName");
                double updatedPrice = Double.parseDouble(request.getParameter("price"));
                String updateddescription = request.getParameter("description");

                try {
                    con = ConnectionProvider.createCon();
                    String updateQuery = "UPDATE subscription_plans SET plan_name = ?, price = ?, description =? WHERE plan_id = ?";
                    stmt = con.prepareStatement(updateQuery);
                    stmt.setString(1, updatedPlanName);
                    stmt.setDouble(2, updatedPrice);
                    stmt.setString(3, updateddescription);
                    stmt.setInt(4, planId);
                    int result = stmt.executeUpdate();

                    if (result > 0) {
                        out.println("<p>Plan updated successfully!</p>");
                    } else {
                        out.println("<p>Error updating plan.</p>");
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (stmt != null) stmt.close();
                        if (con != null) con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        %>

    </div>

</body>
</html>
