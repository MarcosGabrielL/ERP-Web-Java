<%-- 
    Document   : painel_patrimonio
    Created on : 05/08/2019, 13:03:46
    Author     : Marcos
--%>

<%@page import="Dao.CaixaDAO"%>
<%@page import="Bean.Caixa"%>
<%@page import="Bean.User"%>
<%@page import="Bean.Fiscal"%>
<%@page import="Dao.FiscalDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Bean.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="../Paginas/Painel/css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
  <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet">
  <script src="//code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="../Paginas/Painel/css/style_1.css">
 <link rel="stylesheet" href="../Paginas/Painel/css/style_menu_horizontal_sub.css">
 <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="../Paginas/CadastroCliente/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/css/util.css">
	<link rel="stylesheet" type="text/css" href="../Paginas/CadastroCliente/css/main_1.css">
         <!-- TABELA -->
        <link rel="stylesheet" href="../Paginas/Painel/Patrimonio/Csss/style1.css">
 <!-- TABELA  FINAL-->
 <style type="text/css">
     input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus,
textarea:-webkit-autofill,
textarea:-webkit-autofill:hover,
textarea:-webkit-autofill:focus,
select:-webkit-autofill,
select:-webkit-autofill:hover,
select:-webkit-autofill:focus {
  border: 1px solid green;
  -webkit-box-shadow: 0 0 0px 1000px #fff inset;
  transition: background-color 5000s ease-in-out 0s;
}
.form-style-1 {
	
	font: 13px "Lucida Sans Unicode", "Lucida Grande", sans-serif;
}
.form-style-1 li {
	padding: 0;
	display: block;
	list-style: none;
	margin: 10px 0 0 0;
}
.form-style-1 label{
	margin:0 0 3px 0;
	padding:0px;
	display:block;
	font-weight: bold;
}
.form-style-1 input[type=text], 
.form-style-1 input[type=date],
.form-style-1 input[type=datetime],
.form-style-1 input[type=number],
.form-style-1 input[type=search],
.form-style-1 input[type=time],
.form-style-1 input[type=url],
.form-style-1 input[type=email],
textarea, 
select{
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	border:1px solid #BEBEBE;
	padding: 7px;
	margin:0px;
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;
	outline: none;	
}
.form-style-1 input[type=text]:focus, 
.form-style-1 input[type=date]:focus,
.form-style-1 input[type=datetime]:focus,
.form-style-1 input[type=number]:focus,
.form-style-1 input[type=search]:focus,
.form-style-1 input[type=time]:focus,
.form-style-1 input[type=url]:focus,
.form-style-1 input[type=email]:focus,
.form-style-1 textarea:focus, 
.form-style-1 select:focus{
	-moz-box-shadow: 0 0 8px #BEBEBE;
	-webkit-box-shadow: 0 0 8px #BEBEBE;
	box-shadow: 0 0 8px #BEBEBE;
	border: 1px solid #BEBEBE;
}
.form-style-1 .field-divided{
	width: 49.5%;
}

.form-style-1 .field-long{
	width: 100%;
}
.form-style-1 .field-select{
	width: 100%;
}
.form-style-1 .field-textarea{
	height: 100px;
}

.form-style-1 .required{
	color:red;
}

.login-page {
  width: 360px;
  padding: 8% 0 0;
  margin: auto;
}
.form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: rgb(234, 92, 26);
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #212121;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: rgb(234, 92, 26);
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}     

