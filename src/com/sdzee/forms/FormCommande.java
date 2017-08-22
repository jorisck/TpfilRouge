package com.sdzee.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.joda.time.DateTime;

import com.sdzee.beans.Commande;

public class FormCommande {

    private static final String CHAMP_DATE          = "dateCommande";
    private static final String CHAMP_MONTANTCOM    = "montantCommande";
    private static final String CHAMP_MODEPAIECOM   = "modedePaiementCommande";
    private static final String CHAMP_STATUTPAIECOM = "statutPaiementCommande";
    private static final String CHAMP_MODELIVRCOM   = "modeLivraisonCommande";
    private static final String CHAMP_STATUTLIVRCOM = "statutLivraisonCommande";

    private static final String FORMAT_DATE         = "dd/MM/yyyy HH:mm:ss";

    private boolean             failed;
    private String              resultat;
    private Map<String, String> erreurs             = new HashMap<String, String>();

    public boolean isFailed() {
        return failed;
    }

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Commande creerCommande( HttpServletRequest request ) {

        DateTime dateCommande = new DateTime();

        String montantCom = MethodsInOneBox.getValeurChamp( request, CHAMP_MONTANTCOM );
        String modePaieCom = MethodsInOneBox.getValeurChamp( request, CHAMP_MODEPAIECOM );
        String statutPaieCom = MethodsInOneBox.getValeurChamp( request, CHAMP_STATUTPAIECOM );
        String modeLivrCom = MethodsInOneBox.getValeurChamp( request, CHAMP_MODELIVRCOM );
        String statutLivrCom = MethodsInOneBox.getValeurChamp( request, CHAMP_STATUTLIVRCOM );

        int montantCommande = 0;

        Commande commande = new Commande();

        commande.setDateCommande( dateCommande );

        try {
            validationMontant( montantCom );
            montantCommande = Integer.parseInt( montantCom );
        } catch ( Exception e ) {
            setErreur( CHAMP_MONTANTCOM, e.getMessage() );
        }

        commande.setMontantCommande( montantCommande );

        try {
            validationModePaie( modePaieCom );
        } catch ( Exception e ) {
            setErreur( CHAMP_MODEPAIECOM, e.getMessage() );
        }

        commande.setModedePaiementCommande( modePaieCom );

        try {
            validationStatutPaie( statutPaieCom );
        } catch ( Exception e ) {
            setErreur( CHAMP_STATUTPAIECOM, e.getMessage() );
        }

        commande.setStatutPaiementCommande( statutPaieCom );

        try {
            validationModeLivraison( modeLivrCom );
        } catch ( Exception e ) {
            setErreur( CHAMP_MODELIVRCOM, e.getMessage() );
        }

        commande.setModeLivraisonCommande( modeLivrCom );

        try {
            validationStatutLivr( statutLivrCom );
        } catch ( Exception e ) {
            setErreur( CHAMP_STATUTLIVRCOM, e.getMessage() );
        }

        commande.setStatutLivraisonCommande( statutLivrCom );

        if ( erreurs.isEmpty() ) {
            failed = false;
            resultat = "Création de la commande.";
        } else {
            failed = true;
            resultat = "Commande non créée.";
        }

        return commande;
    }

    private void validationMontant( String montant ) throws Exception {
        if ( montant != null ) {
            if ( montant == "0" || montant.trim().length() < 0 ) {
                throw new Exception( "Merci de saisir supérieur à 0" );
            } else {
                boolean montantIsInt = MethodsInOneBox.isInteger( montant );
                if ( montantIsInt == false ) {
                    throw new Exception( "Merci d'encoder des chiffres pour le montant" );
                }
            }

        } else {
            throw new Exception( "Merci de saisir un montant" );
        }

    }

    private double validationMontant2( String montant ) throws Exception {

        double temp;

        if ( montant != null ) {

            try {

                temp = Double.parseDouble( montant );

                if ( temp < 0 ) {

                    throw new Exception( "Le montant doit être un nombre positif." );

                }

            } catch ( NumberFormatException e ) {

                temp = -1;

                throw new Exception( "Le montant doit être un nombre." );

            }

        } else {

            temp = -1;

            throw new Exception( "Merci d'entrer un montant." );

        }

        return temp;

    }

    private void validationStatutLivr( String statut ) throws Exception {
        if ( statut != null && statut.trim().length() < 2 ) {
            throw new Exception( "Saisir plus de 2 caractères." );
        }
    }

    private void validationModeLivraison( String mode ) throws Exception {
        if ( mode != null && mode.trim().length() < 2 ) {
            throw new Exception( "Saisir plus de 2 caractères." );
        } else if ( mode == null ) {
            throw new Exception( "Saisir le mode de livraison." );
        }

    }

    private void validationStatutPaie( String statut ) throws Exception {
        if ( statut != null && statut.trim().length() < 2 ) {
            throw new Exception( "Saisir plus de 2 caractères." );
        }
    }

    private void validationModePaie( String mode ) throws Exception {
        if ( mode != null && mode.trim().length() < 2 ) {
            throw new Exception( "Saisir plus de 2 caractères." );
        } else if ( mode == null ) {
            throw new Exception( "Saisir le mode de paiement." );
        }
    }

    private void setErreur( String nomChamp, String message ) {
        erreurs.put( nomChamp, message );
    }

}
