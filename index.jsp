<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Quick Solutions</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="navbar">
    <div class="logo">Quick Solutions</div>
    <div class="menu">
        <a href="#services">Services</a>
        <a href="#booking">Book</a>
        <a href="#about">About</a>
    </div>
</div>

<section class="hero">
    <div class="hero-text">
        <h1>All Home Services in One Place</h1>
        <p>Book trusted professionals for tiles work, plumbing, interior design, painting and more.</p>
        <a href="#booking" class="btn">Book a Service</a>
    </div>
</section>

<section id="services" class="services-section">
    <h2>Popular Services</h2>
    <div class="card-container">
        <div class="card">
            <h3>Tiles Work</h3>
            <p>Floor tiles, bathroom tiles, kitchen wall tiles and repair services.</p>
        </div>
        <div class="card">
            <h3>Plumbing</h3>
            <p>Leak fixing, tap fitting, pipe repair, sink installation and bathroom fittings.</p>
        </div>
        <div class="card">
            <h3>Interior Design</h3>
            <p>Living room design, bedroom styling, modular setups and space planning.</p>
        </div>
        <div class="card">
            <h3>Painting</h3>
            <p>Wall painting, texture work, waterproof coating and home repainting.</p>
        </div>
    </div>
</section>

<section id="booking" class="booking-section">
    <h2>Book Your Service</h2>

    <form action="book" method="post" class="booking-form">
        <input type="text" name="customerName" placeholder="Enter your name" required>
        <input type="text" name="mobile" placeholder="Enter mobile number" required>

        <select name="service" required>
            <option value="">Select a service</option>
            <option value="Tiles Work">Tiles Work</option>
            <option value="Plumbing">Plumbing</option>
            <option value="Interior Design">Interior Design</option>
            <option value="Painting">Painting</option>
        </select>

        <textarea name="address" placeholder="Enter address" required></textarea>

        <button type="submit">Submit Booking</button>
    </form>

    <%
        String message = (String) request.getAttribute("message");
        if (message != null) {
    %>
        <div class="success-box">
            <h3><%= message %></h3>
            <p><strong>Name:</strong> <%= request.getAttribute("customerName") %></p>
            <p><strong>Mobile:</strong> <%= request.getAttribute("mobile") %></p>
            <p><strong>Service:</strong> <%= request.getAttribute("service") %></p>
            <p><strong>Address:</strong> <%= request.getAttribute("address") %></p>
        </div>
    <%
        }
    %>
</section>

<section id="about" class="about-section">
    <h2>Why Quick Solutions?</h2>
    <p>We provide fast, reliable and affordable home services for daily needs. This is a practice project built for GitHub, Jenkins, Maven and Tomcat deployment.</p>
</section>

<footer class="footer">
    <p>© 2026 Quick Solutions. All rights reserved.</p>
</footer>

</body>
</html>
