package com.sdzee.servlets;

import java.io.IOException;  
  
//import java.io.PrintWriter;





import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;

import com.sdzee.beans.Client;
import com.sdzee.beans.Commande;

/**
 * Servlet implementation class CreationCommande
 */
@WebServlet("/CreationCommande")
public class CreationCommande extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreationCommande() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Boolean empty=false;
		int montantCommande;
		int phoneNumber;
		
		/* Récupération des données du formulaire*/
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		String adress = request.getParameter("adress");
		String phone=request.getParameter("phoneNumber");
		
		if (phone.isEmpty()){
			phoneNumber = 0;
		} else {
			phoneNumber = Integer.parseInt(phone);
		}

		String email = request.getParameter("email");
		
		if(lastname.isEmpty() || firstname.isEmpty() || adress.isEmpty() || phone.isEmpty() || email.isEmpty()){
			String message="Veuillez remplir tous les champs pour le client. SVP";
			request.setAttribute("message", message);
			empty=true;
		}
				
		/*Création du bean*/
		Client client1 = new Client();
		
		/*Initialisation de ses propriétés*/
		client1.setLastname(lastname);
		client1.setFirstname(firstname);
		client1.setAdress(adress);
		client1.setPhoneNumber(phoneNumber);
		client1.setEmail(email);
		
		
		/*Stockage du message et du bean dans l'objet request*/
		request.setAttribute("client1", client1);
		
		
		/* Récupération des données du formulaire*/
		DateTime dateCommande = new DateTime();
		String montant=request.getParameter("montantCommande");
		if (montant.isEmpty()){
			montantCommande = 0;
		} else {
			montantCommande = Integer.parseInt(montant);
		}
		
		String modedePaiementCommande = request.getParameter("modePaiementCommande");
		String statutPaiementCommande = request.getParameter("statutPaiementCommande");
		String modeLivraisonCommande = request.getParameter("modeLivraisonCommande");
		String statutLivraisonCommande = request.getParameter("statutLivraisonCommande");

		if(modedePaiementCommande.isEmpty() || statutPaiementCommande.isEmpty() || modeLivraisonCommande.isEmpty() || statutLivraisonCommande.isEmpty() || montant.isEmpty()){
			String message1="Veuillez remplir tous les champs pour la commande. SVP";
			request.setAttribute("message1", message1);
			empty=true;
		}
	
				
		/*Création du bean*/
		Commande commande1 = new Commande();
		
		/*Initialisation de ses propriétés*/
		commande1.setDateCommande(dateCommande);
		commande1.setMontantCommande(montantCommande);
		commande1.setModedePaiementCommande(modedePaiementCommande);
		commande1.setStatutPaiementCommande(statutPaiementCommande);
		commande1.setStatutLivraisonCommande(statutLivraisonCommande);
		commande1.setModeLivraisonCommande(modeLivraisonCommande);
		
		
		/*Stockage du message et du bean dans l'objet request*/
		request.setAttribute("commande1", commande1);
		
		/*transmission de la paire d'objets request/response à notre JSP*/
		if (empty==false){
			this.getServletContext().getRequestDispatcher("/WEB-INF/viewerCommande.jsp").forward(request, response);
		} else {
			this.getServletContext().getRequestDispatcher("/accueil.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
