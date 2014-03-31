<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<!-- Redirect link to show.jsp from login.jsp, without home.jsp
	link need to more representative vision
-->
<title>Hello from Home</title>

<link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet" >

</head>
<body>
	<h1 class = "body">Sweet Home!*</h1>
	<a href="<c:url value="/show"/>">Show Games</a>
</body>
</html>
