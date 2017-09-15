package com.sdzee.beans;

public class Commande {

    private Client client;
    private String dateCommande;
    private Double montantCommande;
    private String modedePaiementCommande;
    private String statutPaiementCommande;
    private String modeLivraisonCommande;
    private String statutLivraisonCommande;

    public Client getClient() {
        return client;
    }

    public void setClient( Client client ) {
        this.client = client;
    }

    public String getDateCommande() {
        return dateCommande;
    }

    public void setDateCommande( String dateCommande ) {
        this.dateCommande = dateCommande;
    }

    public Double getMontantCommande() {
        return montantCommande;
    }

    public void setMontantCommande( Double montantCommande ) {
        this.montantCommande = montantCommande;
    }

    public String getModedePaiementCommande() {
        return modedePaiementCommande;
    }

    public void setModedePaiementCommande( String modedePaiementCommande ) {
        this.modedePaiementCommande = modedePaiementCommande;
    }

    public String getStatutPaiementCommande() {
        return statutPaiementCommande;
    }

    public void setStatutPaiementCommande( String statutPaiementCommande ) {
        this.statutPaiementCommande = statutPaiementCommande;
    }

    public String getModeLivraisonCommande() {
        return modeLivraisonCommande;
    }

    public void setModeLivraisonCommande( String modeLivraisonCommande ) {
        this.modeLivraisonCommande = modeLivraisonCommande;
    }

    public String getStatutLivraisonCommande() {
        return statutLivraisonCommande;
    }

    public void setStatutLivraisonCommande( String statutLivraisonCommande ) {
        this.statutLivraisonCommande = statutLivraisonCommande;
    }

}
