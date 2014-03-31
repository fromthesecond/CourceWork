<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"/>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js" type="text/javascript"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTTP Status 403 - Access is denied</title>
</head>
<body>
	<h2>HTTP Status 403 - Access is denied</h2>
	<p><img src="http://www.truechristianjewelry.com/product_images/uploaded_images/oops.png" width="300" height="300" alt="error"></p>	
	<p>... but you can <a href = "<c:url value="/"/>"> go to main page </a></p>
</body>
</html>