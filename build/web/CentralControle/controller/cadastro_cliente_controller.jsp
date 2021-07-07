<%-- 
    Document   : cadastro_cliente_controller
    Created on : 05/08/2019, 17:16:10
    Author     : Marcos
--%>


<%@page import="Dao.ClienteDAO"%>
<%@page import="utils.GerarSenha"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Locale"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.UserDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Cadastrando</title>
  </head>
  <body>
   <jsp:useBean id="obj_Cliente" class="Bean.Cliente"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Cliente"/>
   <%
       String erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Cliente.getDenominacao());
     System.out.println(obj_Cliente.getEstado());
     System.out.println(obj_Cliente.getNome());
     System.out.println(" --------------------------------");
     boolean flag = false;
     
     obj_Cliente.setBrasao((String)session.getAttribute("brasao"));
     obj_Cliente.setLogo((String)session.getAttribute("logo"));
     obj_Cliente.setCabecalho((String)session.getAttribute("cabecalho"));
     
     //Verifica dados
     if(obj_Cliente.getNome().toString().equals("") || obj_Cliente.getDenominacao().toString().equals("") 
             || obj_Cliente.getEstado().toString().equals("") || obj_Cliente.getCnpj().toString().equals("")
             || obj_Cliente.getTelefone().toString().equals("") || obj_Cliente.getCep().toString().equals("")
             || obj_Cliente.getEndereco().toString().equals("") || obj_Cliente.getNumero().toString().equals("")
             || obj_Cliente.getComplemento().toString().equals("") || obj_Cliente.getBairro().toString().equals("")
             || obj_Cliente.getCidade().toString().equals("")){
        erro = "Complete todos os campos!";
         flag = false;
     }else{
         try{
            
            //Salva cliente
            ClienteDAO obj_User_DAO = new ClienteDAO();
            flag = obj_User_DAO.save(obj_Cliente);
            
         }catch(Exception e){
             flag = false;
             erro = "Data invalida";
         }
         
     }
     
    if(flag){
       
        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Cliente Cadastrado com sucesso!');");
            pw.println("</script>");
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/DpPatrimonio/PainelControle_Cad_Cliente.jsp";
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
