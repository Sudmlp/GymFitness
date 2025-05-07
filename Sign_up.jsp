<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <jsp:include page="index_header.jsp" />
    <%String str=request.getParameter("msg"); %>
    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Form For User</title>
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
  margin-top: 300px; /* This pushes the footer to the bottom */
}
  </style>
  <script type="text/javascript">
  function validateForm() {
    // Get the values of the password and confirm password fields
    var password = document.getElementById("form3Example4c").value;
    var confirmPassword = document.getElementById("form3Example4cd").value;
    
    // Check if the password and confirm password match
    if (password !== confirmPassword) {
      // If they don't match, show an alert and prevent form submission
      alert("Password must match confirm password.");
      return false;
    }
    return true; // If the passwords match, allow the form to be submitted
  }
</script>
  
  
  </head>
  <body>
    <section class="vh-100" >
      
          <div class="col-lg-12 col-xl-11" style="background-image: linear-gradient(to right, #59cbc6, #0077b5, #003366)">
            <div class="card text-black" style="background-image: linear-gradient(to right, #59cbc6, #0077b5, #003366)">
              <div class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
    
                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>
                    
                   
                   <% 
                   if ("valid".equals(str)) { 
                   %>
                     <h3 class="text-success">Successfully Registered!</h3>
                   <% 
                   } else if ("error".equals(str)) { 
                   %>
                     <h3 class="text-danger">Something Went Wrong. Please try again!</h3>
                     <script type="text/javascript">
                       alert("Registration failed. Please try again.");
                     </script>
                   <% 
                   }
                   %>        

                    <form action="RegisterController" method="POST" class="mx-1 mx-md-4" onsubmit="return validateForm();" >
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 20 60">
                          <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                        </svg>
                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label for="validationDefault01" class="form-label" >Your Name</label>
                          <input type="text" id="validationDefault01" name="uname" class="form-control" value="" required />
                          
                          
                        </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 20 60">
                          <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z"/>
                        </svg>
                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example3c">Your Email</label>
                          <input type="email" id="form3Example3c" name="uemail"class="form-control" value="" required />
                          
                        </div>
                      </div>

                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-telephone-fill" viewBox="0 0 20 60">
                          <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z"/>
                        </svg>

                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example3c">Your Mobile Number</label>
                          <input type="mobile" id="form3Example3c" name="uphno" class="form-control" value="" required />
                          
                        </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-lock-fill" viewBox="0 0 20 60">
                          <path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2z"/>
                        </svg>
                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4c">Password</label>
                          <input type="password" id="form3Example4c" name="upass" class="form-control" value="" required />
                          
                        </div>
                      </div>
    
                      <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-key-fill" viewBox="0 0 20 60">
                          <path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                        </svg>
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4cd">Confirm Your Password</label>
                          <input type="password" id="form3Example4cd" name="conpass"class="form-control" value="" required />
                           </div>
                            </div>
                            
                            <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-key-fill" viewBox="0 0 20 60">
                          <path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                        </svg>
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4cd">Security Question:</label>
                          <select name="SecurityQuestion" class="backup" required>                            
              <option value="What was the name of your childhood friend?">What was the name of your childhood friend?</option>
              <option value="What was the name of your first car?">What was the name of your first car?</option>
              <option value="What is your favourate food?">What is your favourate food?</option>
              </select>
                     </div>
                      </div>
    
                   
                   
                   <div class="d-flex flex-row align-items-center mb-4">
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="60" fill="currentColor" class="bi bi-key-fill" viewBox="0 0 20 60">
                          <path d="M3.5 11.5a3.5 3.5 0 1 1 3.163-5H14L15.5 8 14 9.5l-1-1-1 1-1-1-1 1-1-1-1 1H6.663a3.5 3.5 0 0 1-3.163 2zM2.5 9a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                        </svg>
                        <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <label class="form-label" for="form3Example4cd">Answer</label>
                          <input type="text" id="form3Example4cd" name="uans"class="form-control" />
                           </div>
                            </div>
                               
    
                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <button type="submit" class="btn btn-dark btn-lg">Register</button>

                      </div>
                      <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href='login.jsp'
                        class="fw-bold text-body"><u>LogIn here</u></a></p>
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
<jsp:include page="index_footer.jsp" />
    