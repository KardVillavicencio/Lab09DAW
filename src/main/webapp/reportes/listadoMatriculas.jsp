<%-- 
    Document   : listadoMatriculas
    Created on : 27-oct-2023, 18:14:10
    Author     : Multicomp
--%>

<%@page import="net.sf.jasperreports.engine.JasperRunManager"%>
<%@page import="modelos.Conexion"%>

<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
  Conexion con = new Conexion();
  File reportFile = new File(application.getRealPath("/reportes/listadoMatriculas.jasper"));
  Map parameters = new HashMap();
  //-------------------------------------------
  byte[] bytes = JasperRunManager.runReportToPdf(reportFile.getPath (),
                      parameters, con.Conectar());
 
  response.setContentType("application/pdf");
  response.setContentLength(bytes.length);
  ServletOutputStream ouputStream = response.getOutputStream();
  ouputStream.write(bytes, 0, bytes.length);
  ouputStream.flush();
%>

