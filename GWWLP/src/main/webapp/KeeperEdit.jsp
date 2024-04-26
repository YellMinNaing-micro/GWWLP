<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>

<%@ page import="java.util.*"%>

<%@ page import="java.sql.*"%>

<%@ page import="com_gwwp_dao.KeeperManager"%>

<%@ page import="com_gwwp_entity.Keeper"%>

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
<h3 style="text-align: center">Edit form for keeper</h3>

<form method="POST" action="KeeperUpdateAction.jsp">

<%

String sId = request.getParameter("id");

if (sId == null) {

out.println("Keeper ID is not found");

} else {

int id = Integer.parseInt(sId);

KeeperManager dao = new KeeperManager();

try {

Keeper k = dao.getById(id);

//out.print(k);

%>

<input type="hidden" name="keeper_id" value="<%=k.getKeeperID()%>" />

<br> <br>

<label for="name">Keeper Name</label>

<br>

<input type="text" name="name" id="name"

value="<%=k.getName()%>" required /> <br> <br> 



<label for="DOB">DOB</label>

<br>

<input type="date" name="DOB" id="DOB"

value="<%=k.getDOB()%>" required /> <br> <br> 





<label for="rank">Rank</label> <input

type="text" name="rank" id="rank" value="<%=k.getRank()%>" /> <br> <br>

<button type="submit" value="Update" >Update</button>

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