<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link href="${pageContext.request.contextPath}/resources/css/signUp.css" rel="stylesheet" >
<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >

<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>



</head>
<body>	
       <form:form method="post" modelAttribute="user" class = "formCenter" onSubmit = "return check(this)">
			<h3 class="form-signin-heading">Sign Up</h3>
				<div class="alert alert-warning alert-dismissable">
          			<button type="button" class="close" data-dismiss="alert">&times;</button>
          			<b>Warning!</b> Please, remember your login and password! 
 				</div>
        <%-- <form:input path="username" class="form-control" placeholder="Username" /> --%>
        <input type = "text" name = "username" class = "form-control" placeholder = "Username" required maxlength="15" />
        <input type = "password" name = "pass" class = "form-control" placeholder = "Password" required maxlength="15" />
        <input type = "password" class = "form-control" placeholder = "Re-password" required maxlength="15" />
        <input type = "email" name = "email" class = "form-control" placeholder = "Email" required maxlength="20" />
        <input type = "email" class = "form-control" placeholder = "Re-email" required maxlength="20" />
        
        <input type="submit" value="Sign Up" class="btn btn-lg btn-primary btn-block"/>
        <p></p>
        <div><a class="btn pull-right btn-primary btn-xs" href = "<c:url value="/" /> "> Main page</a></div>

		</form:form>  
</body>
</html>