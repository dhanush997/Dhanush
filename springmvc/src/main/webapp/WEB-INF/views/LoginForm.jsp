<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
<style>
	.error { 
		color: red; font-weight: bold; 
	}
</style>
</head>
<body>
<jsp:include page="home.jsp"/>
	<div align="center">
		<h2>Form Validation - Login Form</h2>
		<table border="0" width="90%">
		<form:form action="validateLogin" modelAttribute ="userForm" method="post">
				<tr>
					<td align="left" width="20%">
					Email: </td>
					<td align="left" width="40%">
					<form:input path="email" size="30"/></td>
					<td align="left">
					<form:errors path="email" cssClass="error"/></td>
				</tr>
				<tr>
					<td>
					Password: </td>
					<td>
					<form:password path="password" size="30"/></td>
					<td>
					<form:errors path="password" cssClass="error"/></td>
				</tr>
				<tr>
					<td></td>
					<td align="center">
					<input type="submit" value="Login"/></td>
					<td></td>
				</tr>
		</form:form>
		</table>
	</div>
</body>
</html>
  