<%@ include file="include/header.jsp"%>

<div class="w3-container w3-padding-large " style="margin-bottom: 32px">
	<div class="w3-row-padding" style="margin: 0 -16px">
		<p><a href="<c:url value="/creationClient"/>">Cr�er un patient?</a></p><br/>
		<p><a href="<c:url value="/creationCommande"/>">Cr�er un patient et sa commande?</a> </p><br/>
		<p><a href="<c:url value="/contact"/>">Des remarques?</a> </p><br/>
		<p><a href="<c:url value="/listeClients"/>">Voir les clients existants</a></p><br/>
		<p><a href="<c:url value="/listeCommandes"/>">Voir les commandes existantes</a></p><br/>
	</div>
</div>

<%@ include file="include/footer.jsp"%>
