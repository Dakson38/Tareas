<%-- 
    Document   : agregar
    Created on : 16 oct. 2022, 16:11:58
    Author     : CJ
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Añadir Tarea</title>
    </head>
    <body>
        <h1>Tarea</h1>
        <form action="MainServlet" method="post">
            <input type="text" name="tarea" required><br><br>
            <input type="submit" value="Enviar">
        </form>
        <h2>by Jose Carlos Calancha Pacheco</h2>
    </body>
</html>
