<%-- 
    Document   : formularioListarCursosPorEstado
    Created on : 24-oct-2023, 14:12:33
    Author     : Multicomp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" 
              href="../webjars/bootstrap/5.0.1/css/bootstrap.min.css" type="text/css" />
    </head>
    <body>
        <div class="card" style="width: 50rem; padding: 30px 0px 0px 30px;">
        <form method="post" action="listadoCursosPorEstado.jsp">
        <input type="hidden" name="accion" value="MOSTRAR">
        <table class="table table-striped table-hover">
            <tr>
                <td>Seleccione Estado:</td>
                <td><select name="estado" size="1">
                        <option value="A">Activo</option>
                        <option value="I">Inactivo</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="right">
                    <input type="submit" class="btn btn-primary" value="Mostrar Reporte">
                </td>
            </tr>
        </table>
        </form>
        </div>
    </body>
</html>

