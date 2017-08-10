

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accueil Tp Fil Rouge</title>
</head>
<body>
	<h1> Application fil rouge</h1>
	<h2>Faites un choix</h2>
	
	<%@include file="WEB-INF/include/variableURL.jsp"%> 
	
	<p><a href=<c:out value="${lienClient}"/>>Créer un patient?</a></p><br/>
	<p><a href=<c:out value="${lienCommande}"/>>Créer un patient et sa commande?</a> </p><br/>
	<p>${requestScope.message}</p>
	<p>${requestScope.message1}</p>
</body>
</html>

