<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>About Us</title>

<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/images/bc.jpeg">
<link href="${pageContext.request.contextPath}/resources/css/databasestyle.css" rel="stylesheet" > 


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
 
</head>
<body class = "bodyy">

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
      
	<div class = "div"> 
		<h1>Инфа для пацанов!</h1>
	</div>
</body>
</html>