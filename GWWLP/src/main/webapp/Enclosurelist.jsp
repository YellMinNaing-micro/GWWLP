<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com_gwwp_dao.EnclosureManager"%>
 <%@ page import = "com_gwwp_entity.Enclosure" %>
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
<h1 class = "heading"> Enclosure Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	EnclosureManager cMgr = new EnclosureManager();
	ArrayList<Enclosure> Enclosures = cMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>EnclosureID</th>
            <th>type</th>
            <th>location</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
<%            
	for (Enclosure e : Enclosures) {
		
         //out.println( course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
%>	             

            
         	<tr>
         		<td> <%=e.getEnclosureID()%> </td>
         		<td> <%=e.getType()%> </td>
         		<td> <%=e.getLocation()%> </td>
         		
         		
      
         		
         		
         		<td ><a href="EnclosureEdit.jsp?id=<%=e.getEnclosureID()%>"  class="b">Edit</a></td>
            	<td><a href="EnclosureDelete.jsp?id=<%=e.getEnclosureID()%>"  class="b">Delete</a></td>
            
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