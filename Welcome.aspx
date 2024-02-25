<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="Carbon_Footprint_Calculator.Welcome" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Welcome to Carbon Footprint Tracker</title>
    <!-- Add Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Add Custom CSS -->
    <style>
        /* Add styles for footer */
        footer {
            background-color: #333;
            color: #fff;
            padding: 20px 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">Carbon Footprint Tracker</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#home">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#contact">Contact Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="Login.aspx">Login</a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Home Section -->
    <section id="home" class="container mt-5">
        <h2>Home</h2>
        <p>Welcome to the Carbon Footprint Tracker Application. This application helps track carbon emissions efficiently.</p>
        <!-- Add more content -->
        <p>Start tracking your carbon footprint today and contribute to a sustainable environment.</p>
    </section>

    <!-- About Us Section -->
    <section id="about" class="container mt-5">
        <h2>About Us</h2>
        <p>We are committed to sustainability and reducing carbon footprints. Our application aims to make a positive impact on the environment.</p>
        <!-- Add more content -->
        <p>Our team consists of dedicated professionals passionate about environmental conservation.</p>
    </section>

    <!-- Contact Us Section -->
    <section id="contact" class="container mt-5">
        <h2>Contact Us</h2>
        <p>Feel free to contact us for any inquiries or feedback. You can reach us at contact@carbontracker.com.</p>
        <!-- Add more content -->
        <p>We value your feedback and are always ready to assist you.</p>
    </section>

    <!-- Footer -->
    <footer class="text-center">
        <p>&copy; 2024 Carbon Footprint Tracker. All rights reserved.</p>
    </footer>

 
    <!-- Add Smooth Scrolling Script -->
    <script>
        $(document).ready(function () {
            // Smooth scrolling for links with hashes
            $('a[href*="#"]').not('[href="#"]').not('[href="#0"]').click(function (event) {
                // On-page links
                if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                    // Figure out element to scroll to
                    var target = $(this.hash);
                    target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                    // Does a scroll target exist?
                    if (target.length) {
                        // Only prevent default if animation is actually gonna happen
                        event.preventDefault();
                        $('html, body').animate({
                            scrollTop: target.offset().top
                        }, 1000, function () {
                            // Callback after animation
                            // Must change focus!
                            var $target = $(target);
                            $target.focus();
                            if ($target.is(":focus")) { // Checking if the target was focused
                                return false;
                            } else {
                                $target.attr('tabindex', '-1'); // Adding tabindex for elements not focusable
                                $target.focus(); // Set focus again
                            };
                        });
                    }
                }
            });
        });
    </script>
</body>
</html>
