<%-- 
    Document   : cadastro_cliente_controller
    Created on : 05/08/2019, 17:16:10
    Author     : Marcos
--%>


<%@page import="Etiqueta.Etiqueta"%>
<%@page import="Bean.Patrimonio"%>
<%@page import="Bean.Login"%>
<%@page import="utils.GerarSenha"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Locale"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.PatrimonioDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Cadastrando</title>
  </head>
  <body>
   <jsp:useBean id="obj_Patrimonio" class="Bean.Patrimonio"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Patrimonio"/>
   <%
       Login obj_Login_Bean =(Login)session.getAttribute("user_session");
       Patrimonio p = new Patrimonio();
       String erro = null;
       
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Patrimonio.getDesc());
     System.out.println(" --------------------------------");
     boolean flag = false;
     //Verifica dados
     if(obj_Patrimonio.getDesc().toString().equals("")){
        erro = "Complete o campo de busca!";
         flag = false;
     }else{
         try{
            //Busca Patrimonio
            PatrimonioDAO pdao = new PatrimonioDAO();
            p = pdao.getPatrimonio_Ref(obj_Patrimonio.getDesc(),obj_Login_Bean.getUsername());

            flag = true; 
        
         }catch(Exception e){
             flag = false;
             erro = "Erro ao Ler informações no banco de dados!";
         }
         
     }
     
    if(flag){
        
         response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Imprimindo...!');");
            pw.println("</script>");
            
            Etiqueta eti = new Etiqueta();
            eti.PegaDados(p);

    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/DpPatrimonio/painel_patrimonio_imprimir";
    </script>
  <%
}else{
    if(erro.equals("")){
        erro = "Erro ao Ler informações no banco de dados!";
    }
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('"+erro+"');");
            pw.println("</script>");
            
  %>
  <script type="text/javascript">
   history.back();
   </script>
  <%
 }
 %>
 </body>
 </html>
