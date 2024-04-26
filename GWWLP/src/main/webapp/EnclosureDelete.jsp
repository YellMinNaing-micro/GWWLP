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

</head>

<body>

<%

String EnclosureID = request.getParameter("id");

EnclosureManager dao = new EnclosureManager();

int rowsAffected;

try {

rowsAffected = dao.delete(Integer.parseInt(EnclosureID));

out.println("No of rows affected - " + rowsAffected);

} catch (ClassNotFoundException ex) {

out.println(ex.getMessage());

} catch (SQLException e) {

out.println(e.getMessage());

}

%><% response.sendRedirect("Enclosurelist.jsp"); %>

</body>

</html>