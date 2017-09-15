package com.sdzee.forms;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sdzee.beans.Client;

public class FormClient {

    private static final String CHAMP_NOM       = "lastname";
    private static final String CHAMP_PRENOM    = "firstname";
    private static final String CHAMP_ADRESSE   = "adress";
    private static final String CHAMP_TELEPHONE = "phoneNumber";
    private static final String CHAMP_EMAIL     = "email";

    private boolean             failed;
    private String              resultat;
    private Map<String, String> erreurs         = new HashMap<String, String>();

    public boolean isFailed() {
        return failed;
    }

    public String getResultat() {
        return resultat;
    }

    public Map<String, String> getErreurs() {
        return erreurs;
    }

    public Client creerClient( HttpServletRequest request ) {

        Client client = new Client();

        String nom = MethodsInOneBox.getValeurChamp( request, CHAMP_NOM );
        String prenom = MethodsInOneBox.getValeurChamp( request, CHAMP_PRENOM );
        String adresse = MethodsInOneBox.getValeurChamp( request, CHAMP_ADRESSE );
        String telephone = MethodsInOneBox.getValeurChamp( request, CHAMP_TELEPHONE );
        String email = MethodsInOneBox.getValeurChamp( request, CHAMP_EMAIL );

        int phoneNumber = 0;

        try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }

        client.setLastname( nom );

        try {
            validationPrenom( prenom );
        } catch ( Exception e ) {
            setErreur( CHAMP_PRENOM, e.getMessage() );
        }

        client.setFirstname( prenom );

        try {
            validationAdresse( adresse );
        } catch ( Exception e ) {
            setErreur( CHAMP_ADRESSE, e.getMessage() );
        }

        client.setAdress( adresse );

        try {
            validationTel( telephone );
            phoneNumber = Integer.parseInt( telephone );
        } catch ( Exception e ) {
            setErreur( CHAMP_TELEPHONE, e.getMessage() );
        }

        client.setPhoneNumber( phoneNumber );

        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }

        client.setEmail( email );

        if ( erreurs.isEmpty() ) {
            failed = false;
            resultat = "Succès de l'inscription du client.";
        } else {
            failed = true;
            resultat = "Echec de l'inscription du client.";
        }

        return client;
    }

    private void validationNom( String nom ) throws Exception {
        if ( nom != null && nom.trim().length() < 2 ) {
            throw new Exception( "Merci de saisir un nom avec , au moins, 2 caractères." );
        } else if ( nom == null ) {
            throw new Exception( "Merci de saisir un nom." );
        }

    }

    private void validationPrenom( String prenom ) throws Exception {
        if ( prenom != null && prenom.trim().length() < 2 ) {
            throw new Exception( "Merci de saisir un prenom avec , au moins, 2 caractères." );
        }
    }

    private void validationAdresse( String adresse ) throws Exception {
        if ( adresse != null && adresse.trim().length() < 10 ) {
            throw new Exception( "Merci de saisir une adresse d'au moins 10 caractères." );
        } else if ( adresse == null ) {
            throw new Exception( "Merci de saisir une adresse" );
        }

    }

    private void validationTel( String telephone ) throws Exception {
        if ( telephone != null ) {
            if ( telephone.trim().length() < 4 ) {
                throw new Exception( "Merci de saisir au moins 4 chiffres svp" );
            } else {
                boolean phoneIsInt = MethodsInOneBox.isInteger( telephone );
                if ( phoneIsInt == false ) {
                    throw new Exception( "Merci d'encoder des chiffres pour le numéro" );
                }
            }

        } else {
            throw new Exception( "Merci de saisir un numéro" );
        }

    }

    private void validationEmail( String email ) throws Exception {
        if ( email != null ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception( "Merci de saisir une adresse mail valable." );
            }
        }

    }

    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }

}
