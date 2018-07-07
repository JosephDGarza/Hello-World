<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<div class="logo">
<img src="resources/images/goodbye_ planet.png">
</div>
<link href="https://fonts.googleapis.com/css?family=Kanit"
	rel="stylesheet">
<link href="resources/styles.css" type="text/css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Administration</title>
</head>
<body>

<table border="1">
	<tr>
	<th>First name</th>
	<th>Last name</th>
	<th>Address1</th>
	<th>Address2</th>
	<th>City</th>
	<th>State</th>
	<th>Zip</th>
	<th>Country</th>
	<th>Date</th>
	</tr>
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
		</table>

	</main>
</body>
</html>