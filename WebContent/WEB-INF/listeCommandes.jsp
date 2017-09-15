<%@ include file="include/header.jsp"%>

<div id="corps">
	<c:choose>
		<c:when test="${empty sessionScope.commandes }">
			<p class="erreur"> Aucune commande enregistrée.</p>
		</c:when>
		<c:otherwise>
			<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-quarter w3-margin-bottom ">
						<ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
				          <li class="w3-teal w3-xlarge w3-padding-32">Données</li>
				          <li class="w3-padding-16">Client</li>
				          <li class="w3-padding-16">Date</li>
				          <li class="w3-padding-16">Montant</li>
				          <li class="w3-padding-16">Mode de Paiement</li>
				          <li class="w3-padding-16">Statut du Paiement</li>
				          <li class="w3-padding-16">Mode de livraison</li>
				          <li class="w3-padding-16"> Statut de livraison</li>
				          <li class="w3-light-grey w3-padding-24">
				            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/creationCommande'">Action</button>
				          </li>				
        				</ul>
					</div>
			        <c:forEach items="${sessionScope.commandes }" var="mapCommandes" varStatus="boucle">
						<div class="w3-quarter w3-margin-bottom">
							<ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
					          <li class="w3-black w3-xlarge w3-padding-32">Commande <c:out value="${boucle.count }"/></li>
					          <li class="w3-padding-16"><c:out value="${ mapCommandes.value.client.lastname } ${ mapCommandes.value.client.firstname }"/></li>
					          <li class="w3-padding-16"><c:out value="${mapCommandes.value.dateCommande}"/></li>
					          <li class="w3-padding-16"><c:out value="${mapCommandes.value.montantCommande}"/></li>
					          <li class="w3-padding-16"><c:out value="${mapCommandes.value.modedePaiementCommande}"/></li>
					          <li class="w3-padding-16"><c:if test="${mapCommandes.value.statutPaiementCommande ==null}">/</c:if><c:out value="${mapCommandes.value.statutPaiementCommande}"/></li>
					          <li class="w3-padding-16"><c:out value="${mapCommandes.value.modeLivraisonCommande}"/></li>
					          <li class="w3-padding-16"><c:if test="${mapCommandes.value.statutLivraisonCommande==null}">/</c:if><c:out value="${mapCommandes.value.statutLivraisonCommande}"/></li>
					          <li class="w3-light-grey w3-padding-24">
							  <a class="w3-button w3-teal w3-padding-large w3-hover-black" href="<c:url value="/suppressionCommande"> <c:param name="nomCommande" value="${mapCommandes.key}"/> </c:url>">
								Supprimer
							</a>					           
					          </li>
        					</ul>
						</div>
					</c:forEach>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</div>

<%@ include file="include/footer.jsp"%>
