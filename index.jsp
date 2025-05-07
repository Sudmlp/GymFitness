<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="index_header.jsp" />
<%@ page import="Misc.ConnectionProvider" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Center</title>
    <!-- Owl Carousel CSS -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom Styles -->
    <style>
        /* Make the carousel fill the entire screen */
        
        .owl-carousel {
            width: 100vw;  /* Full width of the viewport */
            height: 100vh; /* Full height of the viewport */
            position: relative;
        }

        .owl-carousel .item {
            height: 100vh;  /* Ensure each item fills the screen */
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .owl-carousel .item img {
            width: 100%;  /* Fill the width of the container */
            height: 100%; /* Fill the height of the container */
            object-fit: cover;  /* Cover the entire container area */
        }
         h1 {
      background-color: rgba(173, 216, 230, 0.5); /* Light blue background with transparency */
      color: #333; /* Dark text color for contrast */
      font-size: 36px;
      padding: 20px;
      border-radius: 10px;
      backdrop-filter: blur(8px); /* Apply blur effect to background behind the heading */
      text-align: center;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3); /* Optional shadow to enhance text visibility */
    }
       .container {
            max-width: 1200px;
            margin-left:140px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }
        .plan {
            background: grey;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 20px;
            padding: 20px;
            text-align: center;
            width: 300px;
        }
        .plan h2 {
            color: #333;
        }
        .price {
            font-size: 24px;
            color: #28a745;
            margin: 10px 0;
        }
        .features {
            list-style: none;
            padding: 0;
        }
        .features li {
            margin: 10px 0;
        }
        /* Button Styling */
.btn {
    display: inline-block;
    padding: 12px 30px;  /* Adjust the padding for better click area */
    font-size: 16px;      /* Make font size consistent */
    font-weight: bold;
    color: green;
      /* Green background for the "Subscribe Now" button */
    border: none;
    border-radius: 25px;   /* Fully rounded corners */
    text-align: center;
    cursor: pointer;
    text-decoration: none;
    transition: all 0.3s ease;  /* Smooth transition for hover and active effects */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);  /* Slight shadow for depth */
}

/* Hover Effect */
.btn:hover {
    background-color: #218838;  /* Darker green on hover */
    transform: translateY(-3px);  /* Slightly lift the button */
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);  /* Increased shadow for hover */
}

/* Active (Clicked) Effect */
.btn:active {
    background-color: #1e7e34;  /* Even darker green when clicked */
    transform: translateY(1px);  /* Make the button "press down" effect */
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);  /* Reset shadow on active */
}

