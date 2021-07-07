<%-- 
    Document   : Sign_in_controller
    Created on : 05/08/2019, 13:39:31
    Author     : Marcos
--%>

<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.LoginCentralDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  </head>
  <body>
   <jsp:useBean id="obj_Login_Bean" class="Bean.LoginCentral"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Login_Bean"/>
   <%
     System.out.println(obj_Login_Bean.getUsername());
     System.out.println(obj_Login_Bean.getPassword());
     LoginCentralDAO obj_Login_Modal=new LoginCentralDAO();
     boolean flag=obj_Login_Modal.check_user_name(obj_Login_Bean);
    if(flag){
     session.setAttribute("user_session", obj_Login_Bean);
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/PainelControle.jsp";
    </script>
  <%
}else{
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Usúario ou Senha Inválida');");
            pw.println("</script>");
            
  %>
  <script type="text/javascript">
   window.location.href="http://localhost:8080/DpPatrimonio/loginCentral.html";
   </script>
  <%
 }
 %>
 </body>
 </html>
