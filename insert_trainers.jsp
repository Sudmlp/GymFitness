<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="Misc.ConnectionProvider" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert Trainer</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">Trainer Added Successfully</h2>

    <%
        // Get form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String bio = request.getParameter("bio");
        String imageUrl = request.getParameter("image_url");
        

        // Insert data into the database
        Connection con = null;
        PreparedStatement pstm = null;

        try {
            // Get connection from the ConnectionProvider class
            con = ConnectionProvider.createCon();

            // SQL query to insert a new trainer (no need for the 'id' column since it's auto-incremented)
            String sql = "insert into trainers values (?, ?, ?, ?, ?)";
            pstm = con.prepareStatement(sql);
            pstm.setString(1, name);
            pstm.setString(2, email);
            pstm.setString(3, phone);
            pstm.setString(4, bio);
            pstm.setString(5, imageUrl);
            

            // Execute the insert query
            int rowsAffected = pstm.executeUpdate();

            if (rowsAffected > 0) {
                out.println("<p class='text-success'>Trainer added successfully!</p>");
            } else {
                out.println("<p class='text-danger'>Failed to add trainer.</p>");
            }

        } catch (Exception e) {
            e.printStackTrace();
            out.println("<p class='text-danger'>Error occurred while adding trainer.</p>");
        } finally {
            try {
                if (pstm != null) pstm.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    %>

    <a href="trainer_form.jsp" class="btn btn-primary">Back to Form</a>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
