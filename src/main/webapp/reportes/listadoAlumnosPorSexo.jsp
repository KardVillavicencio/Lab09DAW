<%-- 
    Document   : listadoAlumnosPorSexo
    Created on : 24-oct-2023, 10:43:10
    Author     : Multicomp
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@ page import="modelos.Conexion" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%
 Conexion con = new Conexion();
 String accion = request.getParameter("accion");
 
if (accion.compareTo ("MOSTRAR") == 0) {
    File reportFile = new File(application.getRealPath( 
                                 "/reportes/listarAlumnosPorSexo.jasper"));
    Map parameters = new HashMap();
    //-------------------------------------------
    String sexo=request.getParameter("sexo");
    parameters.put("p_sexo", sexo);

    byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (),
                      parameters, con.Conectar());
    response.setContentType("application/pdf");
    response.setContentLength(bytes.length);
    ServletOutputStream ouputStream = response.getOutputStream();
    ouputStream.write(bytes, 0, bytes.length);
    ouputStream.flush();
    ouputStream.close();
 }
%>
