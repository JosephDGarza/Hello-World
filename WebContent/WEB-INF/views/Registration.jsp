<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="resources/styles.css" type="text/css" rel="stylesheet">

<h2>Hello there, please register here for Good-Bye Planet</h2>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Good-Bye Planet Registration</title>
</head>
<div class="logo">
<img src="resources/images/goodbye_ planet.png">
</div>
<body>

<div class="transbox">
<form onsubmit="formValidation();" action="registereduser" method="POST">
First Name:	<input type="text" name="firstName" pattern="[a-zA-Z].{1,}" placeholder="John" title="Names can only have letters of the english alphabet" aria-label="John" required> <br>
Last Name:	<input type="text" name="lastName" pattern="[a-zA-Z].{1,}" placeholder="Doe" title="Names can only have letters of the english alphabet" aria-label="Doe" required> <br>
Address1:	<input type="text" name ="address1" pattern="[a-zA-Z0-9].{2,}" title="Please fill in your street address" required> <br>
Address2:	<input type="text" name="address2"> <br>
City:		<input type="text" name="city" pattern="[a-zA-Z].{1,}" title="City can only be letters" required> <br>
Zip:		<input type="text" id="zip" name="zip" pattern="(?=.*\d)*.{5,}" maxlength=9 title="Must be 5 digit zipcode" oninput="zipValidation()" required> <br>
<span id="zipValid"></span>
<fieldset>
   <label for="state">State</label>
			<select id="state" name="state" required><option value="Alabama">Alabama</option><option value="Alaska">Alaska</option><option value="Arizona">Arizona</option><option value="Arkansas">Arkansas</option><option value="California">California</option><option value="Colorado">Colorado</option><option value="Connecticut">Connecticut</option><option value="Delaware">Delaware</option><option value="District of Columbia">District of Columbia</option><option value="Florida">Florida</option><option value="Georgia">Georgia</option><option value="Guam">Guam</option><option value="Hawaii">Hawaii</option><option value="Idaho">Idaho</option><option value="Illinois">Illinois</option><option value="Indiana">Indiana</option><option value="Iowa">Iowa</option><option value="Kansas">Kansas</option><option value="Kentucky">Kentucky</option><option value="Louisiana">Louisiana</option><option value="Maine">Maine</option><option value="Maryland">Maryland</option><option value="Massachusetts">Massachusetts</option><option value="Michigan">Michigan</option><option value="Minnesota">Minnesota</option><option value="Mississippi">Mississippi</option><option value="Missouri">Missouri</option><option value="Montana">Montana</option><option value="Nebraska">Nebraska</option><option value="Nevada">Nevada</option><option value="New Hampshire">New Hampshire</option><option value="New Jersey">New Jersey</option><option value="New Mexico">New Mexico</option><option value="New York">New York</option><option value="North Carolina">North Carolina</option><option value="North Dakota">North Dakota</option><option value="Northern Marianas Islands">Northern Marianas Islands</option><option value="Ohio">Ohio</option><option value="Oklahoma">Oklahoma</option><option value="Oregon">Oregon</option><option value="Pennsylvania">Pennsylvania</option><option value="Puerto Rico">Puerto Rico</option><option value="Rhode Island">Rhode Island</option><option value="South Carolina">South Carolina</option><option value="South Dakota">South Dakota</option><option value="Tennessee">Tennessee</option><option value="Texas">Texas</option><option value="Utah">Utah</option><option value="Vermont">Vermont</option><option value="Virginia">Virginia</option><option value="Virgin Islands">Virgin Islands</option><option value="Washington">Washington</option><option value="West Virginia">West Virginia</option><option value="Wisconsin">Wisconsin</option><option value="Wyoming">Wyoming</option> </select>
   </fieldset>
<!-- State:		<input type="text" name="state" pattern="[a-zA-Z].{1,}" title="State can only be letters" required> <br> -->

<fieldset>
   <label for="country">Country</label>
			<select id="country" name="country" required><option value="US">United States</option></select>
   </fieldset>
<datalist id="country">
<option value="US">
</datalist>
<input type="submit" value="Register">
</form>
</div>

</body>
<script>



function zipValidation() {
var zip = document.getElementById("zip").value;
var invalidZip ="";
if (zip.length < 5 || zip.length > 5 && zip.length < 9) {
invalidZip = "Zip code must be either 5 or 9 digits in legnth";
document.getElementById("zipValid").innerHTML = invalidZip;
}
else{invalidZip = "";
document.getElementById("zipValid").innerHTML = invalidZip;
}

  }
  
function formValidation(){
var zip = document.getElementById("zip").value;
if(zip.length < 5 || zip.length > 5 && zip.length < 9 || zip*0 != 0){
alert ("Valid zip is required");
	event.preventDefault();
    returnToPreviousPage();
    return false;
  }
}
</script>
</html>