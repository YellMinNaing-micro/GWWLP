<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>

<%@ page import="java.sql.*"%>

<%@ page import="com_gwwp.DBManager"%>

<%@ page import="com_gwwp_dao.KeeperManager"%>

<%@ page import="com_gwwp_entity.Keeper"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="ISO-8859-1">

<title>Update Keeper</title>

</head>

<body>

	<%
	String kId = request.getParameter("keeper_id");

	String kname = request.getParameter("name");

	String kdob = request.getParameter("DOB");

	String krank = request.getParameter("rank");

	out.println(kname);

	out.println(krank);

	out.println(kdob);

	KeeperManager dao = new KeeperManager();

	Keeper k = new Keeper(Integer.parseInt(kId), kname, kdob, krank);

	int rowsAffected;

	try {

		rowsAffected = dao.update(k);

		out.println("No of rows affected - " + rowsAffected);

	} catch (ClassNotFoundException ex) {

		out.println(ex.getMessage());

	} catch (SQLException e) {

		out.println(e.getMessage());

	}
	%>
	<%
	response.sendRedirect("Keeperlist.jsp");
	%>

</body>

</html>