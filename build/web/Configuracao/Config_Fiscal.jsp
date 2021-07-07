<%-- 
    Document   : painel_patrimonio
    Created on : 05/08/2019, 13:03:46
    Author     : Marcos
--%>

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
      <li><a href="#">Fiscal</a>
          <ul>
             <li><a href="../Configuracao/Config_Fiscal.jsp" >Informações</a> 
            </li>
            <li><a href="../Configuracao/Config_Licenca.jsp" >Licença </a>
            </li>  
            <li><a href="../Configuracao/Config_Maquina_Cartao.jsp" >Maquina Cartão</a>
            </li>  
            <li><a href="../Configuracao/Config_Banco.jsp" >Banco de Dados</a>
            </li> 
         </ul>
      </li>  
      <li><a href="../Configuracao/Config_Fiscal.jsp" >Checkout</a>
          <ul>
              <li><a href="../Configuracao/Ger_Caixas.jsp" >Cadastrar Caixas</a> 
                 </li>
             <li><a href="../Configuracao/Atu_Caixas.jsp" >Atualizar Caixas</a> 
            </li>
            <li><a href="../Configuracao/Ex_Caixas.jsp" >Excluir Caixas</a> 
            </li>
          </ul>
      </li>
      <li><a href="#">Usuarios</a>
          <ul>
             <li><a href="../#" >Cadastrar Usuarios</a> 
            </li>
            <li><a href="../#" >Deletar Usuarios </a>
            </li>  
            <li><a href="../#" >Atualizar Usuarios</a>
            </li>  
         </ul>
      </li> 
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
            <div id="loja"  class="container-contact100">
              <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Loja
				</span>
                         <ul class="form-style-1">
                    <li>
                      <label>Nome <span class="required"></span></label>
                        <select id="nome" name="nome" class="field-select">
                        
                        <%for(Fiscal a : fdao.read()){%>
                        <option ><%=a.getNome() %></option>
                        <% } %>
                        </select>
                        </li>
                    
                </ul>
                    </div> 
                <div style=" padding: 0; padding-left: 0px; float: left; width: 9%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;
				</span>
                         <ul class="form-style-1">
                    <li>
                      <label>&nbsp;&nbsp;<span class="required"></span></label>
                        <input title="Ok" class="contact100-form-btn" 
                                               style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/chat.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;"
                                               type="button" onclick="ocultaForm()" value="">
                       
                        </li>
                    
                </ul>
                    </div> 
                <div style=" padding: 0; padding-left: -20px; float: left; width: 9%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;
				</span>
                         <ul class="form-style-1">
                    <li>
                      
                        <label>&nbsp;&nbsp;<span class="required"></span></label>
                        <input title="Criar Nova Loja" class="contact100-form-btn" 
                                               style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/plus.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;"
                                               type="submit" value="">
                        </li>
                    
                </ul>
                    </div> 
            </div>
                <div id="principal"  style="display: none;" class="container-contact100">
                    <form class="contact100-form validate-form" autocomplete="off" action="../Configuracao/Controller/Atualiza_infor_fiscal.jsp" method="POST">
			
		<div style="padding: 0; padding-left: 60px; float: left; width: 100%; display: inline-block;" class="wrap-contact100">
			<span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					Configuração Fiscal
				</span>
                    </div>
		<div style=" padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Identificação
				</span>
                
                <ul class="form-style-1">
                    <li><label>CNPJ <span class="required"></span></label>
                        <input type="text" name="CNPJ" class="field-long" data-mask="00.000.000/0000-00" value="<%=fiscal.getCNPJ() %>"/> 
                        <label>Inscrição Estadual <span class="required"></span></label>
                        <input type="text" name="cc" class="field-long" value="<%=fiscal.getInscricaoEstadual() %>" />
                        <label>Razão Social <span class="required"></span></label>
                        <input type="text" name="razaosocial" class="field-long" value="<%=fiscal.getRazaosocial() %>"  />
                        <label>Nome Fantasia <span class="required"></span></label>
                        <input type="text" name="fantasia" class="field-long" value="<%=fiscal.getFantasia() %>"/>
                        <span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Contato
				</span>
                        <label>Telefone <span class="required"></span></label>
                        <input type="text" name="aa" data-mask="(00) 00000-0000" class="field-long" value="<%=fiscal.getTelefone() %>"/> 
                        <label>E-mail <span class="required"></span></label>
                        <input type="text" name="email" class="field-long" autocomplete="off" style="display: none;" /> 
                        <input type="text" name="email" class="field-long" value="<%=fiscal.getEmail() %>" /> 
                    </li>
                    
                </ul>
                    </div>
                     <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Endereço
				</span>
                         <ul class="form-style-1">
                    <li>
                      <label>CEP <span class="required"></span></label>
                        <input type="text" name="CEP" class="field-long"  value="<%=fiscal.getCEP() %>"/>
                        <label>Logradouro<span class="required"></span></label>
                        <input type="text" name="rua" class="field-long" value="<%=fiscal.getRua() %>" />
                        <label>Cidade<span class="required"></span></label>
                        <input type="text" name="dd" class="field-long" value="<%=fiscal.getCidade() %>" />
                        <label>UF<span class="required"></span></label>
                        <input type="text" name="bb" class="field-long" value="<%=fiscal.getUf() %>" />
                        <label>Bairro<span class="required"></span></label>
                        <input type="text" name="bairro" class="field-long" value="<%=fiscal.getBairro() %>" />
                        <label>Numero<span class="required"></span></label>
                        <input type="text" name="numero" class="field-long" value="<%=fiscal.getNumero() %>"/>
                        </li>
                    
                </ul>
                    </div> 
                <div style=" padding: 0; padding-left: 20px; float: left; width: 45%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Certificado Digital
				</span>
                <ul class="form-style-1">
                    <li>
                        <label>Local Certificado <span class="required"></span></label>
                        <input type="text" name="certificado" class="field-long" value="<%=fiscal.getCertificado() %>" />
                        <label>Tipo <span class="required"></span></label>
                        <select style="width: 50%;" name="CTipo" class="field-select">
                            <% if(fiscal.getCTipo() == 0){ %>
                            <option value="1" >A1</option>
                            <option value="2" >A3</option>
                            <% } else if(fiscal.getCTipo() == 1){ %>
                            <option value="1" >A1</option>
                            <option value="2" >A3</option>
                            <% } else if(fiscal.getCTipo() == 2){ %>
                            <option value="2" >A3</option>
                            <option value="1" >A1</option>
                            <% } %>
                            
                        </select>
                        <label>Senha <span class="required"></span></label>
                        <input style="width: 50%; box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    border: 1px solid #BEBEBE;
    padding: 7px;
    margin: 0px;
    -webkit-transition: all 0.30s" type="password" name="CSenha" class="field-long" value="<%=fiscal.getCSenha() %>" />
                        <label>CSC <span class="required"></span></label>
                        <input style="width: 50%;" type="text" name="CSC" class="field-long" value="<%=fiscal.getCSC() %>"/>
                        <label>Token <span class="required"></span></label>
                        <input style="width: 50%;" type="text" name="token" class="field-long" value="<%=fiscal.getToken() %>" />
                        <label>Ambiente <span class="required"></span></label>
                        <select style="width: 50%;" name="ambiente" class="field-select">
                            <% if(fiscal.getAmbiente() == 0){ %>
                            <option value="1">Produção</option>
                            <option value="2">Homologação</option>
                            <option value="3">Teste</option>
                            <% } else if(fiscal.getAmbiente() == 1){ %>
                            <option value="1">Produção</option>
                            <option value="2">Homologação</option>
                            <option value="3">Teste</option>
                            <% } else if(fiscal.getAmbiente() == 2){ %>
                            <option value="2">Homologação</option>
                            <option value="1">Produção</option>
                            <option value="3">Teste</option>
                            <% } else if(fiscal.getAmbiente() == 3){ %>
                            <option value="3">Teste</option>
                            <option value="2">Homologação</option>
                            <option value="1">Produção</option>
                            <% } %>
                            
}
                        </select>
                    </li>
                </ul>
                    </div>  
                    
                <div style=" padding: 0; float: left; width: 5%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                <ul class="form-style-1">
                    <li>
                    <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                    <input class="field-divided" title="Buscar Certificado" style="height: 35px; width: 100%; color: #ffffff; 
                                                               background: #fff; margin-bottom: -12px;
                                                               background-image: url(../resources/imagens/magnifier-tool.png); 
                                                               cursor: pointer !important; background-position:center;
                                                               background-repeat:no-repeat; " 
                                                               type="button" onclick="alert('Buscando!')" value="">
                        </li>
                    
                </ul>
                    </div> 
                    
                    <div style=" padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Tributos
				</span>
                
                <ul class="form-style-1">
                    <li><label>Regime Tributario <span class="required"></span></label>
                        <select  name="regimetributario" class="field-select">
                            <% if(fiscal.getRegimetributario()==null){ %>
                            <option value="1">Simples Nacional</option>
                            <option value="3">Regime Normal</option>
                            <option value="2">Regime Capitalizaçao</option>
                            <% }else if(fiscal.getRegimetributario().equals("3")) {%>
                            <option value="3">Regime Normal</option>
                            <option value="1">Simples Nacional</option>
                            <option value="2">Regime Capitalizaçao</option>
                            <% }else if(fiscal.getRegimetributario().equals("2")) {%>
                            <option value="2">Regime Capitalizaçao</option>
                            <option value="3">Regime Normal</option>
                            <option value="1">Simples Nacional</option>
                             <% }else if(fiscal.getRegimetributario().equals("2")) {%>
                             <option value="1">Simples Nacional</option>
                            <option value="3">Regime Normal</option>
                            <option value="2">Regime Capitalizaçao</option>
                            <% } %>
                            
                        </select>
                        <label>CST PIS Padrão <span class="required"></span></label>
                        <select name="PIS" class="field-select">
                            <option><%=fiscal.getPIS() %></option>
                            <option>01 – Operação Tributável com Alíquota Básica</option>
                            <option>02 – Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                            <option>03 – Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                            <option>04 – Operação Tributável Monofásica – Revenda a Alíquota Zero</option>
                            <option>05 – Operação Tributável por Substituição Tributária</option>
                            <option>06 – Operação Tributável a Alíquota Zero</option>
                            <option>07 – Operação Isenta da Contribuição</option>
                            <option>08 – Operação sem Incidência da Contribuição</option>
                            <option>09 – Operação com Suspensão da Contribuição</option>
                            <option>49 – Outras Operações de Saída</option>
                        </select>
                        
					<input class="contact100-form-btn" style="color: #ffffff;
                                               cursor: pointer !important;
                                               margin-top: 20px;
                                               " type="submit" value="Atualizar Informações">	
                    </li>
                    
                </ul>
                    </div>
                    <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                
                <ul class="form-style-1">
                    <li><label>CFOP Padrão <span class="required"></span></label>
                        <input type="text" name="CFOP" class="field-long" value="<%=fiscal.getCFOP() %>" />
                        <label>CST COFINS Padrão <span class="required"></span></label>
                        <select  name="COFINS" class="field-select">
                            <option><%=fiscal.getCOFINS() %></option>
                            <option>01 – Operação Tributável com Alíquota Básica</option>
                                                        <option>02 – Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                                                        <option>03 – Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                                                        <option>04 – Operação Tributável Monofásica – Revenda a Alíquota Zero</option>
                                                        <option>05 – Operação Tributável por Substituição Tributária</option>
                                                        <option>06 – Operação Tributável a Alíquota Zero</option>
                                                        <option>07 – Operação Isenta da Contribuição</option>
                                                        <option>08 – Operação sem Incidência da Contribuição</option>
                                                        <option>09 – Operação com Suspensão da Contribuição</option>
                                                        <option>49 – Outras Operações de Saída</option>
                        </select>
                    </li>
                    
                </ul>
                    </div>
                    <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                
                <ul class="form-style-1">
                    <li><label>NCM/CSOSN Padrão <span class="required"></span></label>
                        <input type="text" name="NCM" class="field-long" value="<%=fiscal.getNCM() %>"/>
                        <label>CST Padrão <span class="required"></span></label>
                        <input type="text" name="CST" class="field-long" value="<%=fiscal.getCST() %>" />
                    </li>
                </ul>
                    </div>
                    <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                
                <ul class="form-style-1">
                    <li><label>ICMS Padrão (%) <span class="required"></span></label>
                        <input type="text" name="ICMS" class="field-long" value="<%=fiscal.getICMS() %>" />
                        <label>IPI Padrão (%)<span class="required"></span></label>
                        <input type="text" name="IPI" class="field-long" value="<%=fiscal.getIPI() %>"/>
                    </li>
                    
                </ul>
                    </div>
                        </form> 
                    </div>
            
  
             <%
                 
 }
%>


<!-- SCRIPTS -->
<script type="text/javascript">
  function ocultaForm(){
      
      //PEga nome loja 
      var nome = document.getElementById("nome").value;
      alert(nome);
      //exibe div
      document.getElementById("principal").style.display = 'block';
            
      //Coloca dados
      
       
        
    }
 </script>
  <script type="text/javascript">
	
$(document).ready(function(){
	$('#nav-menuuu').click(function(){
		$('ul.nav-listtt').addClass('open').slideToggle('200');
	});
});

</script>

 <script type="text/javascript">
   $(document).ready(function(){
     $('.data').mask("00/00/0000");
});
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

