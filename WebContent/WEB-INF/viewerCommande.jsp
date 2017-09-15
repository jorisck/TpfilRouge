<%@ include file="include/header.jsp" %>

 
  <div class="w3-container w3-padding-large" style="margin-bottom:32px">
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-teal w3-xlarge w3-padding-32">Données</li>
          <li class="w3-padding-16"> Client (Nom-Prénom)</li>
          <li class="w3-padding-16">Date</li>
          <li class="w3-padding-16">Montant</li>
          <li class="w3-padding-16">Mode de Paiement</li>
          <li class="w3-padding-16">Statut du Paiement</li>
          <li class="w3-padding-16">Mode de livraison</li>
          <li class="w3-padding-16"> Statut de livraison</li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/creationCommande'">Toute la liste?</button>
          </li>
          <li class="w3-padding-16">Création?</li>
        </ul>
      </div>
      
     <div class="w3-third">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Commande</li>          
          <li class="w3-padding-16"><c:out value="${commande.client.lastname} - ${commande.client.firstname}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.dateCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.montantCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.modedePaiementCommande}"/></li>
          <li class="w3-padding-16"><c:if test="${commande.statutPaiementCommande ==null}">/</c:if><c:out value="${commande.statutPaiementCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.modeLivraisonCommande}"/></li>
           <li class="w3-padding-16"><c:if test="${commande.statutLivraisonCommande ==null}">/</c:if><c:out value="${commande.statutLivraisonCommande}"/></li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/listeCommandes'">Voir les commandes</button>
          </li>
          <li class="w3-padding-16">${formCommande.resultat}</li>
        </ul>
      </div>
    </div>
  </div>

  <%@ include file="include/footer.jsp" %>