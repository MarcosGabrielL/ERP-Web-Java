<%-- 
    Document   : Sign_in_controller
    Created on : 05/08/2019, 13:39:31
    Author     : Marcos
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="utils.Ferramentas"%>
<%@page import="Dao.UserDAO"%>
<%@page import="Dao.ClienteDAO"%>
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
   <jsp:useBean id="obj_Login_Bean" class="Bean.Cliente"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Login_Bean"/>
   <%
    
     
     boolean flag = false;
     boolean flag1 = false;
     boolean verificador = true;
     String erro = "";
     String modulo = "";
     if(obj_Login_Bean.getNfce()!=null){
         modulo = modulo + obj_Login_Bean.getNfce();
        }
     if(obj_Login_Bean.getNfe()!=null){
         modulo = modulo + obj_Login_Bean.getNfe();
        }
     if(obj_Login_Bean.getGestor()!=null){
         modulo = modulo + obj_Login_Bean.getGestor();
        }
     if(obj_Login_Bean.getMarketplace()!=null){
         modulo = modulo + obj_Login_Bean.getMarketplace();
        }
     if(obj_Login_Bean.getEcommerce()!=null){
         modulo = modulo + obj_Login_Bean.getEcommerce();
        }
     if(obj_Login_Bean.getContabilidade()!=null){
         modulo = modulo + obj_Login_Bean.getContabilidade();
        }
     if(obj_Login_Bean.getAplicativo()!=null){
         modulo = modulo + obj_Login_Bean.getAplicativo();
        }
     
        Locale locale = new Locale("pt","BR");
        GregorianCalendar calendar = new GregorianCalendar(); 
        java.text.SimpleDateFormat formatador = new java.text.SimpleDateFormat("dd/MM/yyyy",locale);
        Date ProximaParcela = new Date();
        obj_Login_Bean.setPacote(modulo);
        obj_Login_Bean.setDatainicio(formatador.format(ProximaParcela));
        obj_Login_Bean.setPermissão("1");
     
     //Teste Grátis
     if(obj_Login_Bean.getLicenca().toString().equals("1")){
        Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.DAY_OF_MONTH, 15 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     //Teste Mensal
     if(obj_Login_Bean.getLicenca().toString().equals("2")){
          Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.MONTH, 1 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     //Teste Trimestral
     if(obj_Login_Bean.getLicenca().toString().equals("3")){
         Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.MONTH, 3 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     //Teste Semestral
     if(obj_Login_Bean.getLicenca().toString().equals("4")){
         Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.MONTH, 6 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     //Teste Anual
     if(obj_Login_Bean.getLicenca().toString().equals("5")){
         Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.YEAR, 1 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     //Teste Trienal
     if(obj_Login_Bean.getLicenca().toString().equals("6")){
          Calendar c = Calendar.getInstance();
        c.setTime(ProximaParcela);
        c.add(Calendar.YEAR, 3 );
        ProximaParcela = c.getTime();
        String DataFinal = formatador.format(ProximaParcela.getTime());
        obj_Login_Bean.setPrazo_licença(DataFinal);
     }
     
      System.out.println("--------------------------------");
     System.out.println(obj_Login_Bean.getNfce());
     System.out.println(obj_Login_Bean.getLicenca());
        System.out.println(obj_Login_Bean.getUser());
        System.out.println(obj_Login_Bean.getPass());
System.out.println(obj_Login_Bean.getCsenha());
System.out.println(obj_Login_Bean.getNome());
System.out.println(obj_Login_Bean.getCnpj());
System.out.println("Nome Fantasia: " + obj_Login_Bean.getBb());
System.out.println("Razao Social: " + obj_Login_Bean.getAa());
System.out.println(obj_Login_Bean.getEstado());
System.out.println(obj_Login_Bean.getTelefone());
System.out.println(obj_Login_Bean.getCep());
System.out.println(obj_Login_Bean.getEndereco());
System.out.println(obj_Login_Bean.getNumero());
System.out.println(obj_Login_Bean.getComplemento());
System.out.println(obj_Login_Bean.getBairro());
System.out.println(obj_Login_Bean.getCidade());
System.out.println("Data Inicio: "+ obj_Login_Bean.getDatainicio());
System.out.println("Prazo Licença: "+obj_Login_Bean.getPrazo_licença());
System.out.println(obj_Login_Bean.getPacote());
System.out.println(obj_Login_Bean.getPermissão());
System.out.println(obj_Login_Bean.getLogo());
System.out.println(obj_Login_Bean.getEmail());
     System.out.println("--------------------------------");
     //Verifica os dados
     if(obj_Login_Bean.getUser()==null || obj_Login_Bean.getPass()==null
    || obj_Login_Bean.getCsenha()==null || obj_Login_Bean.getNome()==null
    || obj_Login_Bean.getCnpj()==null || obj_Login_Bean.getBb()==null
    || obj_Login_Bean.getAa()==null || obj_Login_Bean.getEstado()==null
    || obj_Login_Bean.getTelefone()==null || obj_Login_Bean.getCep()==null 
    || obj_Login_Bean.getEndereco()==null || obj_Login_Bean.getNumero()==null 
    || obj_Login_Bean.getComplemento()==null || obj_Login_Bean.getBairro()==null 
    || obj_Login_Bean.getCidade()==null || obj_Login_Bean.getDatainicio()==null 
    || obj_Login_Bean.getPrazo_licença()==null || obj_Login_Bean.getPacote()==null 
    || obj_Login_Bean.getEmail()==null){
         verificador = false;
         erro = " Complete todos os campos obrigatórios!";
     }else{
     
         if(!obj_Login_Bean.getPass().toString().equals( obj_Login_Bean.getCsenha().toString())){
             verificador = false;
             erro = "Senhas não conferem!";
         }else{
             Ferramentas f = new Ferramentas();
             if(!f.isCNPJ(obj_Login_Bean.getCnpj().replaceAll("[^0-9]", ""))){
                verificador = false;
               erro = "CNPJ Inválido!"; 
             }
         }
     }
     
     //Verifica E-mail
     ClienteDAO cdao = new ClienteDAO();
     if(cdao.Ver_Email(obj_Login_Bean.getEmail())){
         verificador = false;
         erro = "E-mail já Cadastrado!"; 
     }
     //Verificar User
    if(cdao.Ver_User(obj_Login_Bean.getUser())){
         verificador = false;
         erro = "Nome de Usuario indisponivel!"; 
     }
             
     if(verificador==true){
         try{
            //Salva o cliente
            flag = cdao.save(obj_Login_Bean);
     
         }catch(Exception e){erro = "Erro ao Cadastrar Cliente";flag=false;}
         try{
             //Salva o Ususario
             UserDAO udao = new UserDAO();
             obj_Login_Bean.setRazao(obj_Login_Bean.getRazaosocial());
             flag1 = udao.save(obj_Login_Bean);
         }catch(Exception e){erro = "Erro ao Cadastrar Usuario";flag1=false;}
     }
    
    if(flag && flag1){
      response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Cliente Cadastrado com sucesso!');");
            pw.println("</script>");
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/PainelControle_Cad_Cliente.jsp";
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
   history.back();
   </script>
  <%
 }
 %>
 </body>
 </html>
