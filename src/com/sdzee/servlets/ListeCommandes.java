package com.sdzee.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListeCommandes
 */
@WebServlet( "/ListeCommandes" )
public class ListeCommandes extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    public static final String ATT_COMMANDE     = "commande";
    public static final String ATT_FORM         = "form";

    public static final String VUE              = "/WEB-INF/listeCommandes.jsp";

    public ListeCommandes() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

}
