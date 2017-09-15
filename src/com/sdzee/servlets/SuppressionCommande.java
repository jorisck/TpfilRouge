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

import com.sdzee.beans.Commande;
import com.sdzee.forms.MethodsInOneBox;

/**
 * Servlet implementation class SuppressionCommande
 */
@WebServlet( "/SuppressionCommande" )
public class SuppressionCommande extends HttpServlet {
    private static final long  serialVersionUID    = 1L;
    public static final String PARAM_DATE_COMMANDE = "dateCommande";
    public static final String SESSION_COMMANDE    = "commandes";

    public static final String VUE                 = "/listeCommandes";

    public SuppressionCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        String dateCommande = MethodsInOneBox.getValeurChamp( request, PARAM_DATE_COMMANDE );

        HttpSession session = request.getSession();
        Map<String, Commande> commandes = (HashMap<String, Commande>) session.getAttribute( SESSION_COMMANDE );

        if ( dateCommande != null && commandes != null ) {
            commandes.remove( dateCommande );

            session.setAttribute( SESSION_COMMANDE, commandes );
        }

        response.sendRedirect( request.getContextPath() + VUE );

    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

}
