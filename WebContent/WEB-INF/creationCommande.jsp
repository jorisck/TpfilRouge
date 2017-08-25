<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Création d'une commande</title>
        <link type="text/css" rel="stylesheet" href="<c:url value="/inc/style.css"/>" />
    </head>
    <body>

    </body>
</html>



<%@ include file="include/header.jsp"%>


<!-- Résumé d'études en cours-->
<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
	<!-- Pricing Tables -->
        <div>
            <form method="post" action="creationCommande">
                <%@include file="include/templateCreationClient.jsp"%>
                <fieldset>
                    <legend>Informations commande</legend>
                    
                    <label for="dateCommande">Date <span class="requis">*</span></label>
                    <input type="text" id="dateCommande" name="dateCommande" value="<c:out value="${commande.dateCommande}"/>" size="30" maxlength="20" disabled />
                    <br />
                    
                    <label for="montantCommande">Montant <span class="requis">*</span></label>
                    <input type="text" id="montantCommande" name="montantCommande" value="<c:if test="${commande.montantCommande !=0}"><c:out value="${commande.montantCommande}"/></c:if>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['montantCommande'] }</span>
                    <br />
                    
                    <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                    <input type="text" id="modedePaiementCommande" name="modedePaiementCommande" value="<c:out value="${commande.modedePaiementCommande }"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modedePaiementCommande']}</span>
                    <br />
                    
                    <label for="statutPaiementCommande">Statut du paiement</label>
                    <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="<c:out value="${commande.statutPaiementCommande}"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutPaiementCommande']}</span>
                    <br />
                    
                    <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                    <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="<c:out value="${commande.modeLivraisonCommande }"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modeLivraisonCommande']}</span>
                    <br />
                    
                    <label for="statutLivraisonCommande">Statut de la livraison</label>
                    <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="<c:out value="${commande.statutLivraisonCommande}"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutLivraisonCommande']}</span>
                    <br />
                </fieldset>
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                <p class="${empty formCommande.erreurs ? 'succes' : 'erreur'}">${formCommande.resultat}</p>
                <label></label>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
</div>

<%@ include file="include/footer.jsp"%>
