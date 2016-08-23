<%-- 
    Document   : liste_des_films
    Created on : 23 août 2016, 14:34:19
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste des Films</h1>
        <table border="2">
            <tr>
                
                <th>ANNEEPROD</th><th>SYNOPSIS</th><th>TITRE</th>
               
            </tr>
            <tr>
                 <c:forEach items="${listeFilms}" var="film">
                     <td>${film.anneeProd}</td>
                     <td>${film.synopsis}</td> 
                     <td>${film.titre}</td> 
            
             
                
            </tr>
           
                </c:forEach>
        </table>
        
      
       
    </body>
</html>
