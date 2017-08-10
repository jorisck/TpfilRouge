package com.sdzee.servlets;

import java.io.IOException;

//import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sdzee.beans.Client;

/**
 * Servlet implementation class CreationClient
 */
@WebServlet( "/CreationClient" )
public class CreationClient extends HttpServlet {

    public static final String CHAMP_NOM        = "lastname";
    public static final String CHAMP_PRENOM     = "firstname";
    public static final String CHAMP_ADRESSE    = "adress";
    public static final String CHAMP_TELEPHONE  = "phoneNumber";
    public static final String CHAMP_EMAIL      = "email";

    public static final String ATT_MESSAGE      = "message";
    public static final String ATT_CLIENT       = "client1";
    public static final String ATT_SUCCES       = "noSucces";

    public static final String VUE_SUCCES       = "/WEB-INF/viewerClient.jsp";
    public static final String VUE_ERROR        = "/accueil.jsp";
    private static final long  serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreationClient() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {

        Boolean empty = false;
        int phoneNumber;

        /* Récupération des données du formulaire */
        String lastname = request.getParameter( CHAMP_NOM );
        String firstname = request.getParameter( CHAMP_PRENOM );
        String adress = request.getParameter( CHAMP_ADRESSE );
        String phone = request.getParameter( CHAMP_TELEPHONE );

        if ( phone.isEmpty() ) {
            phoneNumber = 0;
        } else {
            phoneNumber = Integer.parseInt( phone );
        }

        String email = request.getParameter( CHAMP_EMAIL );

        if ( lastname.isEmpty() || firstname.isEmpty() || adress.isEmpty() || phone.isEmpty() || email.isEmpty() ) {
            String message = "Veuillez remplir tous les champs pour le client. SVP";
            request.setAttribute( ATT_MESSAGE, message );
            empty = true;
        }

        /* Création du bean */
        Client client1 = new Client();

        /* Initialisation de ses propriétés */
        client1.setLastname( lastname );
        client1.setFirstname( firstname );
        client1.setAdress( adress );
        client1.setPhoneNumber( phoneNumber );
        client1.setEmail( email );

        /* Stockage du message et du bean dans l'objet request */
        request.setAttribute( ATT_CLIENT, client1 );

        /*
         * Stockage de la valeur de empty pour envoyer un message à la création
         * du client
         */
        request.setAttribute( ATT_SUCCES, empty );

        /* transmission de la paire d'objets request/response à notre JSP */
        if ( empty == false ) {

            this.getServletContext().getRequestDispatcher( VUE_SUCCES ).forward( request, response );
        } else {
            this.getServletContext().getRequestDispatcher( VUE_ERROR ).forward( request, response );
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException,
            IOException {
        // TODO Auto-generated method stub
    }

}
