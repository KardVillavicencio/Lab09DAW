<%-- 
    Document   : listarMatriculas
    Created on : 18-oct-2023, 1:17:36
    Author     : Multicomp
--%>

<%@ page import="java.util.*, java.text.SimpleDateFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="webjars/bootstrap/5.0.1/css/bootstrap.min.css" type="text/css" />
</head>
<body>
    <div class="card" style="width: 50rem;padding: 30px 0px 0px 30px;">
        <h4 class="display-8">Listado de Matrículas</h4>
        <form method="POST" action="/WebSistema/controladorPrincipal">
            <input type="hidden" name="accion" value="buscarMatriculas">
            Número de Documento: <input type="text" name="nro_doc">
            <input type="submit" value="Buscar">
        </form>
        
        <h3>Matrículas Registradas:</h3>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th scope="col">Código</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Número de Documento</th>
                    <th scope="col">Código del Alumno</th>
                    <th scope="col">Total</th>
                    <th scope="col">Estado</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${matriculas}" var="matricula">
                    <tr>
                        <td><c:out value="${matricula.codigo}" /></td>
                        <td><c:out value="${matricula.fecha}" /></td>
                        <td><c:out value="${matricula.nro_doc}" /></td>
                        <td><c:out value="${matricula.codigo_alumno}" /></td>
                        <td><c:out value="${matricula.total}" /></td>
                        <td><c:out value="${matricula.estado}" /></td>
                    </tr>

                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>


