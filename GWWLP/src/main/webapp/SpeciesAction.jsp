<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com_gwwp.DBManager" %>
 <%@ page import="com_gwwp_dao.SpeciesManager" %>
 <%@ page import="com_gwwp_entity.Species" %>
  
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild Wildlife Park</title>
</head>
<body>
	<%
		try{
			
			String st = request.getParameter("speciesTypes");
			String sg = request.getParameter("speciesGropu");
			String sls = request.getParameter("lifeStyle");
			String scs = request.getParameter("conservationStatus");
			
			DBManager dbMgr = new DBManager();
			dbMgr.getConnection();
			
			Species s = new Species(st,sg,sls,scs);
			
			SpeciesManager cMgr = new SpeciesManager();
			int rowAffected = -1;
			
			rowAffected = cMgr.insert(s);
			
			if(rowAffected == 1)
			{
				out.println("One record successfully inserted into gowildwildlifepark table!!!!");
			}
			
			
			
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}catch(SQLException e){
			e.printStackTrace();
		}
	%>
<% response.sendRedirect("Specieslist.jsp");
%>
</body>
</html>