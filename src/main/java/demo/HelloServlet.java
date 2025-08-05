package demo;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hi")
public class HelloServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
    	
        request.setAttribute("name", "Manikandan");

        System.out.println("request parameter is setted");
        System.out.println("param");

        System.out.println("User ");





        System.out.println("Dummy baba");
        System.out.println("User is not available");

        System.out.println("Dummy Baba is not used");
        System.out.println("User is not needed");

        

        System.out.println("vanakam da maple");

        System.out.println("User action");

        System.out.println("Dummy Baba is not used");

        System.out.println("User is not available");
        


        RequestDispatcher dispatcher = request.getRequestDispatcher("hello.jsp");
        dispatcher.forward(request, response);
    }
}

