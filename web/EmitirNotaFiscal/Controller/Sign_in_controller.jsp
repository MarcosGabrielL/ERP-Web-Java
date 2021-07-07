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
             if(obj_Login_Bean.getOperador().equals(String.valueOf(c.getIdcaixa())) && 
                     obj_Login_Bean.getSenha().equals(c.getSenha()) &&
                     obj_Login_Bean.getLoja().equals(c.getLoja())){
                 
                 //Verifica se já esta aberto
                 try{
                 if(c.getStatus() != null){
                     if(c.getStatus().equals("ativo")){
                        flag = false;
                        erro = "Caixa já está aberto!";
                     }
                 }else{
                     flag = true;
                 }
                 }catch(Exception e){}
             }
         }
     }
     obj_Login_Bean.setStatus("ativo");
     obj_Login_Bean.setCliente(usuario.getRazao());
     obj_Login_Bean.setUsuarioatt(usuario.getUser());
     //Abre Caixa
     flag = cdao.updateStatus(obj_Login_Bean);
     cdao.updateUsuario(obj_Login_Bean);
     
     
    if(flag){
        
        //Caixa, Loja, Cliente
        session.setAttribute("idcaixa_login", obj_Login_Bean.getOperador());
        session.setAttribute("loja_login", obj_Login_Bean.getLoja());
        session.setAttribute("cliente_login", obj_Login_Bean.getCliente());
       
        //Abre Caixa
        
        //NFE
        if(obj_Login_Bean.getTipo().equals("0")){
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/EmitirNotaFiscal/NFE.jsp";
    </script>
  <%
      //NFCE
      } else if(obj_Login_Bean.getTipo().equals("1")){
 %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/EmitirNotaFiscal/NFCE.jsp";
    </script>
  <%
    }

}else{
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('"+erro+"');");
            pw.println("</script>");
            
  %>
  <script type="text/javascript">
   window.location.href="http://localhost:8080/Alba/login.html";
   </script>
  <%
 }
 %>
 </body>
 </html>
