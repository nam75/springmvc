<%-- 
    Document   : film_ajouter
    Created on : 23 août 2016, 16:20:00
    Author     : admin
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ajouter un film</h1>
        <form:form modelAttribute="film">
            Titre <form:input path="titre"></form:input><br />
            Année de production <form:input path="anneeProd"></form:input><br />
            
                Sysnopsis <form:textarea path="synopsis"></form:textarea><br />
            <input type="submit" value="Ajouter" />
        </form:form>
        
    </body>
</html>
