<%-- 
    Author     : VICTOR
--%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergente.modelo.Producto"%>
<%
    List<Producto> lista = (List<Producto>) request.getAttribute("lista");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page - VICTOR HUGO LIMACHI MAMANI</title>
    </head>
    <body>
        <h1>PRODUCTOS</h1>

        <p>
            <a href="MainController?op=nuevo">Nuevo Producto</a>
        </p>

        <table border="3">
            <tr>
                <th>Id</th>
                <th>Producto</th>
                <th>Precio</th>
                <th>Cantidad</th>
                <th>Modificar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.producto}</td>
                    <td>${item.precio}</td>
                    <td>${item.cantidad}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Estas seguro de eliminar'))">Eliminar</a></td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>
