<%@ include file="include/header.jsp" %>

 
  <!-- Résumé d'études en cours-->
  <div class="w3-container w3-padding-large" style="margin-bottom:32px">
    <!-- Pricing Tables -->
    <div class="w3-row-padding" style="margin:0 -16px">
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Information Client</li>
          <li class="w3-padding-16">Prenom: <c:out value="${client.firstname}"/></li>
          <li class="w3-padding-16">Nom: <c:out value="${client.lastname}"/></li>
          <li class="w3-padding-16">Adresse: <c:out value="${client.adress}"/></li>
          <li class="w3-padding-16">Telephone: <c:out value="${client.phoneNumber}"/></li>
          <li class="w3-padding-16">Email: <c:out value="${client.email}"/></li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/creationClient'">Modification?</button>
          </li>
          <li class="w3-padding-16">Création?: ${form.resultat}</li>
        </ul>
      </div>
      
      <div class="w3-third w3-margin-bottom">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-teal w3-xlarge w3-padding-32">Données</li>
          <li class="w3-padding-16">Date</li>
          <li class="w3-padding-16">Montant</li>
          <li class="w3-padding-16">Mode de Paiement</li>
          <li class="w3-padding-16">Statut du Paiement</li>
          <li class="w3-padding-16">Mode de livraison</li>
          <li class="w3-padding-16"> Statut de livraison</li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/creationCommande'">Ajouter une commande?</button>
          </li>
          <li class="w3-padding-16">Création?</li>
        </ul>
      </div>
      
     <div class="w3-third">
        <ul class="w3-ul w3-border w3-white w3-center w3-opacity w3-hover-opacity-off">
          <li class="w3-black w3-xlarge w3-padding-32">Commande 1</li>
          <li class="w3-padding-16"><c:out value="${commande.dateCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.montantCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.modedePaiementCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.statutPaiementCommande}"/></li>
          <li class="w3-padding-16"><c:out value="${commande.modeLivraisonCommande}"/></li>
           <li class="w3-padding-16"><c:out value="${commande.statutLivraisonCommande}"/></li>
          <li class="w3-light-grey w3-padding-24">
            <button class="w3-button w3-teal w3-padding-large w3-hover-black" onclick="location='/TpFilRouge/creationCommande'">Modification</button>
          </li>
          <li class="w3-padding-16">${formCommande.resultat}</li>
        </ul>
      </div>
    </div>
  </div>
 
  <!-- Pagination -->
  <div class="w3-center w3-padding-32">
    <div class="w3-bar">
      <a href="#" class="w3-bar-item w3-button w3-hover-black">«</a>
      <a href="#" class="w3-bar-item w3-black w3-button">1</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">2</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">3</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">4</a>
      <a href="#" class="w3-bar-item w3-button w3-hover-black">»</a>
    </div>
  </div>

  <!-- Images of Me -->
  <div class="w3-row-padding w3-padding-		 <c:import url="/inc/variableURL.jsp" />16" id="about">
    <div class="w3-col m6">
      <img src="/w3images/avatar_g.jpg" alt="Me" style="width:100%">
    </div>
    <div class="w3-col m6">
      <img src="/w3images/me2.jpg" alt="Me" style="width:100%">
    </div>
  </div>

  <div class="w3-container w3-padding-large" style="margin-bottom:32px">
    <h4><b>Service de radiothérapie</b></h4>
    <p>Just me, myself and I, exploring the universe of unknownment. I have a heart of love and an interest of lorem ipsum and mauris neque quam blog. I want to share my world with you. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla. Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
    <hr>
    
    <h4>Statistiques</h4>
    <!-- Progress bars / Skills -->
    <p>Nombre d'étude en cours</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:95%">95%</div>
    </div>
    <p>Nombre d'études terminées</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:85%">85%</div>
    </div>
    <p>Nombres de données encodées par le service</p>
    <div class="w3-grey">
      <div class="w3-container w3-dark-grey w3-padding w3-center" style="width:80%">80%</div>
    </div>
    <p>
      <button class="w3-button w3-dark-grey w3-padding-large w3-margin-top w3-margin-bottom">
        <i class="fa fa-download w3-margin-right"></i>Download Resume
      </button>
    </p>
    <hr>
  </div>
  
  <!-- Contact Section -->
  <div class="w3-container w3-padding-large w3-grey">
    <h4 id="contact"><b>Envoyer vos remarques</b></h4>
    <div class="w3-row-padding w3-center w3-padding-24" style="margin:0 -16px">
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
        <p>email@email.com</p>
      </div>
      <div class="w3-third w3-teal">
        <p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
        <p>Chicago, US</p>
      </div>
      <div class="w3-third w3-dark-grey">
        <p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
        <p>512312311</p>
      </div>
    </div>
    <hr class="w3-opacity">
    <form action="/action_page.php" target="_blank">
      <div class="w3-section">
        <label>Name</label>
        <input class="w3-input w3-border" type="text" name="Name" required>
      </div>
      <div class="w3-section">
        <label>Email</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      <div class="w3-section">
        <label>Message</label>
        <input class="w3-input w3-border" type="text" name="Message" required>
      </div>
      <button type="submit" class="w3-button w3-black w3-margin-bottom"><i class="fa fa-paper-plane w3-margin-right"></i>Send Message</button>
    </form>
  </div>

  <%@ include file="include/footer.jsp" %>