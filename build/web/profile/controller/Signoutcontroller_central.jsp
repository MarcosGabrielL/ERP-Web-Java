<%-- 
    Document   : Signoutcontroller
    Created on : 05/08/2019, 15:20:57
    Author     : Marcos
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
session.removeAttribute("user_session");
response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Saiu com sucesso');");
            pw.println("</script>");
%>
<script type="text/javascript">
 window.location.href="http://localhost:8080/DpPatrimonio/loginCentral.jsp";
</script>
