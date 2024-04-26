<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%@ page import="java.sql.*"%>

<%@ page import="com_gwwp_dao.EnclosureManager"%>

<%@ page import="com_gwwp_entity.Enclosure"%>

<%@ page import="com_gwwp.DBManager"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Insert title here</title>

<link rel="stylesheet" href="style.css">

</head>

<body>

<jsp:include page="Navbar.jsp"></jsp:include>

<h3 style="text-align: center">Edit form for Enclosure</h3>

<form method="POST" action="EnclosureUpdateAction.jsp">

<%

String sId = request.getParameter("id");

if (sId == null) {

out.println("Enclosure ID is not found");

} else {

int id = Integer.parseInt(sId);

EnclosureManager dao = new EnclosureManager();

try {

Enclosure k = dao.getById(id);

//out.print(k);

%>

<input type="hidden" name="Enclosure_id" value="<%=k.getEnclosureID()%>" />

<br> <br>

<label for="name">Enclosure Type</label>

<br>

<input type="text" name="type" id="name" value="<%=k.getType()%>" required /> <br> <br>

<label for="DOB">Location</label><br>

<input type="text" name="location" id="DOB" value="<%=k.getLocation()%>" /><br> <br>

<br> <br>

<input type="submit" value="Update" />

<%

} catch (ClassNotFoundException ex) {

out.println(ex.getMessage());

} catch (SQLException e) {

out.println(e.getMessage());

}

}

%>

</form>

</body>

</html>