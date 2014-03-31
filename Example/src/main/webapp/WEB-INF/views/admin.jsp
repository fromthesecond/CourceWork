<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin panel</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" > 
<link href="${pageContext.request.contextPath}/resources/css/databasestyle.css" rel="stylesheet" > 


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>

</head>
<body class = "bodyy">

	<div class="masthead divTop">
      <div > 
        <ul class="nav nav-justified">
        
          <li class="active"><a href="<c:url value="/" /> ">Home</a></li>
          <li><a href="<c:url value="#" />">Popular</a></li>
          <li><a href="<c:url value="/show"/>">Games Library</a></li>
          <li><a href="#">Demos</a></li>
          <li><a href="<c:url value="/about"/>">About</a></li>
          <li><a href="<c:url value="/contactUs"/>">Contact</a></li>
          <li><a href="<c:url value="/j_spring_security_logout" /> ">Logout</a></li>
        </ul>
        <h3 class="text-muted">Liberty Games</h3>
       </div>
      </div>
      
     <ul class="nav nav-tabs">
     	  <li>
           <a href="<c:url value="/show" /> ">Show panel</a>
          </li>
          <li class="active">
            <a href="<c:url value="/admin"/>">Admin panel</a>
          </li>
          <li>
           <a href="<c:url value="/addgame" /> ">Add game panel</a>
          </li>
          
     </ul>
      
	<div class = "div"> 
		
		<c:forEach items="${users}" var="users"> 
					<p> Username:  ${users.getUsername()}</p>
					<p> Password: ${users.getPass()} </p>
					<p> Email: ${users.getEmail()} </p>	
					<p> Role in system: ${users.getRoles()} </p>
					<p> <a class = "mouse"  href="deleteUser/${users.getId()}"> Delete user </a> &nbsp;
					<a  class = "mouse"  href="admin/setRoleAdmin/${users.getId()}"> Set as Admin </a> &nbsp;
					<a  class = "mouse"  href="admin/setRoleUser/${users.getId()}"> Set as User </a> </p>
					<hr>
		</c:forEach>
		
		
	</div>
</body>
</html>