<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Sign In</title>
    <meta name="viewport" content="width=device-width">
    
   <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet" > 
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js" type="text/javascript"></script>
    
    <link href="${pageContext.request.contextPath}/resources/css/login.css" rel="stylesheet" >

</head>
<body>
	<!-- Start exeprion container -->
	<div class="container">
      <form class="form-signin" method="POST" action="j_spring_security_check" >
        <h2 class="form-signin-heading">Sign In</h2>
        <div class="alert alert-warning alert-dismissable">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <b>Warning!</b> Check your login and password before sign in.
    </div>
    
    <!-- End container -->
    
        <input type="text" class="form-control" placeholder="Username" name="j_username" autofocus required maxlength = "15" >
        <input type="password" class="form-control" placeholder="Password" name="j_password" autofocus required maxlength = "15" >
        <label class="checkbox">
        <input type="checkbox" value="remember-me" name="_spring_security_remember_me"   >Remember me</label>
        <button class="btn btn-lg btn-primary btn-block" type="submit" value="Login">Sign in</button><br>
        <a class="btn pull-right btn-primary btn-xs" href = "<c:url value="/" /> "> Main page</a>
     	<a class="btn pull-left btn-primary btn-xs" href = "<c:url value="/signUp" /> "> Sign Up</a>
      </form>
    </div>

</body>
</html>