</style>

  </head>
  
  
  <body style="margin: 0;">
 <%
 User obj_Login_Bean=(User)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
     response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Por Favor, Faça o Login primeiro');");
            pw.println("</script>");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8080/Alba/login.html";
 </script>
 <% 
 }else{
    boolean flag = false;
    CaixaDAO cdao = new CaixaDAO();
    for(Caixa c : cdao.read()){
           try{
             if(c.getUsuarioatt().equals(obj_Login_Bean.getUser()) && c.getStatus().equals("ativo")){
                flag = true;
             }
            }catch(Exception e){}
    }

    if(flag){
   %>
<header>
     <nav class="main-menu">
          <div style=" background-size: 100%; background-position: center; width: 100%; height: 80px;">
              <image src="http://localhost:8080/Alba/resources/imagens/Logo Liso Transparente.png"style="
                                              margin-left: auto;
                                              margin-right: auto;
	position: absolute;
	top: 10px; left: 0; bottom: 0; right: 0;"/>
          </div>
            <ul>
                <% if(obj_Login_Bean.getPermissão().equals("1")){%> 
                <li>
                    <a  href="../Alba/painel.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Dashboard
                        </span>
                    </a>
                  
                </li>
                <% if(obj_Login_Bean.getPacote().contains("2")){
                    %>
                <li class="has-subnav">
                    <a href="../Alba/EmitirNotaFiscal/Entrar_Caixa.jsp">
                       <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Frente de Caixa
                        </span>
                    </a>
                </li>
                <% }else{ %>
                    <li class="has-subnav">
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Frente de Caixa
                        </span>
                    </a>
                </li>
                    <% } %>
                <li class="has-subnav">
                    <a href="http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp">
                        <i class="fa fa-cog fa-2x"></i>
                        <span class="nav-text">
                            Configuração
                        </span>
                    </a>
                </li>
               <li class="has-subnav">
                    <a href="http://localhost:8080/Alba/Estoque/Cadastro.jsp">
                       <i class="fa fa-archive fa-2x"></i>
                        <span class="nav-text">
                            Estoque
                        </span>
                    </a>
                    
                </li>
                <% if(obj_Login_Bean.getPacote().contains("3")){
                    %>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-heart fa-2x"></i>
                        <span class="nav-text">
                            Clientes
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            Financeiro
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                       <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Usuarios
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                        <i class="fa fa-group fa-2x"></i>
                        <span class="nav-text">
                            RH
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                         <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Estatisticas
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li class="has-subnav">
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-heart fa-2x"></i>
                        <span class="nav-text">
                            Clientes
                        </span>
                    </a>
                </li>
                <li>
                     <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            Financeiro
                        </span>
                    </a>
                </li>
                <li>
                   <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Usuarios
                        </span>
                    </a>
                </li>
                <li>
                    <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-group fa-2x"></i>
                        <span class="nav-text">
                            RH
                        </span>
                    </a>
                </li>
                <li>
                  <a href="../Alba/update/mesage.jsp">
                         <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Estatisticas
                        </span>
                    </a>
                </li>
                 <% } %>
                  <% if(obj_Login_Bean.getPacote().contains("6")){
                    %>
                <li>
                    <a href="#">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                           Contabilidade
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                           Contabilidade
                        </span>
                    </a>
                </li>
                <% } %>
                 <% if(obj_Login_Bean.getPacote().contains("5")){
                    %>
                <li>
                    <a href="#">
                       <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            E-Commerce
                        </span>
                    </a>
                </li>
                <% }else{ %>
                 <li>
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            E-Commerce
                        </span>
                    </a>
                </li>
                <% } %>
                <% if(obj_Login_Bean.getPacote().contains("4")){
                    %>
                <li>
                   <a href="#">
                         <i class="fa fa-building-o fa-2x"></i>
                        <span class="nav-text">
                            Marketplace
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="#">
                         <i class="fa fa-building-o fa-2x"></i>
                        <span class="nav-text">
                            Marketplace
                        </span>
                    </a>
                </li>
                <% } %>
                <% if(obj_Login_Bean.getPacote().contains("7")){
                    %>
                <li>
                   <a href="#">
                         <i class="fa fa-mobile fa-2x"></i>
                        <span class="nav-text">
                            Aplicativo
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="#">
                         <i class="fa fa-mobile fa-2x"></i>
                        <span class="nav-text">
                            Aplicativo
                        </span>
                    </a>
                </li>
                <% } %>
                <li>
                   <a href="#">
                         <i class="fa fa-question fa-2x"></i>
                        <span class="nav-text">
                            Ajuda
                        </span>
                    </a>
                </li>
            </ul>
            <ul class="logout">
                <li>
                   <a href="profile/controller/Signoutcontroller.jsp">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Sair
                        </span>
                    </a>
                </li>  
            </ul>
                <%
                    }else{

                    } 
                %>
                
            </ul>
            <ul class="logout">
                <li>
                   <a href="profile/controller/Signoutcontroller.jsp">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Sair
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
     </header>
 
            <!-- MENU SECUNDARIO-->
         <div id='cssmenu' style=" padding-left: 60px; ">  
   <ul>
      
   </ul>
</div>   
            <% 
            //    obj_Login_Bean.getCNPJ();
            Fiscal fiscal = new Fiscal();
            FiscalDAO fdao = new FiscalDAO();
            for(Fiscal f : fdao.read()){
                 System.err.println(obj_Login_Bean.getCnpj() + "---" + f.getCNPJ() );
             if(f.getCNPJ().equals(obj_Login_Bean.getCnpj())){
                 fiscal = f;
                 System.err.println("Existe");
                  }
            }
            
 %>
            <!-- AREA DE AÇÃO -->
            
                      <div id="esc" class="login-page">
                            <span style="  color: #333333;  padding-bottom: 6px; width: 500px; text-align: center; margin-left: -50px; " class="contact100-form-title">
					Seu Caixa está aberto. Deseja fecha-lo?
				</span>
                          <div class="form" style="padding: 20px; width: 500px; max-width: 500px; margin-left: -50px;">
                          <img onclick="document.getElementById('form-id').submit();" style="cursor:pointer;"  title ='Fechar Caixa' src="http://localhost:8080/Alba/resources/imagens/negative.png" alt="Fechar Caixa" width=100px height=100px/></a>
                          <img onclick="document.getElementById('formentrar').submit();" style="cursor:pointer;" src="http://localhost:8080/Alba/resources/imagens/positive.png" title="Entrar" alt="Entrar" width=100px height=100px/>
                          <form id="form-id" class="login-form" action="../EmitirNotaFiscal/Controller/Fechar_controller.jsp" method="POST">
                          </form>
                          <form id="formentrar" class="login-form" action="../EmitirNotaFiscal/Controller/Entrar_controller.jsp" method="POST">
                              </form>
                          </div>
                      </div>  

                        
		
                        </form> 
                    </div>
 <% }else{ 
 %>
 <header>
     <nav class="main-menu">
          <div style=" background-size: 100%; background-position: center; width: 100%; height: 80px;">
              <image src="http://localhost:8080/Alba/resources/imagens/Logo Liso Transparente.png"style="
                                              margin-left: auto;
                                              margin-right: auto;
	position: absolute;
	top: 10px; left: 0; bottom: 0; right: 0;"/>
          </div>
            <ul>
                <% if(obj_Login_Bean.getPermissão().equals("1")){%> 
                <li>
                    <a  href="../Alba/painel.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Dashboard
                        </span>
                    </a>
                  
                </li>
                <% if(obj_Login_Bean.getPacote().contains("2")){
                    %>
                <li class="has-subnav">
                    <a href="../Alba/EmitirNotaFiscal/Entrar_Caixa.jsp">
                       <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Frente de Caixa
                        </span>
                    </a>
                </li>
                <% }else{ %>
                    <li class="has-subnav">
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Frente de Caixa
                        </span>
                    </a>
                </li>
                    <% } %>
                <li class="has-subnav">
                    <a href="http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp">
                        <i class="fa fa-cog fa-2x"></i>
                        <span class="nav-text">
                            Configuração
                        </span>
                    </a>
                </li>
               <li class="has-subnav">
                    <a href="http://localhost:8080/Alba/Estoque/Cadastro.jsp">
                       <i class="fa fa-archive fa-2x"></i>
                        <span class="nav-text">
                            Estoque
                        </span>
                    </a>
                    
                </li>
                <% if(obj_Login_Bean.getPacote().contains("3")){
                    %>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-heart fa-2x"></i>
                        <span class="nav-text">
                            Clientes
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            Financeiro
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                       <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Usuarios
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                        <i class="fa fa-group fa-2x"></i>
                        <span class="nav-text">
                            RH
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                         <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Estatisticas
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li class="has-subnav">
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-heart fa-2x"></i>
                        <span class="nav-text">
                            Clientes
                        </span>
                    </a>
                </li>
                <li>
                     <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            Financeiro
                        </span>
                    </a>
                </li>
                <li>
                   <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Usuarios
                        </span>
                    </a>
                </li>
                <li>
                    <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-group fa-2x"></i>
                        <span class="nav-text">
                            RH
                        </span>
                    </a>
                </li>
                <li>
                  <a href="../Alba/update/mesage.jsp">
                         <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Estatisticas
                        </span>
                    </a>
                </li>
                 <% } %>
                  <% if(obj_Login_Bean.getPacote().contains("6")){
                    %>
                <li>
                    <a href="#">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                           Contabilidade
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="../Alba/update/mesage.jsp">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                           Contabilidade
                        </span>
                    </a>
                </li>
                <% } %>
                 <% if(obj_Login_Bean.getPacote().contains("5")){
                    %>
                <li>
                    <a href="#">
                       <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            E-Commerce
                        </span>
                    </a>
                </li>
                <% }else{ %>
                 <li>
                    <a href="../Alba/update/mesage.jsp">
                       <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            E-Commerce
                        </span>
                    </a>
                </li>
                <% } %>
                <% if(obj_Login_Bean.getPacote().contains("4")){
                    %>
                <li>
                   <a href="#">
                         <i class="fa fa-building-o fa-2x"></i>
                        <span class="nav-text">
                            Marketplace
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="#">
                         <i class="fa fa-building-o fa-2x"></i>
                        <span class="nav-text">
                            Marketplace
                        </span>
                    </a>
                </li>
                <% } %>
                <% if(obj_Login_Bean.getPacote().contains("7")){
                    %>
                <li>
                   <a href="#">
                         <i class="fa fa-mobile fa-2x"></i>
                        <span class="nav-text">
                            Aplicativo
                        </span>
                    </a>
                </li>
                <% }else{ %>
                <li>
                   <a href="#">
                         <i class="fa fa-mobile fa-2x"></i>
                        <span class="nav-text">
                            Aplicativo
                        </span>
                    </a>
                </li>
                <% } %>
                <li>
                   <a href="#">
                         <i class="fa fa-question fa-2x"></i>
                        <span class="nav-text">
                            Ajuda
                        </span>
                    </a>
                </li>
            </ul>
            <ul class="logout">
                <li>
                   <a href="profile/controller/Signoutcontroller.jsp">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Sair
                        </span>
                    </a>
                </li>  
            </ul>
                <%
                    }else{

                    } 
                %>
                
            </ul>
            <ul class="logout">
                <li>
                   <a href="profile/controller/Signoutcontroller.jsp">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Sair
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
     </header>
 
            <!-- MENU SECUNDARIO-->
         <div id='cssmenu' style=" padding-left: 60px; ">  
   <ul>
      
   </ul>
</div>   
            <% 
            //    obj_Login_Bean.getCNPJ();
            Fiscal fiscal = new Fiscal();
            FiscalDAO fdao = new FiscalDAO();
            for(Fiscal f : fdao.read()){
                 System.err.println(obj_Login_Bean.getCnpj() + "---" + f.getCNPJ() );
             if(f.getCNPJ().equals(obj_Login_Bean.getCnpj())){
                 fiscal = f;
                 System.err.println("Existe");
                  }
            }
            
 %>
            <!-- AREA DE AÇÃO -->
            
                      <div id="esc" class="login-page">
                            <span style="  color: #333333;  padding-bottom: 6px; width: 500px; text-align: center; margin-left: -50px; " class="contact100-form-title">
					O que deseja fazer?
				</span>
                          <div class="form" style="padding: 20px; width: 500px; max-width: 500px; margin-left: -50px;">
                          <img onclick="ocultaForm(0)" style="cursor:pointer;"  title ='Emitir NFe - Nota Fiscal Eletronica' src="http://localhost:8080/Alba/resources/imagens/Untitled-2.jpg" alt="Emitir NFe - Nota Fiscal Eletronica" width=100px height=100px/></a>
                          <img onclick="ocultaForm(1)" style="cursor:pointer;" src="http://localhost:8080/Alba/resources/imagens/nfceee.png" title="Emitir NFCe - Nota Fiscal Do Consumidor Eletronica" alt="Emitir NFCe - Nota Fiscal Do Consumidor Eletronica" width=100px height=100px/>
                          <a href="http://localhost:8080/Alba/EmitirNotaFiscal/ORC.jsp"><img  style="cursor:pointer; padding: 5px;" src="http://localhost:8080/Alba/resources/imagens/budget.png" title="Orçamento" alt="Orçamento" width=80px height=80px/>
                          </a>
                          <a href="http://localhost:8080/Alba/EmitirNotaFiscal/CONF_IMP.jsp"><img onclick="ocultaForm(3)" style="cursor:pointer; padding: 5px;" src="http://localhost:8080/Alba/resources/imagens/toolbox.png" title="Configuração" alt="Configuração" width=80px height=80px/>
                          </a>
                          </div>
                      </div>            
            
                        <div id="log" style="display: none;" class="login-page">
                            <form class="login-form" action="../EmitirNotaFiscal/Controller/Sign_in_controller.jsp" method="POST">
                          
                            <input type="text" id="tipo" name="tipo" style="color:#fff;">
                            <span id="text" style=" color: #333333;  padding-bottom: 6px; text-align: center; " class="contact100-form-title">
					Entrar Caixa
				</span>
                        <div class="form">
                            <select style="margin-bottom: 10px;
    height: 50px;
    width: 100%;" id="nome" name="loja" class="field-select">
                        <%
                            for(Fiscal a : fdao.read()){%>
                        <option ><%=a.getNome() %></option>
                        <% } %>
                        </select>
                            <input type="text" name="operador" placeholder="Caixa"/>
                            <input type="password" name="senha" placeholder="Senha" required
                          autocomplete="off" readonly onfocus="this.removeAttribute('readonly');"
                          onBlur="this.setAttribute('readonly', true);"/>
                            <button>Entrar</button>
                            <p class="message"> <a href="#">Esqueceu?</a></p>
                          </form>
                        </div>
                      </div>

                        
		
                        </form> 
                    </div>
            
  
             <%
               }  
 }
