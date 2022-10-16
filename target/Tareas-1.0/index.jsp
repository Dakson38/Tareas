<%-- 
    Document   : index
    Created on : 16 oct. 2022, 15:41:11
    Author     : CJ
--%>
<%@page import="java.util.ArrayList"%>
<%
    if(session.getAttribute("tareas") == null){
        ArrayList<String> lisaux = new ArrayList<String>();
        session.setAttribute("tareas", lisaux);
    }
    ArrayList<String> tareas = (ArrayList<String>)session.getAttribute("tareas");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tareas Pendientes</title>
    </head>
    <body>
        <h1>Tareas Pendientes</h1>
        <a href="MainServlet?op=nuevo" >NUEVO</a>
        <form action="MainServlet" method="get">
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Tarea</th>
                <th>Compleatado</th>
                <th></th>
            </tr>
            <%
                int id = 1;
                if(tareas != null){
                    for (String tarea : tareas) {
            %>
            
            <tr>
                
                    <input type="hidden" name="op" value="eliminar">
                    <input type="hidden" name="id" value="<%=id-1 %>">
                    <td><%=id %></td>
                    <td><%= tarea %></td>
                    <td><input type="checkbox" name="completado" value="completado"> </td>
                    <td><input type="submit" value="ELIMINAR"></td>
                     
            </tr>
            
            <%
                        id++;
                    }
                }
            %>
        </table>
        </form>
        <h2>by Jose Carlos Calancha Pacheco</h2>
    </body>
</html>
