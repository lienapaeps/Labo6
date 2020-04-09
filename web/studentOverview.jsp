<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="domain.model.Student"%>
<%@page import="java.util.Collection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/sample.css">
<meta charset="UTF-8">
<title>Overzicht Studenten</title>
</head>
<body>
<jsp:include page="header.jsp">
	<jsp:param	name="acutal" value="overzicht"/>
</jsp:include>

	<main id="container">
	<article>
		<h2>Overzicht studenten</h2>
	<c:choose>
		<c:when test="${not empty students}">

		<table id="overview">
			<tr>
				<th>Naam</th>
				<th>Voornaam</th>
				<th class="getal">Leeftijd</th>
				<th>Studierichting</th>
				<th>Verwijder</th>
			</tr>

			<c:forEach var="student" items="${students}">
				<td>${student.naam}</td>
				<td>${student.voornaam}</td>
				<td class="getal">${student.leeftijd}</td>
				<td>${student.studierichting}</td>
				<td><a href="StudentInfo?command=verwijder&naam=${param.naam}&voornaam=${param.voornaam}&leeftijd=${param.leeftijd}&studierichting=${param.studierichting}">Verwijder</a></td>
			</tr>
			</c:forEach>
		</table>

		</c:when>
		<c:otherwise>
			<p>Er zijn nog geen studenten toegevoegd.</p>
		</c:otherwise>
	</c:choose>

	</article>
	</main>
</body>
</html>