package servlets;

import db.acceso;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SERVLOGIN")
public class SERVLOGIN extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=UTF-8");
        try(PrintWriter out = response.getWriter()){
            String user;
            String pass;
            int nivel = 0;
            acceso acc = new acceso();
            RequestDispatcher rd = null;
            if(request.getParameter("btnLogin")!=null){
                user = request.getParameter("txtUsuario");
                pass = request.getParameter("txtPass");
                nivel = acc.validar(user, pass);
                request.setAttribute("nivel", nivel);
                request.setAttribute("user", user);
                rd=request.getRequestDispatcher("Sender.jsp");

            }
            rd.forward(request,response);


        }
    }

}
