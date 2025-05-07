<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login </title>
<style>

	
	body{
      background-image:url('images/image3.jpg');
      background-size: cover;
      background-position: absolute;
      background-repeat:no-repeat;
	 
    }
    .loginform{  
    	 background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
      
     
      width: 400px;
      
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        padding:80px;  
        border:5px ;  
        border-radius:20px;  
        float:left;  
        margin-top:150px;  
        
        margin-left:420px;
    }  
    .formheading{  
        background-color:red;  
        color:white;  
        padding:8px;  
        text-align:center;  
    }  
    .sub{  
    background-color:blue;  
    padding: 7px 40px 7px 40px;  
    color:white;  
    font-weight:bold;  
    margin-left:70px;  
    border-radius:5px;  
    }  
    .sub:hover {
      background-color: #0056b3;
      transform: scale(1.05);
    }

    .sub:focus {
      outline: none;
    }

    /* Form input fields styling */
    input[type="email"], input[type="password"] {
      
      width: 100%;
      padding: 12px;
      border-radius: 8px;
      border: 1px solid #ccc;
      margin: 10px 0;
      background-color: #fff;
    }
    td{
    	color:white;
    }

    input[type="email"]:focus, input[type="password"]:focus {
      border-color: #007bff;
      box-shadow: 0 0 5px rgba(0, 123, 255, 0.5);
    }

    /* Styling for page text */
    h2 {
      font-size: 24px;
      font-weight: bold;
    }
</style>
</head>
<body >

 
<div class="loginform">  
    <h2 class="formheading">Admin Login Page</h2>  
    <form action="AdmLogin" method="POST">  
    <table>  
    <tr><td>Email:</td><td><input type="email" name="uemail"/></td></tr>  
    <tr><td>Password:</td><td><input type="password" name="upass"/></td></tr>  
    <tr><td colspan="2" style="text-align:center"><input class="sub" type="submit" value="login"/></td></tr>  
    </table>  
    </form>  
    <br>
    <a href="index.jsp" class="sub" style="margin-left:90px;">Home Page</a>
    </div> 
    
     
</body>
</html>