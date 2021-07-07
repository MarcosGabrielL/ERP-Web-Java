<%-- 
    Document   : cadastro_cliente_controller
    Created on : 05/08/2019, 17:16:10
    Author     : Marcos
--%>


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
       
       String erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Patrimonio.getTipo());
     System.out.println(obj_Patrimonio.getDesc());
     System.out.println(obj_Patrimonio.getDesc_detal());
     System.out.println(obj_Patrimonio.getMarca());
     System.out.println(obj_Patrimonio.getModelo());
     System.out.println(obj_Patrimonio.getData());
     System.out.println(obj_Patrimonio.getValor());
     System.out.println(obj_Patrimonio.getLocal());
     System.out.println(obj_Patrimonio.getResponsavel());
     System.out.println(obj_Patrimonio.getObs());
     System.out.println(" --------------------------------");
     boolean flag = false;
     //Verifica dados
     if(obj_Patrimonio.getTipo().toString().equals("") || obj_Patrimonio.getDesc().toString().equals("") 
             || obj_Patrimonio.getDesc_detal().toString().equals("") || obj_Patrimonio.getMarca().toString().equals("")
             || obj_Patrimonio.getModelo().toString().equals("") || obj_Patrimonio.getData().toString().equals("")
             || obj_Patrimonio.getValor().toString().equals("") || obj_Patrimonio.getLocal().toString().equals("")
             || obj_Patrimonio.getResponsavel().toString().equals("") || obj_Patrimonio.getObs().toString().equals("")){
        erro = "Complete todos os campos!";
         flag = false;
     }else{
         try{
            Date data = null;
            Locale locale = new Locale("pt","BR");
            GregorianCalendar calendar = new GregorianCalendar(); 
            java.text.SimpleDateFormat formatador = new java.text.SimpleDateFormat("dd/MM/yyyy",locale);
            data = formatador.parse(obj_Patrimonio.getData().toString());
            
            obj_Patrimonio.setCliente(obj_Login_Bean.getUsername());
            
            //Salva PAtrimonio
            PatrimonioDAO obj_User_DAO = new PatrimonioDAO();
            flag = obj_User_DAO.save(obj_Patrimonio);
            
         }catch(Exception e){
             flag = false;
             erro = "Data invalida";
         }
         
     }
     
    if(flag){
         response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Patrimônio Cadastrado com sucesso!');");
            pw.println("</script>");
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/DpPatrimonio/painel_patrimonio_cadastro.jsp";
    </script>
  <%
}else{
 erro = "Erro no cadastro!";
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