%>


<!-- SCRIPTS -->
<!-- Verifica se o caixa está aberto-->
<script>
  
</script>
  <script type="text/javascript">
	
$(document).ready(function(){
	$('#nav-menuuu').click(function(){
		$('ul.nav-listtt').addClass('open').slideToggle('200');
	});
});

</script>

 <script type="text/javascript">
  function ocultaForm(valor){
        if(valor===0){
            document.getElementById("log").style.display = 'block';
            document.getElementById("esc").style.display = 'none';
            $("#text").html("Entrar Emissor NFe");
        } else if(valor === 1){
            document.getElementById("log").style.display = 'block';
            document.getElementById("esc").style.display = 'none';
            $("#text").html("Entrar Emissor NFCe");
        } else if(valor === 2){
            document.getElementById("log").style.display = 'block';
            document.getElementById("esc").style.display = 'none';
            $("#text").html("Entrar Emissor Orçamento");
        } else if(valor === 3){
           //Fecha Caixa
           $.ajax({
                type: "GET",
                url: '../lecturerSchedule',
                data: "debusc=" + dsc,
                complete: [
                    function (response) {
                        
                        var trHTML = response.responseText;
                        if(trHTML === "ok"){
                             //Abre pagina inicial
                             window.open('http://www.google.com.br');
                        }
                    }
                ]
            });
          
        }else if(valor === 4){
           //Retoma Caixa
        }
        document.getElementById("tipo").value = valor;
    }
 </script>
 
