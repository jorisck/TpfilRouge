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

<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
        <div>
            <form method="post" action="creationCommande">
            	<c:if test="${ !empty sessionScope.clients }">
            	 <label for="choixNouveauClient"> Nouveau client? <span class="requis">*</span></label>
            	 <input type="radio" id="choixNouveauClient" name="choixNouveauClient" value="nouveauClient" checked /> Oui
            	 <input type="radio" id="choixNouveauClient" name="choixNouveauClient" value="ancienClient"/> Non
            	 <br></br>
            	</c:if>
            	<c:set var="client" value="${commande.client}" scope="request"/>
            	
            	<div id="nouveauClient">
            		<%@include file="include/templateCreationClient.jsp"%>
            	</div>
            	
            	<c:if test="${ !empty sessionScope.clients }">
            		<div id="ancienClient">
            			<select name="listeClients" id="listeClients">
            				<option value=""> Choisissez un client...</option>
            				<c:forEach items="${sessionScope.clients }" var="mapClients">
            					<option value="${ mapClients.value.lastname }"> ${mapClients.value.firstname }
            					</option>
            				</c:forEach>            			
            			</select>
            		</div>            	
            	</c:if>
                <br/>
                
                <fieldset>
                    <legend>Informations commande</legend>
                    <br/>
                    <label for="dateCommande">Date <span class="requis">*</span></label>
                    <input type="text" id="dateCommande" name="dateCommande" value="<c:out value="${commande.dateCommande}"/>" size="30" maxlength="20" disabled />
                    <br></br>
                    
                    <label for="montantCommande">Montant <span class="requis">*</span></label>
                    <input type="text" id="montantCommande" name="montantCommande" value="<c:if test="${commande.montantCommande !=0}"><c:out value="${commande.montantCommande}"/></c:if>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['montantCommande'] }</span>
                    <br></br>
                    
                    <label for="modePaiementCommande">Mode de paiement <span class="requis">*</span></label>
                    <input type="text" id="modedePaiementCommande" name="modedePaiementCommande" value="<c:out value="${commande.modedePaiementCommande }"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modedePaiementCommande']}</span>
                    <br></br>
                    
                    <label for="statutPaiementCommande">Statut du paiement</label>
                    <input type="text" id="statutPaiementCommande" name="statutPaiementCommande" value="<c:out value="${commande.statutPaiementCommande}"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutPaiementCommande']}</span>
                    <br></br>
                    
                    <label for="modeLivraisonCommande">Mode de livraison <span class="requis">*</span></label>
                    <input type="text" id="modeLivraisonCommande" name="modeLivraisonCommande" value="<c:out value="${commande.modeLivraisonCommande }"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['modeLivraisonCommande']}</span>
                    <br></br>
                    
                    <label for="statutLivraisonCommande">Statut de la livraison</label>
                    <input type="text" id="statutLivraisonCommande" name="statutLivraisonCommande" value="<c:out value="${commande.statutLivraisonCommande}"/>" size="30" maxlength="20" />
                    <span class="erreur">${formCommande.erreurs['statutLivraisonCommande']}</span>
                    <br></br>
                </fieldset>
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
                <p class="${empty formCommande.erreurs ? 'succes' : 'erreur'}">${formCommande.resultat}</p>
                <label></label>
                
               	<input class="w3-button w3-grey w3-hide-small" type="submit" value="Valider"  />
                <input class="w3-button w3-grey w3-hide-small" type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
</div>

<script src="<c:url value="/include/inc/jquery.js"/>"></script>
        <script>
        	jQuery(document).ready(function(){
        		/* 1 - Au lancement de la page, on cache le bloc d'éléments du formulaire correspondant aux clients existants */
        		$("div#ancienClient").hide();
        		/* 2 - Au clic sur un des deux boutons radio "choixNouveauClient", on affiche le bloc d'éléments correspondant (nouveau ou ancien client) */
                jQuery('input[name=choixNouveauClient]:radio').click(function(){
                	$("div#nouveauClient").hide();
                	$("div#ancienClient").hide();
                    var divId = jQuery(this).val();
                    $("div#"+divId).show();
                });
            });
        </script>

<%@ include file="include/footer.jsp"%>
