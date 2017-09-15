package com.sdzee.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sdzee.beans.Client;
import com.sdzee.forms.MethodsInOneBox;

/**
 * Servlet implementation class SuppressionClient
 */
@WebServlet( "/SuppressionClient" )
public class SuppressionClient extends HttpServlet {
    private static final long  serialVersionUID = 1L;
    public static final String PARAM_NOM_CLIENT = "nomClient";
    public static final String SESSION_CLIENT   = "clients";

    public static final String VUE              = "/listeClients";

    public SuppressionClient() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        String nomClient = MethodsInOneBox.getValeurChamp( request, PARAM_NOM_CLIENT );

        HttpSession session = request.getSession();

        Map<String, Client> clients = (HashMap<String, Client>) session.getAttribute( SESSION_CLIENT );

        if ( nomClient != null && clients != null ) {
            clients.remove( nomClient );

            session.setAttribute( SESSION_CLIENT, clients );
        }

        response.sendRedirect( request.getContextPath() + VUE );

    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

}
