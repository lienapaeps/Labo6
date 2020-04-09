<%--
  Created by IntelliJ IDEA.
  User: paeps
  Date: 9/04/2020
  Time: 16:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <div>
        <h1>Studentenregistratie</h1>
        <nav>
            <ul>
                <li ${param.actual eq 'Home' ? "id=actual" : ""}>
                    <a href="index.html">Home</a></li>
                <li ${param.actual eq 'zoekForm' ? "id=actual" : ""}>
                    <a href="zoekForm.jsp">Zoek een student</a></li>
                <li ${param.actual eq 'studentForm' ? "id=actual" : ""}>
                    <a href="studentForm.jsp">Voeg een student toe</a></li>
                <li ${param.actual eq 'overzicht' ? "id=actual" : ""}>
                    <a href="StudentInfo?command=overzicht">Bekijk alle studenten</a></li>
            </ul>
        </nav>
    </div>
    <img alt="Toscane" src="images/student.jpg">
</header>

