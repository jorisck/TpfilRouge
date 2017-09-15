<%@ include file="include/header.jsp"%>


<!-- Résumé d'études en cours-->
<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
	<!-- Pricing Tables -->
	<div class="w3-row-padding" style="margin: 0 -16px">
		<div class="w3-third w3-margin-bottom ">
			<ul
				class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
				<li class="w3-black w3-xlarge w3-padding-32">Donnée</li>
				<li class="w3-padding-16 ">Prenom</li>
				<li class="w3-padding-16">Nom</li>
				<li class="w3-padding-16">Adresse</li>
				<li class="w3-padding-16">Telephone</li>
				<li class="w3-padding-16">Email</li>
				<li class="w3-light-grey w3-padding-16">
					<button class="w3-button w3-teal w3-padding-large w3-hover-black">Insertion
						de commande(s)</button>
				</li>
				<li class="w3-padding-16">Création?</li>
			</ul>
		</div>
		<div class="w3-third w3-margin-bottom">
			<ul
				class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
				<li class="w3-teal w3-xlarge w3-padding-32">Client 1</li>
				<li class="w3-padding-16"><c:if test="${client.firstname ==null}">/</c:if><c:out value="${client.firstname}"/></li>
				<li class="w3-padding-16"><c:out value="${client.lastname}"/></li>
				<li class="w3-padding-16"><c:out value="${client.adress}"/></li>
				<li class="w3-padding-16"><c:out value="${client.phoneNumber}"/></li>
				<li class="w3-padding-16"><c:if test="${client.email ==null}">/</c:if><c:out value="${client.email}"/></li>
				<li class="w3-light-grey w3-padding-16">
					<a class="w3-button w3-teal w3-padding-large w3-hover-black" href="<c:url value="/creationCommande"/>">
						Ajouter une commande
					</a>				
				</li>
				<li class="w3-padding-16">
					${form.resultat}
				</li>
			</ul>
		</div>
	</div>
</div>


<%@ include file="include/footer.jsp"%>
