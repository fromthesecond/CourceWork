<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Game</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="${pageContext.request.contextPath}/resources/css/signUp.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>

</head>
<body>

 <ul class="nav nav-tabs">
 		  <li>
           	<a href="<c:url value="/show" /> ">Show panel</a>
          </li>
          
          <li>
            <a href="<c:url value="/admin"/>">Admin panel</a>
          </li>
          <li class="active">
           <a href="<c:url value="/addgame" /> ">Add game panel</a>
          </li>
          
 </ul>
      
	 <form:form method="post" modelAttribute="game" class = "formCenter">
				
	 	<form:input path="nameGame" class="form-control" placeholder="Title" />
	 	<form:textarea path = "description" class = "form-control" type = "text" placeholder="Description" rows = "10" />
	 	<form:input path = "url" class = "form-control" type = "text" placeholder = "URL Image"/>
	 	<input type="submit" value="Add Game" class="btn btn-lg btn-primary btn-block"/>
	 	
	 </form:form>
	
</body>
</html>