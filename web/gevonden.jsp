<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.model.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gevonden</title>
<link rel="stylesheet" href="css/sample.css">
</head>
<body>
<jsp:include page="header.jsp"/>
<main>
<p id="boodschap">Je vroeg naar volgende gegevens: ${student.naam} ${student.voornaam} ${student.leeftijd} ${student.studierichting}</p>
</main>

</body>
</html>