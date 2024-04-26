<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
 <%@ page import = "java.util.*" %>
 <%@ page import = "java.sql.*" %>
 <%@ page import = "java.util.ArrayList" %>
 <%@ page import = "com_gwwp_dao.KeeperManager"%>
 <%@ page import = "com_gwwp_entity.Keeper" %>
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
<h1 class= "heading"> Keeper Information</h1>
<%


try {
	DBManager dbMgr = new DBManager();
	dbMgr.getConnection();
				
	KeeperManager cMgr = new KeeperManager();
	ArrayList<Keeper> Keepers = cMgr.fetchAll();
%>			
	
    <table border="1">
        <tr>
            <th>KeeperId</th>
            <th>name</th>
            <th>DOB</th>
            <th>rank</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
<%            
	for (Keeper c : Keepers) {
		
         //out.println( course.getCourseId() + "\t" + course.getCourseName() + "\t" + course.getCourseText());
%>	             

            
         	<tr>
         		<td> <%=c.getKeeperID()%> </td>
         		<td> <%=c.getName()%> </td>
         		<td> <%=c.getDOB()%> </td>
         		<td> <%=c.getRank()%> </td>
         		
      
         		
         		
         		<td><a href="KeeperEdit.jsp?id=<%=c.getKeeperID()%>" class="b">Edit</a></td>
            	<td><a href="KeeperDelete.jsp?id=<%=c.getKeeperID()%>" class="b">Delete</a></td>
            
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