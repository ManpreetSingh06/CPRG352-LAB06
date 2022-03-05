<%-- 
    Document   : register
    Created on : 4-Mar-2022, 7:29:37 PM
    Author     : Monty
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList" method="post">
            
            <label>UserName: </label>
            <input type="text" name="username" value="" placeholder="Enter username">
            <br>
            <br>
            <input type="submit" value="Register Name" >
            <input type="hidden" name="action" value="register">
            
        </form>
        <c:if test="${errormessage}"><p>Please enter username</p></c:if>
    </body>
</html>
