<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="Misc.ConnectionProvider" %>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Trainer</title>
</head>
<body>
    <%
        String trainerId = request.getParameter("id");
        if (trainerId != null && !trainerId.isEmpty()) {
            int id = Integer.parseInt(trainerId);
            Connection con = null;
            PreparedStatement pstm = null;
            
            try {
                con = ConnectionProvider.createCon();
                
                // SQL to delete the trainer based on the id
                String deleteQuery = "DELETE FROM trainers WHERE id = ?";
                pstm = con.prepareStatement(deleteQuery);
                pstm.setInt(1, id);
                
                int rowsAffected = pstm.executeUpdate();
                if (rowsAffected > 0) {
                    out.println("<div>Trainer with ID " + id + " has been deleted successfully!</div>");
                } else {
                    out.println("<div>Error: Trainer not found!</div>");
                }
                
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<div>Error occurred while deleting the trainer.</div>");
            } finally {
                try {
                    if (pstm != null) pstm.close();
                    if (con != null) con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
    <br>
    <a href="trainers_data.jsp">Back to Trainers List</a>
</body>
</html>
