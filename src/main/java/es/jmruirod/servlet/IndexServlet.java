package es.jmruirod.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "IndexServlet", urlPatterns = {"/conversor"})
public class IndexServlet extends HttpServlet 
{
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String value = request.getParameter("value");
        RequestDispatcher dispatcher;
        double result = 0;

        if (request.getParameter("euros") != null) 
        {
            System.out.println(value);
            result = Double.parseDouble(value) * 0.94;

        }
        else if (request.getParameter("dollars") != null)
        {
            result = Double.parseDouble(value) * 1.07;
        }

        request.setAttribute("result", result);
        dispatcher = request.getRequestDispatcher("/index.jsp");

        try 
        {
            dispatcher.forward(request, response);            
        } 
        catch (ServletException | IOException e) 
        {
            System.out.println("Error");
        }
    }
}
