package com.quicksolutions;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/book")
public class HomeServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String customerName = request.getParameter("customerName");
        String mobile = request.getParameter("mobile");
        String service = request.getParameter("service");
        String address = request.getParameter("address");

        request.setAttribute("customerName", customerName);
        request.setAttribute("mobile", mobile);
        request.setAttribute("service", service);
        request.setAttribute("address", address);
        request.setAttribute("message", "Booking request submitted successfully!");

        request.getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
