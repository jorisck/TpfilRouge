package com.sdzee.forms;

import javax.servlet.http.HttpServletRequest;

public class MethodsInOneBox {

    public static boolean isInteger( String s ) {
        return isInteger( s, 10 );
    }

    public static boolean isInteger( String s, int radix ) {
        if ( s.isEmpty() )
            return false;
        for ( int i = 0; i < s.length(); i++ ) {
            if ( i == 0 && s.charAt( i ) == '-' ) {
                if ( s.length() == 1 )
                    return false;
                else
                    continue;
            }
            if ( Character.digit( s.charAt( i ), radix ) < 0 )
                return false;
        }
        return true;
    }

    public static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }

    public static void validationEmail( String email ) throws Exception {
        if ( email != null && !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
            throw new Exception( "Merci de saisir une adresse mail valide." );
        }
    }

    public void validationMontant( String montant ) throws Exception {
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

}
