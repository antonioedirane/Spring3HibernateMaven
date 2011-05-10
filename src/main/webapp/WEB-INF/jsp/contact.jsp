<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><spring:message code="label.titlePage"/></title>
<style type="text/css">
	body {
		font-family: sans-serif;
	}
	.data, .data td {
		border-collapse: collapse;
		border: 1px solid #aaa;
		margin: 2px;
		padding: 2px;
	}
	.data th {
		font-weight: bold;
		background-color: #5C82FF;
		color: white;
	}
</style>
</head>
<body>
	<h2><spring:message code="label.titleApp"/></h2>
	<form:form method="post" action="add.html" commandName="contact">
		<table>
			<tr>
				<td><form:label path="firstName"><spring:message code="label.firstName" /></form:label></td>
				<td><form:input path="firstName"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="lastName"><spring:message code="label.lastName" /></form:label></td>
				<td><form:input path="lastName"></form:input></td>
			</tr>
			<tr>
				<td><form:label path="email"><spring:message code="label.email" /></form:label></td>
				<td><form:input path="email"></form:input></td>
			</tr>			
			<tr>
				<td><form:label path="telephone"><spring:message code="label.telephone" /></form:label></td>
				<td><form:input path="telephone"></form:input></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="<spring:message code="label.addcontact"/>">
				</td>
			</tr>			
		</table>
	</form:form>
	<h3><spring:message code="label.contacts"/></h3>
	<c:if test="${!empty contactList}">
		<table class="data">
			<tr>
				<th><spring:message code="label.fullName"/></th>
				<th><spring:message code="label.email"/></th>
				<th><spring:message code="label.telephone"/></th>
				<th>&nbsp;</th>
			</tr>
			<c:forEach items="${contactList}" var="contact">
				<tr>
					<td>${contact.firstName} ${contact.lastName}</td>
					<td>${contact.email}</td>
					<td>${contact.telephone}</td>
					<td><a href="delete/${contact.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>