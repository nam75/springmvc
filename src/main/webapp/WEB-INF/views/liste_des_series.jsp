<%-- 
    Document   : liste_des_series
    Created on : 23 août 2016, 15:51:50
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
        <h1>Liste des series</h1>
         <table border="2">
             
            <tr>
                <th>ID</th>
                <th>TITRE</th>
               
            </tr>
            <c:forEach items="${listeSeries}" var="serie">
            <tr>
            
                
                 
                     <td>${serie.id}</td>
                     <td>${serie.titre}</td> 
            
             
            </tr>
           
               </c:forEach> 
        </table>
        
    </body>
</html>
