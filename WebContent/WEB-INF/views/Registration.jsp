<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<h2>Hello there, please register here for Good-Bye Planet</h2>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Good-Bye Planet Login</title>
</head>
<body>
<form action="registereduser" method="POST">
First Name:	<input type="text" name="firstName" pattern="[a-zA-Z]" placeholder="John" title="Names can only have letters of the english alphabet" aria-label="John" required> <br>
Last Name:	<input type="text" name="lastName" pattern="[a-zA-Z]" placeholder="Doe" title="Names can only have letters of the english alphabet" aria-label="Doe" required> <br>
Address1:	<input type="text" name ="address1" pattern="[a-zA-Z0-9].{2,}" required> <br>
Address2:	<input type="text" name="address2"> <br>
City:		<input type="text" name="city" pattern="[a-zA-Z]" title="City can only be letters" required> <br>
State:		<input type="text" name="state" pattern="[a-zA-Z]" title="State can only be letters" required> <br>
Zip:		<input type="text" name="zip" pattern="[0-9]*.{5}" title="Must be 5 digit zipcode" required> <br>
Country:	<input list="country" name="country" required>
<datalist id="country">
<option value="USA">
</datalist>
</form>
${hw}
</body>
</html>