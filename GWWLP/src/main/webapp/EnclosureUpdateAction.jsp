<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>

<%@ page import="java.sql.*"%>

<%@ page import="com_gwwp.DBManager"%>

<%@ page import="com_gwwp_dao.EnclosureManager"%>

<%@ page import="com_gwwp_entity.Enclosure"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Update Enclosure</title>

</head>

<body>

<%

String kId = request.getParameter("Enclosure_id");

String kname = request.getParameter("type");


String krank = request.getParameter("location");

out.println(kname);

out.println(krank);


EnclosureManager dao = new EnclosureManager();

Enclosure k = new Enclosure(Integer.parseInt(kId), kname, krank);

int rowsAffected;

try {

rowsAffected = dao.update(k);

out.println("No of rows affected - " + rowsAffected);

} catch (ClassNotFoundException ex) {

out.println(ex.getMessage());

} catch (SQLException e) {

out.println(e.getMessage());

}

%><% response.sendRedirect("Enclosurelist.jsp"); %>

</body>

</html>