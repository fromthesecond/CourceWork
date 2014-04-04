<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>${byId.getNameGame()}</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" > 
<link href="${pageContext.request.contextPath}/resources/css/databasestyle.css" rel="stylesheet" > 


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
<script src="<c:url value = "/resources/js/showCommentHide.js"/>" type="text/javascript" ></script> 
<script src="${pageContext.request.contextPath}/resources/js/up.js" type="text/javascript" ></script> 


</head>
<body class = "bodyy">

<div class="masthead divTop">
      <div > 
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
	<a href = "<c:url value="/show" /> ">Back to list</a>
	<h3>${byId.getNameGame()}</h3>
	<div align = "center"><img class = "img" src="${byId.getUrl()}" alt="${byId.getNameGame()}" width="283" height="398"> <br> </div>
	
	<c:choose>
		<c:when test="${name == 'Guest'}">
			<p>Register to buy this game</p>
		</c:when>
		
		<c:when test="${user == 'admin'}">
			Youre admin, you cant buy items <p></p>
		</c:when>
		<c:otherwise>
			<p><a href = "<c:url value="/createOrder/${byId.id}" />"><img height = "50" width = "100" src = "<c:url value = "/resources/images/buy.png"/>" /></a></p>
		</c:otherwise>
	</c:choose>
	
	
	
	<div class = "description"> <p>${byId.getDescription()}</p> </div>
	<br>
	
	<c:forEach items = "${images}"  var = "i">
      <img src="${i.getUrl()}" alt="">
	</c:forEach>
	
	<c:if test="${user  == 'Guest'}">
		${user}
	</c:if>
	
	
	
		<a href="#" id="showHideContent">Show/Hide User Comments</a>
  		<div id="content" style="display:none;">
  		
  	<c:if test="${comment != 'emptyList' }">
    	<c:forEach items="${commentList}" var="comment">
    		<div class = "divBorder">
    			<p class = "author">Author: ${comment.getUserName()}</p>	
    			<p class = "h">${comment.title}</p>
    			<p align="right">Created: ${comment.date}</p>
    			<p style = "text-align: justify;">${comment.comment}</p>
    				<c:if test = "${user == 'admin'}">
    					<a href = "<c:url value="/deleteCommentAsAdmin/${comment.getId()}" /> " >Delete comment</a>
    				</c:if>
    			
    			<hr>
    		</div>
    		<p></p>
    	</c:forEach>	
	</c:if>
		
		<c:if test="${comment == 'emptyList'}">
			<h5>No comments yet</h5>
		</c:if>
    	</div>
		
	<c:if test="${name != 'Guest' }">
		
		<form:form method="post" modelAttribute="comment">
			<input name = "title" type="text" class="form-control" placeholder="Title" required maxlength="250">
			<textarea name = "comment" class="form-control" placeholder="Add review as ${user}" rows="8" cols = "300" required maxlength="4000"></textarea>
			<input name = "rating" type="text" class="form-control" placeholder="Rate (0-100)" required >
			<button class="btn btn-block btn-primary btn-xs" type="submit">Add review</button>
		</form:form>
	</c:if>
	
<div  id="back-top" class = "up" ><a href = "#top"><img  width="50" height="50" src = "<c:url value="/resources/images/up.png" />"/></a></div>
	
</div>
</body>
</html>