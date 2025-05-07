<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<jsp:include page="index_header.jsp" />
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Forgot Password</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #59cbc6, #0077b5, #003366);
            margin: 0;
            padding: 0;
        }

        /* Center content vertically */
        .vh-100 {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .card {
            border-radius: 15px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            background-color: white;
            padding: 30px;
        }

        .card-body {
            padding: 40px;
        }

        .text-center h1 {
            font-size: 2.5rem;
            font-weight: 600;
            color: #003366;
            margin-bottom: 30px;
            letter-spacing: 1px;
        }

        /* Form styling */
        .form-outline {
            margin-bottom: 1.5rem;
        }

        .form-label {
            font-size: 1.2rem;
            font-weight: bold;
            color: #333;
        }

        .form-control {
            border-radius: 10px;
            border: 1px solid #ccc;
            padding: 15px;
            font-size: 1rem;
            transition: all 0.3s ease-in-out;
        }

        /* Focused form control styling */
        .form-control:focus {
            border-color: #0077b5;
            box-shadow: 0 0 5px rgba(0, 119, 181, 0.6);
        }

        /* Button styling */
        .btn-dark {
            background-color: #0077b5;
            border-radius: 50px;
            color: white;
            padding: 10px 40px;
            font-size: 1.1rem;
            border: none;
            transition: transform 0.3s ease;
        }

        /* Button hover effect */
        .btn-dark:hover {
            background-color: #005f86;
            transform: scale(1.05);
        }

        /* Footer styling */
        footer {
            background-color: #003366;
            color: white;
            padding: 20px;
            text-align: center;
            font-size: 1rem;
        }

        footer a {
            color: #ffffff;
            text-decoration: none;
            font-weight: bold;
        }

        footer a:hover {
            text-decoration: underline;
        }

        /* Responsive Design */
        @media (max-width: 767px) {
            .card-body {
                padding: 20px;
            }

            .text-center h1 {
                font-size: 1.8rem;
            }

            .form-control {
                padding: 12px;
            }

            .btn-dark {
                font-size: 1rem;
                padding: 8px 30px;
            }
        }
    </style>
</head>
<body>
<br><br><br>
<section class="vh-100">
    <div class="col-lg-12 col-xl-11">
        <div class="card text-black">
            <div class="card-body p-md-5">
                <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Forgot Password</p>
                        
                        <form action="ForgotPassword" method="post" class="mx-1 mx-md-4">
                            <div class="d-flex flex-row align-items-center mb-4">
                                <div class="form-outline flex-fill mb-0">
                                    <label class="form-label" for="email">Your Email</label>
                                    <input type="email" id="email" name="email" class="form-control" required />
                                </div>
                            </div>
                            
                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                <button type="submit" class="btn btn-dark btn-lg">Send Reset Link</button>
                            </div>
                        </form>
                        <!-- Displaying the message -->
                        <c:if test="${not empty message}">
                            <div class="alert alert-info text-center">
                                ${message}
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
<jsp:include page="index_footer.jsp"/>
</html>
