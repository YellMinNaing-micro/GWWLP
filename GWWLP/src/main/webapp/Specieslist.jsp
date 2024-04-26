<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com_gwwp_dao.SpeciesManager"%>
 <%@ page import = "com_gwwp_entity.Species" %>
 <%@ page import = "com_gwwp.DBManager" %>
 
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild Wildlife Park</title>
<head>
<style>
.heading {
color : white; 
text-align: center;
}
.b{
text-decoration: none;
}
 </style>
<body>
<jsp:include page="Navbar.jsp"></jsp:include>
<h1 class="heading"> Species Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	SpeciesManager cMgr = new SpeciesManager();
	ArrayList<Species> Speciess = cMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>speciesId</th>
            <th>speciesTypes</th>
            <th>speciesGropu</th>
            <th>lifeStyle</th>
            <th>conservationStatus</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
<%            
	for (Species s : Speciess) {
		
         //out.println( course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
%>	             

            
         	<tr>
         		<td> <%=s.getSpeciesID()%> </td>
         		<td> <%=s.getSpeciesTypes()%> </td>
         		<td> <%=s.getSpeciesGropu()%> </td>
         		<td> <%=s.getLifeStyle()%> </td>
         		<td> <%=s.getConsevationStatus()%> </td>
         		
      
         		
         		
         		<td><a href="edit_enclosure.jsp?id=<%=s.getSpeciesID()%>" class="b">Edit</a></td>
            	<td><a href="delete_enclosure.jsp?id=<%=s.getSpeciesID()%>" class="b">Delete</a></td>
            
         	</tr>
        
<%	             
	}   

%>
	 </table>
<%
} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}




%>
</body>
</html>