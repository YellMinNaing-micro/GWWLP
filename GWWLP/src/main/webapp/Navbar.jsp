<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Go Wild Wildlife Park</title>
<style>
.heading { color : white;
}
</style>
</head>
<body>
<ul>
  <li><a class="active" href="Index.jsp">Home</a></li>
  
   <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Animal</a>
    <div class="dropdown-content">
      <a href="Animallist.jsp">View and Edit Animal</a>
      <a href="Animal.jsp">Add Animal</a>
    </div>
  </li>
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Keeper</a>
    <div class="dropdown-content">
      <a href="Keeperlist.jsp">View and Edit Keeper</a>
      <a href="Keeper.jsp">Add Keeper</a>
    </div>
  </li>
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Enclosure</a>
    <div class="dropdown-content">
      <a href="Enclosurelist.jsp">View and Edit Enclosure</a>
      <a href="Enclosure.jsp">Add Enclosure</a>
    </div>
  </li>
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Diet</a>
    <div class="dropdown-content">
      <a href="Dietlist.jsp">View and Edit Diet</a>
      <a href="Diet.jsp">Add Diet</a>
    </div>
  </li>
  
  <li class="dropdown">
    <a href="javascript:void(0)" class="dropbtn">Species</a>
    <div class="dropdown-content">
      <a href="Specieslist.jsp">View and Edit Species</a>
      <a href="Species.jsp">Add Species</a>
    </div>
  </li>
 
</ul>
<br><br>



</body>
</html>