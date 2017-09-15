<%@ include file="include/header.jsp"%>

<div id="corps">
	<c:choose>
		<c:when test="${empty sessionScope.clients }">
			<p class="erreur"> Aucun client enregistré.</p>
		</c:when>
		<c:otherwise>
			<div class="w3-container w3-padding-large" style="margin-bottom: 32px">
				<div class="w3-row-padding" style="margin: 0 -16px">
					<div class="w3-quarter w3-margin-bottom ">
						<ul
							class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
							<li class="w3-black w3-xlarge w3-padding-32">Donnée</li>
							<li class="w3-padding-16 ">Prenom</li>
							<li class="w3-padding-16">Nom</li>
							<li class="w3-padding-16">Adresse</li>
							<li class="w3-padding-16">Telephone</li>
							<li class="w3-padding-16">Email</li>
							<li class="w3-light-grey w3-padding-16">
								<button class="w3-button w3-teal w3-padding-large w3-hover-black">Action?</button>
							</li>
						</ul>
					</div>
			        <c:forEach items="${sessionScope.clients }" var="mapClients" varStatus="boucle">
						<div class="w3-quarter w3-margin-bottom">
							<ul
								class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
								<li class="w3-teal w3-xlarge w3-padding-32">Client <c:out value="${boucle.count}"/></li>
								<li class="w3-padding-16"><c:if test="${mapClients.value.firstname ==null}">/</c:if><c:out value="${mapClients.value.firstname}"/></li>
								<li class="w3-padding-16"><c:out value="${mapClients.value.lastname}"/></li>
								<li class="w3-padding-16"><c:out value="${mapClients.value.adress}"/></li>
								<li class="w3-padding-16"><c:out value="${mapClients.value.phoneNumber}"/></li>
								<li class="w3-padding-16"><c:if test="${mapClients.value.email ==null}">/</c:if><c:out value="${mapClients.value.email}"/></li>
								<li class="w3-light-grey w3-padding-16">
									<a class="w3-button w3-teal w3-padding-large w3-hover-black" href="<c:url value="/suppressionClient"> <c:param name="nomClient" value="${mapClients.key}"/> </c:url>">
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
