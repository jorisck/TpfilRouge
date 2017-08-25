                <fieldset>
                    <legend>Informations client</legend>
    
                    <label for="nomClient">Nom <span class="requis">*</span></label>
                    <input type="text" id="nomClient" name="lastname" value="<c:out value="${client.lastname}"/>" size="30" />
                     <span class="erreur">${form.erreurs['lastname']}</span>
                    <br />
                    
                    <label for="prenomClient">Prénom </label>
                    <input type="text" id="prenomClient" name="firstname" value="<c:out value="${client.firstname}"/>" size="30" maxlength="20" />
                    <span class="erreur">${form.erreurs['firstname']}</span>
                    <br />
    
                    <label for="adresseClient">Adresse de livraison <span class="requis">*</span></label>
                    <input type="text" id="adresseClient" name="adress" value="<c:out value="${client.adress}"/>" size="30" maxlength="20" />
                    <span class="erreur">${form.erreurs['adress'] }</span>
                    <br />
    
                    <label for="telephoneClient">Numéro de téléphone <span class="requis">*</span></label>
                    <input type="text" id="telephoneClient" name="phoneNumber" value="<c:if test="${client.phoneNumber != 0}"><c:out value="${client.phoneNumber}"/></c:if>" size="30" maxlength="20" />
                    <span class="erreur">${form.erreurs['phoneNumber'] }</span>
                    <br />
                    
                    <label for="emailClient">Adresse email</label>
                    <input type="email" id="emailClient" name="email" value="<c:out value="${client.email}"/>" size="30" maxlength="60" />
                    <span class="erreur">${form.erreurs['email']}</span>
                    <br />
                </fieldset>