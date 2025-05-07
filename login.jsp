<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<%String str=request.getParameter("msg"); %>
    <jsp:include page="index_header.jsp" />
    
    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login Form For User</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <style>
  		footer {
  background-color: #333;
  color: white;
  text-align: center;
  padding: 10px 0;
  position: relative;
  width: 100%;
  /* Ensure footer always stays at the bottom */
  margin-top: 100px; /* This pushes the footer to the bottom */
}
  </style>
  
  </head>
  <body>
    <section class="vh-100" >
      
          <div style="margin-top:50px;" class="col-lg-12 col-xl-11" style="background-image: linear-gradient(to right, #59cbc6, #0077b5, #003366)">
            <div class="card text-black" style="background-image: linear-gradient(to right, #59cbc6, #0077b5, #003366)">
              <div class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
    
                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>
                    <%if("invalid".equals(str))
                    	{%>
                   <h3>Wrong Credential!</h3>
                   <%} %>
                    <form action="LoginController" method="post" class="mx-1 mx-md-4" >
    
                      
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 20 60">
                          <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
                        </svg>
                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example3c">Your Email</label>
                          <input type="email" id="form3Example3c" name="uemail"class="form-control" />
                          
                        </div>
                      </div>

                     
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 20 60">
                          <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                        </svg>
                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4c">Password</label>
                          <input type="password" id="form3Example4c" name="upass" class="form-control" />
                          
                        </div>
                      </div>
    
                      
                           
                   
                   
                  
                               
    
                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <button type="submit" class="btn btn-dark btn-lg">Login</button>

                      </div>
                      <p class="text-center text-muted mt-5 mb-0">Forget Password? <a href='forgot_password.jsp'
                        class="fw-bold text-body"><u>Click here</u></a></p>
                    </form>
    
                  </div>
                  <div class="col-md-20 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
    
                    <img src="images/Login2.jpg"
                    height="600"
                    width="800"
                      style="border-radius: 45px;
                      
                      class="img-fluid" alt="Sample image">
    
                  </div>
                </div>
              </div>
            </div>
          </div>
        
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
  </body>
  
</html>
<jsp:include page="index_footer.jsp"/>
    