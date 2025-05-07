<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Misc.ConnectionProvider" %>
<jsp:include page="index_header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trainer Profiles</title>
    <!-- Bootstrap CSS for styling -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .trainer-card {
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 30px;
            background-color: #f9f9f9;
        }
        .trainer-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }
        .trainer-profile {
            margin-top: 20px;
        }
        .trainer-profile h3 {
            color: #007bff;
        }
    </style>
</head>
<body>
<br>
<br>

<div class="container mt-5">
    <h1 class="text-center mb-4">Trainer Profiles</h1>

    <div class="row">
        <%
        // Fetch trainer data from the database
        Connection con = ConnectionProvider.createCon();
        PreparedStatement pstm = null;
        ResultSet rs = null;

        try {
            pstm = con.prepareStatement("SELECT * FROM trainers");
            rs = pstm.executeQuery();

            // Iterate over all trainers and display their profile
            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String phone = rs.getString("phone");
                String bio = rs.getString("bio");
                String imageUrl = rs.getString("image_url"); // Assuming image URL is stored in the database

        %>
        <div class="col-md-4">
            <div class="trainer-card">
                <div class="text-center">
                    <!-- Trainer Image -->
                    <img src="<%= imageUrl %>" alt="<%= name %>'s Profile" class="trainer-image">
                </div>
                <div class="trainer-profile text-center">
                    <h3><%= name %></h3>
                    <p><strong>Email:</strong> <%= email %></p>
                    <p><strong>Phone:</strong> <%= phone %></p>
                    <p><strong>Bio:</strong> <%= bio %></p>
                </div>
            </div>
        </div>
        <%
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
<jsp:include page="index_footer.jsp" />
