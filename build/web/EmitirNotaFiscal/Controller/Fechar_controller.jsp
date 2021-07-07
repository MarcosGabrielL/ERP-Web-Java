<%-- 
    Document   : Sign_in_controller
    Created on : 05/08/2019, 13:39:31
    Author     : Marcos
--%>

<%@page import="Bean.Caixa"%>
<%@page import="Dao.CaixaDAO"%>
<%@page import="Bean.User"%>
<%@page import="Bean.Cliente"%>
<%@page import="japplets.EmitirNFCE"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.LoginDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  </head>
  <body>
   <jsp:useBean id="obj_Login_Bean" class="Bean.Caixa"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Login_Bean"/>
   <%
    
     boolean flag = false;
     String erro = "erro";
     
     User usuario = (User)session.getAttribute("user_session");
     
     
     CaixaDAO cdao = new CaixaDAO();
     for(Caixa c : cdao.read()){
         if(c.getCliente().equals(usuario.getRazao())){
             if(c.getUsuarioatt().equals(usuario.getUser())){
                 if(c.getStatus() != null){
                     if(c.getStatus().equals("ativo")){
                         obj_Login_Bean.setStatus("inativo");
                         obj_Login_Bean.setTipo(c.getTipo());
                         obj_Login_Bean.setCliente(usuario.getRazao());
                         obj_Login_Bean.setUsuarioatt("inativo");
                         obj_Login_Bean.setOperador(""+c.getIdcaixa());
                         obj_Login_Bean.setLoja(c.getLoja());
                        flag = cdao.updateStatus(obj_Login_Bean);
                     }
                 }
             }
         }
     }
     
    if(flag){
        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Caixa Fechado com sucesso!');");
            pw.println("</script>");
         %>
  <script type="text/javascript">
   window.location.href="http://localhost:8080/Alba/EmitirNotaFiscal/Entrar_Caixa.jsp";
   </script>
  <%
        
}else{
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('"+erro+"');");
            pw.println("</script>");
            
  %>
  <script type="text/javascript">
   window.location.href="http://localhost:8080/Alba/EmitirNotaFiscal/Entrar_Caixa.jsp";
   </script>
  <%
 }
 %>
 </body>
 </html>
