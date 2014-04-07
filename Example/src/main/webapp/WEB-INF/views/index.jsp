<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Liberty Games - Welcome</title>
    <meta name="viewport" content="width=device-width">
    
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >
    <link href="${pageContext.request.contextPath}/resources/images/bc.jpeg">
    
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
	
	  
</head>
<body>
	
	<div class="container">

      <div class="masthead">
        <h3 class="text-muted">Liberty Games</h3>
        <ul class="nav nav-justified">
          <li class = "active"><a href="<c:url value="/"/>">Home</a></li>
          <li><a href="<c:url value="/show"/>">Popular</a></li>
          <li><a href="<c:url value="/show"/>">Games Library</a></li>
          <li><a href="<c:url value="/show"/>">Demos</a></li>
          <li><a href="<c:url value="/about"/>">About</a></li>
          <li><a href="<c:url value="/contactUs"/>">Contact</a></li>
        </ul>
      </div>
	
      <!-- Jumbotron -->
      <div class="jumbotron">
        <h1>Liberty Games</h1>
        <p class="lead">Play together</p>
        	<p>
        		<a class="btn btn-lg btn-success" href="  <c:url value="/login" />">Sign In</a>
        		<a class="btn btn-lg btn-success" href="  <c:url value="/signUp" />">Sign Up</a>
        	</p>
      </div>
	
	<!-- Slider -->

      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>Advantages</h2>
          <p>Out team provides for all players amazing prices to hotest games from leading developers. All novelties have best compatibility.</p>
          <p><a class="btn btn-primary" href="<c:url value="/about" />">View details &raquo;</a></p>
        </div>
        <div class="col-lg-4">
          <h2>Security</h2>
          <p>We carry out dangerous operations with money and completely subordinate to the legislation. Is conducted full accountability to the government.</p>
          <p><a class="btn btn-primary" href="<c:url value="/about" />">View details &raquo;</a></p>
       </div>
        <div class="col-lg-4">
          <h2>Feedback</h2>
          <p>We are working since 2013 and have a lot of positive feedback, which confirms the high quality of services provided for the sale of digital content.</p>
          <p><a class="btn btn-primary" href="<c:url value="/about" />">View details &raquo;</a></p>
        </div>
      </div>

      <!-- Site footer -->
      <div class="footer">
        <p class = "copyright">&copy; Roman Yakovchuk 2014</p>
      </div>

    </div> <!-- /container -->
</body>
</html>