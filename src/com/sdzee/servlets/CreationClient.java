package com.sdzee.servlets;

import java.io.IOException;

//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Client;
import com.sdzee.forms.FormClient;

/**
 * Servlet implementation class CreationClient
 */
@WebServlet( "/CreationClient" )
public class CreationClient extends HttpServlet {
    public static final String ATT_CLIENT       = "client";
    public static final String ATT_FORM         = "form";

    public static final String VUE_CLIENT       = "/WEB-INF/creationClient.jsp";
    public static final String VUE_SUCCES       = "/WEB-INF/viewerClient.jsp";

    private static final long  serialVersionUID = 1L;

    public CreationClient() {
        super();
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        this.getServletContext().getRequestDispatcher( VUE_CLIENT ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        FormClient formClient = new FormClient();

        Client client = formClient.creerClient( request );

        request.setAttribute( ATT_FORM, formClient );
        request.setAttribute( ATT_CLIENT, client );

        /* transmission de la paire d'objets request/response à notre JSP */
        if ( formClient.isFailed() == false ) {
            this.getServletContext().getRequestDispatcher( VUE_SUCCES ).forward( request, response );
        } else {
            this.getServletContext().getRequestDispatcher( VUE_CLIENT ).forward( request, response );
        }

    }
}
