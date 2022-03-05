<%-- 
    Document   : shoppinglist
    Created on : 4-Mar-2022, 7:29:52 PM
    Author     : Monty
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List-User</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        
        <p>Hello ${username}   &#x1F60A</p>
        <a href="<c:url value="/ShoppingList"><c:param name="action" value="Logout"/>
           </c:url>">Logout</a>
        
        <h3>LIST</h3>
        <form action="ShoppingList" method="post">
            <label>Add Item:</label>
            <input type="text" name="item" value="" placeholder="Enter item name">
            <input type="submit" value="Add">
             <input type="hidden" name="action" value="add">
        </form>
        
        
        <form action="ShoppingList" method="post">
        <c:forEach items="${itemlist}" var="item">
            <li><input type="radio" name="itemname" value=${item}>${item}</li>
        </c:forEach><br>
            <input type="submit" value="Delete">
             <input type="hidden" name="action" value="delete">
        </form>
        
    </body>
</html>
