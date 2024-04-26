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
<form action="DietAction.jsp">
		Diet Type: <input type="text" name="DietType" required><br><br>
		Number Of Feed: <input type="number" name="numberOfFeed" required><br><br>
		
		<input type="submit" value="Save">
		<input type="reset" value="Clear">
	</form>

</body>
</html>