<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Administration</title>
</head>
<body>
hello
${firstName}
<div>
<c:forEach var="myFavs" items="${list}">
			<tr>
				<td>${myFavs.firstName}</td>
				<td>${myFavs.lastName}</td>
				<td>${myFavs.address1}</td>
				<td>${myFavs.address2}</td>
				<td>${myFavs.city}</td>
				<td>${myFavs.state}</td>
				<td>${myFavs.zip}</td>
				<td>${myFavs.country}</td>
				<td>${myFavs.date}</td>
				

			</tr>

		</c:forEach>
		</div>
</body>
</html>