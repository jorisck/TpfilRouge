package com.sdzee.beans;

import org.joda.time.DateTime;

public class Commande {
	
	private DateTime dateCommande;
	private int montantCommande;
	private String modedePaiementCommande;
	private String statutPaiementCommande;
	private String modeLivraisonCommande;
	private String statutLivraisonCommande;
	
	public DateTime getDateCommande() {
		return dateCommande;
	}
	public void setDateCommande(DateTime dateCommande) {
		this.dateCommande = dateCommande;
	}
	public int getMontantCommande() {
		return montantCommande;
	}
	public void setMontantCommande(int montantCommande) {
		this.montantCommande = montantCommande;
	}
	public String getModedePaiementCommande() {
		return modedePaiementCommande;
	}
	public void setModedePaiementCommande(String modedePaiementCommande) {
		this.modedePaiementCommande = modedePaiementCommande;
	}
	public String getStatutPaiementCommande() {
		return statutPaiementCommande;
	}
	public void setStatutPaiementCommande(String statutPaiementCommande) {
		this.statutPaiementCommande = statutPaiementCommande;
	}
	public String getModeLivraisonCommande() {
		return modeLivraisonCommande;
	}
	public void setModeLivraisonCommande(String modeLivraisonCommande) {
		this.modeLivraisonCommande = modeLivraisonCommande;
	}
	public String getStatutLivraisonCommande() {
		return statutLivraisonCommande;
	}
	public void setStatutLivraisonCommande(String statutLivraisonCommande) {
		this.statutLivraisonCommande = statutLivraisonCommande;
	}
	
	
	

}
