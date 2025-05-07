<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<jsp:include page="index_header.jsp" />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Center - Basic Plan</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
        }

        .banner {
            background-image: url('images/fitness-banner.jpg');
            background-size: cover;
            height: 250px;
            color: white;
            text-align: center;
            padding: 50px;
        }

        .banner h1 {
            font-size: 3em;
        }

        .container {
            max-width: 1200px;
            margin: 30px auto;
        }

        .basic-plan {
            background: #f8f9fa;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .basic-plan h2 {
            font-size: 2.5em;
            color: #007BFF;
            text-align: center;
        }

        .features ul {
            list-style-type: none;
            padding: 0;
        }

        .features li {
            font-size: 1.2em;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
        }

        .features li::before {
            content: '\2022';
            color: #28a745;
            font-size: 1.5em;
            margin-right: 10px;
        }

        .cta-button {
            display: block;
            width: 200px;
            margin: 30px auto;
            background-color: #28a745;
            color: white;
            text-align: center;
            padding: 15px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 1.2em;
        }

        .cta-button:hover {
            background-color: #218838;
        }
        .embed-responsive {
            position: relative;
            display: block;
            width: 100%;
            height: 0;
            padding-bottom: 56.25%;
            overflow: hidden;
        }

        .embed-responsive iframe {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }

        .footer {
            background-color: #343a40;
            color: white;
            padding: 20px 0;
            text-align: center;
            margin-top: 40px;
        }

    </style>
</head>
<body>

    <!-- Banner -->
    <div class="banner">
        <h1>Welcome to Your Basic Plan</h1>
        <p>Stay fit and healthy with access to essential gym features</p>
    </div>

    <!-- Plan Details -->
    <div class="container">
        <div class="basic-plan">
            <h2>Basic Plan Features</h2>
            <div class="features">
                <ul>
                    <li>Access to Gym Equipment</li>
                    <li>1 Yoga Class per Week</li>
                    <li>Free Fitness Assessment</li>
                </ul>
            </div>
            <p>Your Basic Plan gives you the essential tools to get started on your fitness journey. Stay motivated with access to our state-of-the-art gym equipment, weekly yoga sessions, and professional fitness assessments to track your progress.</p>
            
        </div>
        <div class="container">
            <h3>Watch Yoga Videos</h3>
            <div class="embed-responsive">
                <iframe src="https://www.youtube.com/embed/videoseries?si=2Uf7wNveS1A9YUWT&amp;list=PLe1px9-uNQToJhrFIBpVsviZMABuLE5x8" allowfullscreen></iframe>
            </div>
        </div>
    </div>

    <!-- Footer -->
    

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<jsp:include page="index_footer.jsp" />
