<%-- 
    Document   : Sign_in_controller
    Created on : 05/08/2019, 13:39:31
    Author     : Marcos
--%>

<%@page import="Bean.Fiscal"%>
<%@page import="Dao.FiscalDAO"%>
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
       User usuario = (User)session.getAttribute("user_session");
     //System.out.println(obj_Login_Bean.getOperador());
     //System.out.println(obj_Login_Bean.getSenha());
     //System.out.println(obj_Login_Bean.getLoja());
     //System.out.println(obj_Login_Bean.getIdcaixa());
     //System.out.println(obj_Login_Bean.getSerienfce());
     //System.out.println(obj_Login_Bean.getSerienfe());
     System.out.println("-----------Função: " + obj_Login_Bean.getFuncao());
     boolean flag = true;
     String erro = "erro";
     
     String CNPJLoja = null;
     String Razao = null;
     //Pegar o cnpj da loja
     FiscalDAO fdao = new FiscalDAO();
     for(Fiscal f : fdao.read()){
         if(f.getNome().equals(obj_Login_Bean.getLoja())){
             if(f.getRazaosocial().equals("")){
                 flag = false;
                 erro = "Loja sem CNPJ Cadastrado!";
             }else{
             CNPJLoja = f.getCNPJ();
             Razao = f.getRazaosocial();
             }
         }
     }
     try{
        if(Float.parseFloat(obj_Login_Bean.getSerienfce()) < 800){
            if(Float.parseFloat(obj_Login_Bean.getSerienfe()) < 800){

           }else{
               flag = false;
               erro = "Serie deve ser menor que 800!";
           }
        }else{
            flag = false;
            erro = "Serie deve ser menor que 800!";
        }
     }catch(Exception e){
         flag = false;
            erro = "Serie deve ser um numero!";
     }
     try{
        Float a = Float.parseFloat(String.valueOf(obj_Login_Bean.getIdcaixa()));
            
     }catch(Exception e){
         flag = false;
            erro = "Caixa deve ser um numero!";
     }
     
     obj_Login_Bean.setCliente(Razao);
     obj_Login_Bean.setCnpj(CNPJLoja);
     
     CaixaDAO cdao = new CaixaDAO();
     
     
    if(flag){
        
             flag = cdao.creat(obj_Login_Bean);
        
     if(flag){
         response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Caixa Cadastrado com sucesso');");
            pw.println("</script>");
     }
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/Configuracao/Ger_Caixas.jsp";
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
       window.location.href="http://localhost:8080/Alba/Configuracao/Ger_Caixas.jsp";
    </script>
  <%    
  
 }
 %>
 </body>
 </html>
