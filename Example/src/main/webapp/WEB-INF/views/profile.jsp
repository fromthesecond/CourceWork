<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" > 
<link href="${pageContext.request.contextPath}/resources/css/databasestyle.css" rel="stylesheet" > 


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
<script src="<c:url value = "/resources/js/up.js"/>" type="text/javascript" ></script> 
<script src="<c:url value = "/resources/js/showCommentHide.js"/>" type="text/javascript" ></script> 

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>

</head>
<body class = "bodyy" id = "top" onload = "slide()">

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

	<div class = "div">
		<h3 align = "center" >Welcome, ${userInfo.getUsername()}</h3>
		<h4 align = "right">${userInfo.getEmail()}</h4>
		<h5 align = "right">Identificator : ${userInfo.getId()}</h5>
		
		
		<c:if test="${ not empty orders}">
		<h3>${userInfo.getUsername()} orders</h3>
			
				<c:forEach items = "${orders}" var = "o">
				<div class = "divBorder">
					<p>Name of the item: ${o.getOrderGame()}</p>
					<p>Customer: ${o.getOrderUser()}</p>
					<p>Price of single order: ${o.getPriceOrder()} USD</p>
					<p>Purchase date: ${o.date}</p>
					<a href = "<c:url value="/delOrder/${o.id}"/>">Cancel order</a>
				</div>
				</c:forEach>
		</c:if>	
		
		<br>
		<a href="#" id="showHideContent">Show/Hide comments</a>
		
		<div id="content" style="display:none;">
		
		<c:if test="${comments != 'emptyList' }">
		   <c:forEach items = "${comments}" var = "c">
		   
		   	<div class = "divBorder">
		   			<h4 align = "right" >ID in system: ${c.id}</h4>
		   			<h5>Created: ${c.date}</h5>
		   			<h4 class = "h">${c.title}</h4>
		   			<textarea class = "backarea" disabled readonly wrap = "hard" >${c.comment}</textarea>
		   			<a href = "<c:url value="/deleteComment/${c.id}"/>">Delete comment</a>
		    </div>
		   <p></p>
		   </c:forEach>
		</c:if>
		
		<c:if test="${comments == 'emptyList' }">
			<h5>No comments yet</h5>
		</c:if>
		
<div id="back-top" class = "up"><a href = "#top"><img  width="50" height="50" src = "<c:url value="/resources/images/up.png" />"/></a></div>

		</div>
	</div>
	
</body>
</html>