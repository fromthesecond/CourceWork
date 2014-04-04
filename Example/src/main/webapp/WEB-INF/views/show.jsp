<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Liberty Games - Welcome</title>

<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" > 
<link href="${pageContext.request.contextPath}/resources/css/databasestyle.css" rel="stylesheet" >


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>


<script src="<c:url value = "/resources/js/up.js"/>" type="text/javascript" ></script> 

</head>
<body class = "bodyy" id = "top" onload = "slide()">

      <div class="masthead divTop">
      <div> 
        <ul class="nav nav-justified menu">
          <li><a href="<c:url value="/" /> ">Home</a></li>
          <li><a href="<c:url value="#" />">Popular</a></li>
          <li class="active"><a href="<c:url value="/show"/>">Games Library</a></li>
          <li><a href="#">Demos</a></li>
          <li><a href="<c:url value="/about"/>">About</a></li>
          <li><a href="<c:url value="/contactUs"/>">Contact</a></li>
          <c:if test = "${name != 'Guest'}">
          		<li><a href="<c:url value="/j_spring_security_logout" /> ">Logout</a></li>
          </c:if>
        </ul>
        <h3 class="text-muted">Liberty Games</h3>
       </div>
      </div>
	
	<c:if test="${name == 'admin' }">
	<ul class="nav nav-tabs">
		  <li class = "active">
           <a href="<c:url value="/show" /> ">Show panel</a>
          </li>
          <li>
            <a href="<c:url value="/admin"/>">Admin panel</a>
          </li>
          <li>
           <a href="<c:url value="/addgame" /> ">Add game panel</a>
          </li>
     </ul>
     </c:if>
     
     <c:if test = "${name != 'Guest' && name != 'admin'}">
     
     <ul class="nav nav-tabs">
		  <li>
           <a href="<c:url value="/profile" /> ">Profile panel</a>
          </li>
          
     </ul>
     </c:if>
        <div class = "div"> 
        <c:forEach items="${listGames}" var="games"> 
			<h3>${games.getNameGame()} <small><a href="<c:url value="/show/app/${games.getId()}" /> ">${games.getNameGame()}</a></small></h3>
			<img class = "img" src="${games.getUrl()}" style="-moz-box-shadow:0 0 10px #000; -webkit-box-shadow:0 0 10px #000; box-shadow:0 0 10px #000;" alt="${games.getNameGame()}" width="283" height="398"> 
			<c:if test="${name == 'admin'}">
				<p> <a href = "delete/${games.id}"> Delete Game</a> </p>
			</c:if>
			<hr>
		</c:forEach>
<div id="back-top" class = "up"><a href = "#top"><img  width="50" height="50" src = "<c:url value="/resources/images/up.png" />"/></a></div>
    	</div>
</body>
</html>