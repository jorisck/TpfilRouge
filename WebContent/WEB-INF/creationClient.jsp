

<%@ include file="include/header.jsp"%>


<!-- Résumé d'études en cours-->
<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
	<!-- Pricing Tables -->
        <div>
            <form method="post" action="creationClient">
				<%@include file="include/templateCreationClient.jsp"%>
				<p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
				<label></label>
                <input class="w3-button w3-grey w3-hide-small" type="submit" value="Valider"  />
                <input class="w3-button w3-grey w3-hide-small" type="reset" value="Remettre à zéro" /> <br />
            </form>
        </div>
</div>


<%@ include file="include/footer.jsp"%>
