<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com_gwwp_dao.AnimalManager"%>
 <%@ page import = "com_gwwp_entity.Animal" %>
 <%@ page import = "com_gwwp.DBManager" %>
 
 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Go Wild Wildlife Park</title>
<style>
.heading {
color : white; 
text-align: center;
}
.b{
text-decoration: none;
}
 </style>
</head>
<body>
<jsp:include page="Navbar.jsp"></jsp:include>
<h1 class ="heading"> Animal Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	AnimalManager cMgr = new AnimalManager();
	ArrayList<Animal> Animals = cMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>animalID</th>
            <th>name</th>
            <th>gender</th>
            <th>arrivalYear</th>
            <th>keeperID</th>
            <th>enclosureID</th>
            <th>dietID</th>
            <th>speciesID</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
<%            
	for (Animal a : Animals) {
		
         //out.println( course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
%>	             

            
         	<tr>
         		<td> <%=a.getAnimalID()%> </td>
         		<td> <%=a.getName()%> </td>
         		<td> <%=a.getGender()%> </td>
         		<td> <%=a.getArrivalYear()%> </td>
         		<td> <%=a.getKeeperID()%> </td>
         		<td> <%=a.getEnclosureID()%> </td>
         		<td> <%=a.getDietID()%> </td>
         		<td> <%=a.getSpeciesID()%> </td>
         		
      
         		
         		
         		<td><a href="edit_enclosure.jsp?id=<%=a.getAnimalID()%>" class="b">Edit</a></td>
            	<td><a href="delete_enclosure.jsp?id=<%=a.getAnimalID()%>" class="b">Delete</a></td>
            
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