<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: КЕП
  Date: 23.08.2017
  Time: 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<table align="center" style="padding-top: 10%; font-family: monospace">
    <form:form action="${contextPath}/registration" method="POST" modelAttribute="userForRegist">
        <tr><td><h2 align="center" style=" font-size: 20px;">Create your account</h2></td></tr>
        <tr><td><span style="font: 13px Arial; color: green;  padding-left: 8px">${message}</span></td></tr>
        <tr><td><span style="font: 13px Arial; color: red"><form:errors path="login"></form:errors></span></td></tr>
        <tr><td><span style="font: 13px Arial; color: red"><form:errors path="password"></form:errors></span></td></tr>
        <spring:bind path="login">

            <tr>
            <td align="center"><form:input cssStyle="font-size: 15px" type="text" path="login" placeholder="Login" autofocus="true" required="required"/></td>
            </tr>
        </spring:bind>

        <spring:bind path="password">
            <tr>
                <td align="center" style="padding-top: 5px"><form:input cssStyle="font-size: 15px" type="password" path="password" placeholder="Password" required="required"/></td>
            </tr>

        </spring:bind>


        <tr>
            <td align="center" style="padding-top: 10px">
                <button type="submit" style="height: 25px; width: 60px; font-family: monospace; font-size: 13px">Create</button>
            </td>
        </tr>
        <tr><td style="padding-top: 20px"><a href="${contextPath}" style="color: cadetblue; font-size: 14px; text-decoration: none; padding-left: 5px">Go back...</a></td></tr>
    </form:form></table>
</body>
</html>
