


</html><%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="index_header.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Gym</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* General Page Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }
        
        h2 {
        	
    		font-weight: bold; /* Makes the text bold */
    		font-size: 5.5em; /* Adjust the font size as needed */
    		
    		padding: 10px 0; /* Add some padding for spacing around the text */
    		color: #333; /* Text color */
    		text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.5); /* Adding shadow */
    		
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
            margin-bottom: 40px;
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
<br>
<br>

    <!-- About Section -->
    <div class="container">
        <h2 class="section-title">About Us</h2>
        
        <!-- Photo Grid Section -->
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
        
        <div class="about-content">
            <h4>Welcome to Fitness Centre</h4>
            <p>At Gym Name, we are committed to helping you achieve your fitness goals. Whether you're a beginner or an experienced athlete, our gym is the perfect place for you to stay fit, healthy, and motivated. With state-of-the-art equipment, expert trainers, and a variety of fitness programs, we provide everything you need for a successful fitness journey.</p>

            <h5>Our Mission</h5>
            <p>Our mission is to empower individuals to lead healthier lives by providing a welcoming environment, expert guidance, and the best fitness resources. We aim to help our members become stronger, more confident, and better versions of themselves.</p>

            <h5>What We Offer</h5>
            <ul>
                <li>Personal Training</li>
                <li>Group Fitness Classes</li>
                <li>Cardio Equipment</li>
                <li>Strength Training</li>
                <li>Nutrition Coaching</li>
            </ul>

            <h5>Our Vision</h5>
            <p>We envision becoming a community-driven gym where everyone, regardless of their fitness level, feels supported, inspired, and motivated to reach their potential. We believe in fostering an inclusive, positive environment where our members can thrive.</p>
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
<br>
<br>
</html>

<jsp:include page="index_footer.jsp" />
