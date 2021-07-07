<%-- 
    Document   : cadastro_cliente_controller
    Created on : 05/08/2019, 17:16:10
    Author     : Marcos
--%>


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
   <jsp:useBean id="obj_Cliente" class="Bean.User"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Cliente"/>
   <%
       String erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Cliente.getUsername());
     System.out.println(obj_Cliente.getMunicipio());
     System.out.println(obj_Cliente.getEmail());
     System.out.println(obj_Cliente.getCoemail());
     System.out.println(obj_Cliente.getCpf());
     System.out.println(obj_Cliente.getNome());
     System.out.println(obj_Cliente.getRg());
     System.out.println(obj_Cliente.getOrgaorg());
     System.out.println(obj_Cliente.getNmatricula());
     System.out.println(obj_Cliente.getTelefone());
     System.out.println(obj_Cliente.getCodigo());
     System.out.println(obj_Cliente.getSenha());
     System.out.println(obj_Cliente.getCosenha());
     System.out.println(obj_Cliente.getTagnfc());
     System.out.println(obj_Cliente.getPergunta());
     System.out.println(obj_Cliente.getResposta());
     System.out.println(" --------------------------------");
     boolean flag = false;
     //Verifica dados
     if(obj_Cliente.getUsername().toString().equals("") || obj_Cliente.getMunicipio().toString().equals("") 
             || obj_Cliente.getEmail().toString().equals("") || obj_Cliente.getCoemail().toString().equals("")
             || obj_Cliente.getCpf().toString().equals("") || obj_Cliente.getNome().toString().equals("")
             || obj_Cliente.getRg().toString().equals("") || obj_Cliente.getOrgaorg().toString().equals("")
             || obj_Cliente.getNmatricula().toString().equals("") || obj_Cliente.getTelefone().toString().equals("")
             || obj_Cliente.getCodigo().toString().equals("") || obj_Cliente.getSenha().toString().equals("")
             || obj_Cliente.getCosenha().toString().equals("") || obj_Cliente.getTagnfc().toString().equals("")
             || obj_Cliente.getPergunta().toString().equals("") || obj_Cliente.getResposta().toString().equals("")){
        erro = "Complete todos os campos!";
         flag = false;
     }else{
         try{
             
            //obj_Cliente.setUsername(obj_Cliente.getEmail());
           // GerarSenha gera_senha = new GerarSenha();
           // obj_Cliente.setPassword(gera_senha.gerarSenhaQtd(8));
            
            //Salva cliente
            UserDAO obj_User_DAO = new UserDAO();
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
            pw.println("alert('Usuario Cadastrado com sucesso!');");
            pw.println("</script>");
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/DpPatrimonio/PainelControle_Cad_Usuario.jsp";
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