<script type="text/javascript">
    
window.onload = function(){
document.getElementById("select").onchange = function(){
$('#lname').val(this.value);
}
}
</script>
 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>

<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/bootstrap/js/popper.js"></script>
	<script src="../Paginas/CadastroCliente/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/select2/select2.min.js"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});


			$(".js-select2").each(function(){
				$(this).on('select2:close', function (e){
					if($(this).val() == "Please chooses") {
						$('.js-show-service').slideUp();
					}
					else {
						$('.js-show-service').slideUp();
						$('.js-show-service').slideDown();
					}
				});
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/daterangepicker/moment.min.js"></script>
	<script src="../Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../Paginas/CadastroCliente/vendor/noui/nouislider.min.js"></script>
	<script>
	    var filterBar = document.getElementById('filter-bar');

	    noUiSlider.create(filterBar, {
	        start: [ 1500, 3900 ],
	        connect: true,
	        range: {
	            'min': 1500,
	            'max': 7500
	        }
	    });

	    var skipValues = [
	    document.getElementById('value-lower'),
	    document.getElementById('value-upper')
	    ];

	    filterBar.noUiSlider.on('update', function( values, handle ) {
	        skipValues[handle].innerHTML = Math.round(values[handle]);
	        $('.contact100-form-range-value input[name="from-value"]').val($('#value-lower').html());
	        $('.contact100-form-range-value input[name="to-value"]').val($('#value-upper').html());
	    });
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>    
<!-- SCRIPTS FIM -->
  </body>
    </html>

