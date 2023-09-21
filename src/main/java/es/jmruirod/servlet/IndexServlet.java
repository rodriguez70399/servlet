package es.jmruirod.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Clase Servlet para controlar el input del usuario
 * 
 * @author Jose Manuel Ruiz Rodriguez
 */
@WebServlet(name = "IndexServlet", urlPatterns = {"/converter"})
public class IndexServlet extends HttpServlet 
{
    /**
     * Metodo sobreescrito que recibe la peticion post de un formulario y calcula la divisa dependiendo de la seleccionada por el usuario
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        String value = request.getParameter("value");
        double doubleValue;
        String result = "";
        String alertType = "";

        if (!value.isBlank() && value.chars().allMatch(Character::isDigit))
        {
            doubleValue = Double.parseDouble(value);

            if (request.getParameter("euros") != null) 
            {
                result = String.format("%.2f", doubleValue * 0.94) + " €";
            }
            else if (request.getParameter("dollars") != null)
            {
                result = String.format("%.2f", doubleValue * 1.07) + " $";
            }

            alertType = "success";
        }
        else
        {
            alertType = "danger";
            result = "Valor introducido no valido";
        }
        
        request.getSession().setAttribute("result", result);
        request.getSession().setAttribute("alertType", alertType);
        response.sendRedirect("/servlet"); 
    }    
}
