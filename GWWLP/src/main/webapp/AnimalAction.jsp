<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com_gwwp.DBManager" %>
 <%@ page import="com_gwwp_dao.AnimalManager" %>
 <%@ page import="com_gwwp_entity.Animal" %>
  
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild Wildlife Park</title>
</head>
<body>
	<%
		try{
			
			String an = request.getParameter("name");
			String ag = request.getParameter("gender");
			String aay = request.getParameter("arrivalYear");
			
			String kid = request.getParameter("keeperID");
			int kidd = Integer.parseInt (kid);
			String eid = request.getParameter("enclosureID");
			int eidd = Integer.parseInt (eid);
			String did = request.getParameter("dietID");
			int didd = Integer.parseInt (did);
			String sid = request.getParameter("speciesID");
			int sidd = Integer.parseInt (sid);
			
			DBManager dbMgr = new DBManager();
			dbMgr.getConnection();
			
			Animal a = new Animal(an,ag,aay,kidd,eidd,didd,sidd);
			
			AnimalManager cMgr = new AnimalManager();
			int rowAffected = -1;
			
			rowAffected = cMgr.insert(a);
			
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
<% response.sendRedirect("Animallist.jsp");
%>
</body>
</html>