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
                    <input type="text" id="dateCommande" name="dateCommande" value="<c:out value="${commande.dateCommande}"/>" size="20" maxlength="20" disabled />
                    <br />
                    
                    <label for="montantCommande">Montant <span class="requis">*</span></label>
                    <input type="text" id="montantCommande" name="montantCommande" value="<c:if test="${commande.montantCommande !=0}"><c:out value="${commande.montantCommande}"/></c:if>" size="20" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['montantCommande'] }</span>
                    <br />
                    
                    <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                    <input type="text" id="modedePaiementCommande" name="modedePaiementCommande" value="<c:out value="${commande.modedePaiementCommande }"/>" size="20" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modedePaiementCommande']}</span>
                    <br />
                    
                    <label for="statutPaiementCommande">Statut du paiement</label>
                    <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="<c:out value="${commande.statutPaiementCommande}"/>" size="20" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutPaiementCommande']}</span>
                    <br />
                    
                    <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                    <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="<c:out value="${commande.modeLivraisonCommande }"/>" size="20" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modeLivraisonCommande']}</span>
                    <br />
                    
                    <label for="statutLivraisonCommande">Statut de la livraison</label>
                    <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="<c:out value="${commande.statutLivraisonCommande}"/>" size="20" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutLivraisonCommande']}</span>
                    <br />
                </fieldset>
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                <p class="${empty formCommande.erreurs ? 'succes' : 'erreur'}">${formCommande.resultat}</p>
                <input type="submit" value="Valider"  />
                <input type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
</div>

<!-- Contact Section -->
<div class="w3-container w3-padding-large w3-grey">
	<h4 id="contact">
		<b>Envoyer vos remarques</b>
	</h4>
	<div class="w3-row-padding w3-center w3-padding-24"
		style="margin: 0 -16px">
		<div class="w3-third w3-dark-grey">
			<p>
				<i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i>
			</p>
			<p>email@email.com</p>
		</div>
		<div class="w3-third w3-teal">
			<p>
				<i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i>
			</p>
			<p>Chicago, US</p>
		</div>
		<div class="w3-third w3-dark-grey">
			<p>
				<i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i>
			</p>
			<p>512312311</p>
		</div>
	</div>
	<hr class="w3-opacity">
	<form action="/action_page.php" target="_blank">
		<div class="w3-section">
			<label>Name</label> <input class="w3-input w3-border" type="text"
				name="Name" required>
		</div>
		<div class="w3-section">
			<label>Email</label> <input class="w3-input w3-border" type="text"
				name="Email" required>
		</div>
		<div class="w3-section">
			<label>Message</label> <input class="w3-input w3-border" type="text"
				name="Message" required>
		</div>
		<button type="submit" class="w3-button w3-black w3-margin-bottom">
			<i class="fa fa-paper-plane w3-margin-right"></i>Send Message
		</button>
	</form>
</div>

<%@ include file="include/footer.jsp"%>
