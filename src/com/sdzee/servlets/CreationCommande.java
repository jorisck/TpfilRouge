package com.sdzee.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sdzee.beans.Client;
import com.sdzee.beans.Commande;
import com.sdzee.forms.FormClient;
import com.sdzee.forms.FormCommande;

/**
 * Servlet implementation class CreationCommande
 */
@WebServlet( "/CreationCommande" )
public class CreationCommande extends HttpServlet {

    public static final String ATT_COMMANDE      = "commande";
    public static final String ATT_CLIENT        = "client";
    public static final String ATT_FORM_CLIENT   = "form";
    public static final String ATT_FORM_COMMANDE = "formCommande";
    public static final String SESSION_CLIENTS   = "clients";
    public static final String SESSION_COMMANDES = "commandes";

    public static final String VUE_SUCCES        = "/WEB-INF/viewerCommande.jsp";
    public static final String VUE_COMMANDE      = "/WEB-INF/creationCommande.jsp";

    private static final long  serialVersionUID  = 1L;

    public CreationCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        this.getServletContext().getRequestDispatcher( VUE_COMMANDE ).forward( request, response );
    }

    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // Creation du client et de la commande
        FormClient formClient = new FormClient();
        Client client = formClient.creerClient( request );

        FormCommande formCommande = new FormCommande();
        Commande commande = formCommande.creerCommande( request );

        request.setAttribute( ATT_COMMANDE, commande );
        request.setAttribute( ATT_CLIENT, client );
        request.setAttribute( ATT_FORM_CLIENT, formClient );
        request.setAttribute( ATT_FORM_COMMANDE, formCommande );

        /* transmission de la paire d'objets request/response à notre JSP */

        if ( formClient.isFailed() == false || formCommande.isFailed() == false ) {

            // Gestion du Client
            HttpSession session = request.getSession();
            Map<String, Client> clients = (HashMap<String, Client>) session.getAttribute( SESSION_CLIENTS );

            if ( clients == null ) {
                clients = new HashMap<String, Client>();
            }

            clients.put( client.getLastname(), client );
            session.setAttribute( SESSION_CLIENTS, clients );

            // Gestion de la commande
            Map<String, Commande> commandes = (HashMap<String, Commande>) session.getAttribute( SESSION_COMMANDES );

            if ( commandes == null ) {
                commandes = new HashMap<String, Commande>();
            }

            commandes.put( commande.getDateCommande(), commande );
            session.setAttribute( SESSION_COMMANDES, commandes );

            this.getServletContext().getRequestDispatcher( VUE_SUCCES ).forward( request, response );
        } else {
            this.getServletContext().getRequestDispatcher( VUE_COMMANDE ).forward( request, response );
        }
    }
}
