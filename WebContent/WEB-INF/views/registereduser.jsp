<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="resources/styles.css" type="text/css" rel="stylesheet">

<div class="logo">
<img src="resources/images/goodbye_ planet.png">
</div>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirmation Page</title>
</head>
<body>
<div class="transbox">
<h2> Hello ${firstName} ${lastName}, to confirm your details for your registration: </h2>

Your address is: ${address1}
${address2}
${city}
${state}
${zip}
${country}
</div>
<h2>Thank you for registering!</h2>
</body>
</html>