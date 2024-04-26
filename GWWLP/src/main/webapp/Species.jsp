<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta charset="ISO-8859-1">
<title>Go Wild Wildlife Park</title>
</head>
<body style="background-color:powderblue;">
<jsp:include page="Navbar.jsp"></jsp:include>
<form action="SpeciesAction.jsp">
		Species Types: <input type="text" name="speciesTypes" required><br><br>
		Species Group: <input type="text" name="speciesGropu" required><br><br>
		Life Style: <input type="text" name="lifeStyle" required><br><br>
		Conservation Status: <input type="text" name="conservationStatus" required><br><br>
		
		<input type="submit" value="Save">
		<input type="reset" value="Clear">
	</form>

</body>
</html>