/* Focus Effect for Accessibility */
.btn:focus {
    outline: none;  /* Remove default outline */
    box-shadow: 0 0 10px rgba(0, 123, 255, 0.5);  /* Blue shadow for focus */
}




        /* Section Title */
        .section-title {
            text-align: center;
            margin-top: 50px;
            margin-bottom: 30px;
            font-size: 2.5em;
            font-weight: bold;
            color: #3a3a3a;
            text-transform: uppercase;
            letter-spacing: 1.5px;
        }

        /* About Content */
        .about-content {
            text-align: justify;
            margin-bottom: 40px;
            font-size: 1.1em;
            line-height: 1.7;
            color: #555;
            transition: all 0.3s ease-in-out;
        }

        .about-content h4 {
            color: #007BFF;
            font-size: 2em;
            margin-bottom: 15px;
        }

        .about-content p {
            margin-bottom: 20px;
        }

        .about-content ul {
            list-style: none;
            padding: 0;
            margin: 10px 0;
        }

        .about-content ul li {
            font-size: 1.1em;
            margin-bottom: 10px;
            position: relative;
            padding-left: 25px;
        }

        .about-content ul li:before {
            content: '\2022';
            font-size: 1.8em;
            position: absolute;
            left: 0;
            color: #007BFF;
        }

        .about-content h5 {
            font-size: 1.6em;
            margin-top: 30px;
            color: #333;
            text-transform: uppercase;
        }

       /* Photo Grid Styles */
        .photo-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-left:50px;
            margin-right:50px;
            margin-bottom:20px;
            padding:50px;
        }

        .photo-grid img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }

        .photo-grid img:hover {
            transform: scale(1.1);
        }

        /* Contact Info Styles */
        .contact-info {
            font-size: 1.2em;
            margin-top: 40px;
            text-align: center;
            background-color: #fff;
            padding: 40px 20px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            transition: all 0.3s ease-in-out;
        }

        .contact-info h4 {
            color: #007BFF;
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        .contact-info p {
            margin: 10px 0;
            font-size: 1.2em;
        }

        .contact-info span {
            font-weight: bold;
            color: #333;
        }

        /* Hover Effect for Contact Section */
        .contact-info:hover {
            transform: translateY(-10px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .section-title {
                font-size: 2em;
            }

            .about-content {
                font-size: 1em;
            }

            .contact-info {
                padding: 30px 10px;
            }

            .contact-info h4 {
                font-size: 2em;
            }
        }

    </style>
</head>
<body>

    <!-- Full-Screen Owl Carousel -->
    <div class="owl-carousel">
        <div class="item"><img src="images/image1.jpg" alt="Image 1"></div>
        <div class="item"><img src="images/image2.jpg" alt="Image 2"></div>
        <div class="item"><img src="images/image3.jpg" alt="Image 3"></div>
        <div class="item"><img src="images/image4.jpg" alt="Image 4"></div>
        <div class="item"><img src="images/image5.jpg" alt="Image 5"></div>
    </div>

    <!-- jQuery (required for Owl Carousel) -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <!-- Owl Carousel JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

    <!-- Owl Carousel Initialization -->
    <script>
        $(document).ready(function(){
            $(".owl-carousel").owlCarousel({
                loop: true,                // Loop the carousel
                margin: 0,                 // No margin between items
                nav: true,                 // Show next/prev buttons
                autoplay: true,            // Enable autoplay
                autoplayTimeout: 3000,     // Time between transitions (3 seconds)
                items: 1,                  // Display only 1 item at a time
                dots: false,               // Disable navigation dots
                animateOut: 'fadeOut',     // Fade out transition between images
                animateIn: 'fadeIn',       // Fade in transition between images
            });
        });
    </script>
    <h1>Choose Your Subscription Plan <br>Join Us Today</h1>
    		
    <div class="container">
    							 
                              <%  Connection con = null;
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

    <div class="plan">
        <h2><%= planName %></h2>
        <div class="price"><%= price %>$</div>
        <ul class="features">
            <li><%= description %></li>
            
        </ul>
        <a href="login.jsp" class="btn">Subscribe Now</a>
    </div>

    
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
    </div>
    
    <div class="photo-grid">
            <img src="img/gallery/gallery-1.jpg" alt="Gym Facility 1">
            <img src="img/gallery/gallery-2.jpg" alt="Gym Facility 2">
            <img src="img/gallery/gallery-3.jpg" alt="Gym Facility 3">
            <img src="img/gallery/gallery-4.jpg" alt="Gym Facility 4">
            <img src="img/gallery/gallery-5.jpg" alt="Gym Facility 5">
            <img src="img/gallery/gallery-6.jpg" alt="Gym Facility 6">
            <img src="img/gallery/gallery-7.jpg" alt="Gym Facility 7">
            <img src="img/gallery/gallery-8.jpg" alt="Gym Facility 8">
        </div>
    <!-- About Section -->
    <div class="container">
        
        
        <!-- Photo Grid Section -->
        
        
        <div class="about-content">
            <h4>Welcome to Fitness Centre</h4>
            <p>At Fitness Centre, we are committed to helping you achieve your fitness goals. Whether you're a beginner or an experienced 
            athlete,our gym is the perfect place for you to stay fit, healthy, and motivated. With state-of-the-art equipment, 
            expert trainers, and a variety of fitness programs, we provide everything you need for a successful fitness journey.</p>

            <h5>Our Mission</h5>
            <p>Our mission is to empower individuals to lead healthier lives by providing a welcoming environment, expert guidance, 
            and the best fitness resources. We aim to help our members become stronger, more confident,
            and better versions of themselves.</p>

            <h5>What We Offer</h5>
            <ul>
                <li>Personal Training</li>
                <li>Group Fitness Classes</li>
                <li>Cardio Equipment</li>
                <li>Strength Training</li>
                <li>Nutrition Coaching</li>
            </ul>

            <h5>Our Vision</h5>
            <p>We envision becoming a community-driven gym where everyone, regardless of their fitness level, feels supported, 
            inspired, and motivated to reach their potential. We believe in fostering an inclusive,
            positive environment where our members can thrive.</p>
        </div>

        

        <!-- Contact Information -->
        <div class="contact-info">
            <h4>Contact Us</h4>
            <p><span>Address:</span> 123 Fitness Street, City, Country</p>
            <p><span>Phone:</span> (123) 456-7890</p>
            <p><span>Email:</span> contact@fitnesscentre.com</p>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



<jsp:include page="index_footer.jsp" />








