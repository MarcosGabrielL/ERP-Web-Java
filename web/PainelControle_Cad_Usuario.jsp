<%-- 
    Document   : PainelControle
    Created on : 04/08/2019, 02:52:16
    Author     : Marcos
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="Bean.LoginCentral"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
<meta charset="utf-8">
 <link rel="stylesheet" href="Paginas/Painel/css/style.css">
 <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="Paginas/CadastroCliente/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/noui/nouislider.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/css/util.css">
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/css/main.css">
<!--===============================================================================================
 <link rel="stylesheet" href="Paginas/Painel/css/style.css">-->
 
  </head>
  <body>
 <%
 LoginCentral obj_Login_Bean=(LoginCentral)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
     response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Por Favor, Faça o Login primeiro');");
            pw.println("</script>");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8080/DpPatrimonio/loginCentral.jsp";
 </script>
 <% 
 }else{
session.setAttribute("user_session", obj_Login_Bean);
 %>
      <header>
  <div class="area"></div><nav class="main-menu" style="position:fixed;">
            <ul>
                <li>
                    <a href="PainelControle.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                           Painel de bordo
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                    <a href="PainelControle_Cad_Cliente.jsp">
                        <i class="fa fa-plus fa-2x"></i>
                        <span class="nav-text">
                            Cadastro Cliente
                        </span>
                    </a>
                    
                </li>
                <li class="has-subnav">
                    <a href="PainelControle_Cad_Usuario.jsp">
                        <i class="fa fa-user fa-2x"></i>
                        <span class="nav-text">
                            Cadastro Usuario
                        </span>
                    </a>
                    
                </li>
                <li class="has-subnav">
                    <a href="#">
                       <i class="fa fa-heart fa-2x"></i>
                        <span class="nav-text">
                            Saúde
                        </span>
                    </a>
                   
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                            Educação
                        </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-archive fa-2x"></i>
                        <span class="nav-text">
                           Almoxerifado
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                       <i class="fa fa-table fa-2x"></i>
                        <span class="nav-text">
                            Protocolo
                        </span>
                    </a>
                </li>
                <li>
                   <a href="#">
                        <i class="fa fa-map-marker fa-2x"></i>
                        <span class="nav-text">
                            Zona Azul
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
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Contabilidade
                        </span>
                    </a>
                </li> 
                <li>
                   <a href="#">
                         <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">
                            Gestor
                        </span>
                    </a>
                </li> 
            </ul>
            <ul class="logout">
                <li>
                   <a href="profile/controller/Signoutcontroller_central.jsp">
                         <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">
                            Sair
                        </span>
                    </a>
                </li>  
            </ul>
        </nav>
  </header>
      
      
  
       <div class="container-contact100">
		<div class="wrap-contact100">
			<form class="contact100-form validate-form" action="CentralControle/controller/cadastro_usuario_controller.jsp" method="POST">
				<span class="contact100-form-title">
					Cadastro de Usuários
				</span>
                                <div class="wrap-input100 validate-input bg1 rs1-wrap-input40" data-validate="Por favor digite seu nome">
					<span class="label-input100">CNPJ Cliente</span>
					<input class="input100" type="text" name="municipio" placeholder="">
				</div>
                                <div style="background: #ffffff; padding-left: 10px; width: 80%"class="wrap-input100 validate-input bg1 rs1-wrap-input40" data-validate="Por favor digite seu nome">
					<span class="label-input100"></span>
					</div>
				<div class="wrap-input100 validate-input bg1 rs1-wrap-input40" data-validate="Por favor digite seu nome">
					<span class="label-input100">Código Usuario</span>
					<input class="input100" type="text" name="codigo" placeholder="">
				</div>

				<div style="padding-left: 10px; width: 80%" class="wrap-input100 validate-input bg1 rs1-wrap-input100" data-validate = "Insira seu email (e@a.x)">
					<span class="label-input100">Nome Completo</span>
					<input class="input100" type="text" name="nome" placeholder="">
				</div>

				<div style="width: 19%" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">Numero C.P.F</span>
					<input class="input100" type="text" name="cpf" placeholder="">
				</div>
                                <div style="padding-left: 10px; width: 19%"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">Numero RG</span>
					<input class="input100" type="text" name="rg" placeholder="">
				</div>
                            <div style="padding-left: 10px; width: 19%"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">ÓRG. EXP./EST.</span>
					<input class="input100" type="text" name="orgaorg" placeholder="">
				</div>
                                <div style="padding-left: 10px; width: 19%"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">NÚMERO DE MATRÍCULA</span>
					<input class="input100" type="text" name="nmatricula" placeholder="">
				</div>
                                <div style="padding-left: 10px; width: 19%"class="wrap-input100 validate-input bg1 rs1-wrap-input40" data-validate="Por favor digite seu nome">
					<span class="label-input100">TELEFONE CELULAR</span>
					<input class="input100" type="text" name="telefone" placeholder="">
				</div>
                                <div style="width: 22%" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">Login</span>
					<input class="input100" type="text" name="username" placeholder="">
				</div>
                               <div style="width: 22%" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">Senha</span>
					<input class="input100" type="text" name="senha" placeholder="">
				</div>
                            <div style="width: 22%" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">Repetir Senha</span>
					<input class="input100" type="text" name="cosenha" placeholder="">
				</div>
                            <div style="width: 22%" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">CÓDIGO TAG NFC</span>
					<input class="input100" type="text" name="tagnfc" placeholder="">
				</div>
                                <div style="padding-left: 10px; width: 48%"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">PERGUNTA RECUPERAÇÃO SENHA</span>
					<input class="input100" type="text" name="pergunta" placeholder="">
				</div>
                            <div style="padding-left: 10px; width: 48%;"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">RESPOSTA PERGUNTA RECUPERAÇÃO SENHA</span>
					<input class="input100" type="text" name="resposta" placeholder="">
				</div>
                            <div style="padding-left: 10px; width: 48%"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">E-mail</span>
					<input class="input100" type="text" name="email" placeholder="">
				</div>
                            <div style="padding-left: 10px; width: 48%;"class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span class="label-input100">CONFIRMAÇÃO E-MAIL</span>
					<input class="input100" type="text" name="coemail" placeholder="">
				</div>
                            <div class=".contact100-form-Check" style="font-size: 13px; padding-left: 10px; border-radius: 13px; width: 33%; margin-top: 40px; background: #f7f7f7;">
                                     <a><span class="label-input100">P E R M I S S Õ E S:</span></a>
                                <div style="border-radius: 13px;  width: 100%;  background: #f7f7f7;">
                                    <input type="checkbox" name="ccc" value="Bike" checked="checked"> Cadastrar Centro de Custos<br>
                                    <input type="checkbox" name="cdp" value="Car" checked="checked"> Cadastrar Depreciações<br>
                                    <input type="checkbox" name="cd" value="Car" checked="checked"> Cadastrar Descrições<br>
                                    <input type="checkbox" name="cf" value="Car" checked="checked"> Cadastrar Fornecedores<br>
                                    <input type="checkbox" name="cnf" value="Car" checked="checked"> Cadastrar Notas Fiscais<br>
                                    <input type="checkbox" name="cpc" value="Car" checked="checked"> Cadastrar Plano de Contas<br>
                                    <input type="checkbox" name="cr" value="Car" checked="checked"> Cadastrar Responsáveis<br>
                                    <input type="checkbox" name="ettt" value="Car" checked="checked"> Emitir Termo de Transferência Temporária<br>
                                    <input type="checkbox" name="ettd" value="Car" checked="checked"> Emitir Termo de Transferência Definitiva<br>
                                    <input type="checkbox" name="etgr" value="Car" checked="checked"> Emitir Termo de Guarda/Responsabilidade<br>
                                    <input type="checkbox" name="etbp" value="Car" checked="checked"> Emitir Termo de Baixa Provisória<br>
                                    <input type="checkbox" name="etbd" value="Car" checked="checked"> Emitir Termo de Baixa Definitiva<br>
                                    <input type="checkbox" name="etsgc" value="Car" checked="checked"> Emitir Termo de Saída para Garantia/Conserto<br>
                                </div>
                            </div>
                            <div class=".contact100-form-Check" style="font-size: 13px; padding-left: 10px; border-radius: 13px; width: 34%; margin-top: 40px; background: #f7f7f7;">
                                     <a><span class="label-input100">&nbsp;</span></a>
                                <div style="border-radius: 13px;  width: 100%;  background: #f7f7f7;">
                                    <input type="checkbox" name="accc" value="Bike" checked="checked"> Alterar Cadastro de Centro de Custos<br>
                                    <input type="checkbox" name="acd" value="Car" checked="checked"> Alterar Cadastro de Depreciações<br>
                                    <input type="checkbox" name="acde" value="Car" checked="checked"> Alterar Cadastro de Descrições<br>
                                    <input type="checkbox" name="acf" value="Car" checked="checked"> Alterar Cadastro de Fornecedores<br>
                                    <input type="checkbox" name="acpc" value="Car" checked="checked"> Alterar Cadastro de Plano de Contas<br>
                                    <input type="checkbox" name="acr" value="Car" checked="checked"> Alterar Cadastro de Responsáveis<br>
                                    <input type="checkbox" name="acnf" value="Car" checked="checked"> Alterar Cadastro de Notas Fiscais<br>
                                    <input type="checkbox" name="attt" value="Car" checked="checked"> Alterar Termo de Transferência Temporária<br>
                                    <input type="checkbox" name="attd" value="Car" checked="checked"> Alterar Termo de Transferência Definitiva<br>
                                    <input type="checkbox" name="atgr" value="Car" checked="checked"> Alterar Termo de Guarda/Responsabilidade<br>
                                    <input type="checkbox" name="atbp" value="Car" checked="checked"> Alterar Termo de Baixa Provisória<br>
                                    <input type="checkbox" name="atbd" value="Car" checked="checked"> Alterar Termo de Baixa Definitiva<br>
                                    <input type="checkbox" name="atsgc" value="Car" checked="checked"> Alterar Termo de Saída para Garantia/Conserto<br>
                                </div>
                            </div>
                            <div class=".contact100-form-Check" style="font-size: 13px; padding-left: 10px; border-radius: 13px; width: 33%; margin-top: 40px; background: #f7f7f7;">
                                     <a><span class="label-input100">&nbsp;</span></a>
                                <div style="border-radius: 13px;  width: 100%;  background: #f7f7f7;">
                                    <input type="checkbox" name="ern1" value="Bike" checked="checked"> Emitir Relatórios de Nível 1<br>
                                    <input type="checkbox" name="ern2" value="Car" checked="checked"> Emitir Relatórios de Nível 2<br>
                                    <input type="checkbox" name="ern3" value="Car" checked="checked"> Emitir Relatórios de Nível 3<br>
                                    <input type="checkbox" name="ern4" value="Car" checked="checked"> Emitir Relatórios de Nível 4<br>
                                    <input type="checkbox" name="ern5" value="Car" checked="checked"> Emitir Relatórios de Nível 5<br>
                                    <input type="checkbox" name="erp" value="Car" checked="checked"> Emitir Relatórios Personalizados<br>
                                    <input type="checkbox" name="ede" value="Car" checked="checked"> Emissão de Etiquetas<br>
                                    <input type="checkbox" name="opdrdb" value="Car" checked="checked"> Operacionalizar Painel de Reavaliação de Bens<br>
                                    <input type="checkbox" name="pe" value="Car" checked="checked"> Permissões Especiais<br>
                                    <input type="checkbox" name="aaa" value="Car" checked="checked"> Acessar Aplicativo Android<br>
                                    <input type="checkbox" name="rudd" value="Car" checked="checked"> Realizar UpLoad's de Documentos<br>
                                    <a><span class="label-input100">&nbsp;</span></a>
                            </div>
				<div class="container-contact100-form-btn">
					<input style=" width: 100px;" class="contact100-form-btn" style="color: #ffffff; background: #007bff;
                                               cursor: pointer !important;
                                               " type="submit" value="Cadastrar">	
				</div>
			</form>
		</div>
	</div>
  
  <%
 }
%>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/bootstrap/js/popper.js"></script>
	<script src="Paginas/CadastroCliente/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/select2/select2.min.js"></script>
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
	<script src="Paginas/CadastroCliente/vendor/daterangepicker/moment.min.js"></script>
	<script src="Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Paginas/CadastroCliente/vendor/noui/nouislider.min.js"></script>
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
  </body>
    </html>
