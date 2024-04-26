<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import="java.util.*" %>
 <%@ page import="java.sql.*" %>
 <%@ page import="com_gwwp.DBManager" %>
 <%@ page import="com_gwwp_dao.DietManager" %>
 <%@ page import="com_gwwp_entity.Diet" %>
  
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild Wildlife Park</title>
</head>
<body>
	<%
		try{
			
			String dt = request.getParameter("DietType");
			String nof = request.getParameter("numberOfFeed");
			int nofpd = Integer.parseInt(nof);
			
			
			DBManager dbMgr = new DBManager();
			dbMgr.getConnection();
			
			Diet d = new Diet (dt,nofpd);
			
			DietManager cMgr = new DietManager();
			int rowAffected = -1;
			
			rowAffected = cMgr.insert(d);
			
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
<% response.sendRedirect("Dietlist.jsp");
%>
</body>
</html>