<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Go Wild Wildlife Park</title>
</head>
<body >
<jsp:include page="Navbar.jsp"></jsp:include>
	<form action="AnimalAction.jsp">
		Name: <input type="text" name="name" required><br> <br>

		<labelfor="gender">Gender:</label> 
		<lable for="genderM">M</lable>
		<input type="radio" id="genderM" name="gender" value="M" required>
		 &nbsp;&nbsp;&nbsp;
		<lable for="genderF">F</lable> 
		<input type="radio" id="genderF" name="gender" value="F" required>
		
		<br><br>


		Arrival Year: <input type="number" name="arrivalYear" required>
		<br>
		<br>
		Keeper ID: <input type="number" name="keeperID" required> <br>
		<br>
		Enclosure ID: <input type="number" name="enclosureID" required>
		<br>
		<br>
		Diet ID: <input type="number" name="dietID" required> <br>
		<br>
		Species ID: <input type="number" name="speciesID" required> <br>
		<br>

		<input type="submit" value="Save"> <input type="reset"
			value="Clear">
	</form>

</body>
</html>