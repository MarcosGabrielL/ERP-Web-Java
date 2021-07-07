<%-- 
    Document   : PainelControle
    Created on : 04/08/2019, 02:52:16
    Author     : Marcos
--%>

<%@page import="Bean.LoginCentral"%>
<%@page import="Bean.Fiscal"%>
<%@page import="Dao.FiscalDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Bean.Login"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="Paginas/Painel/css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
  <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet">
  <script src="//code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="Paginas/Painel/css/style_1.css">
 <link rel="stylesheet" href="Paginas/Painel/css/style_menu_horizontal_sub.css">
 <!--===============================================================================================-->
	<link rel="icon" type="image/png" href="Paginas/CadastroCliente/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/vendor/bootstrap/css/bootstrap.min.css">
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
	<link rel="stylesheet" type="text/css" href="Paginas/CadastroCliente/css/main_1.css">
         <!-- TABELA -->
        <link rel="stylesheet" href="Paginas/Painel/Patrimonio/Csss/style1.css">
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
 LoginCentral obj_Login_Bean=(LoginCentral)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
     response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Por Favor, Faça o Login primeiro');");
            pw.println("</script>");
 %>
 <script type="text/javascript">
 window.location.href="http://localhost:8080/Alba/loginCentral.jsp";
 </script>
 <% 
 }else{
 %>
 <header>
    <div class="area"></div>
      <nav class="main-menu">
          <div style=" background-size: 100%; background-position: center; width: 100%; height: 80px;     background-color: #212121;">
              <image src="resources/imagens/Logo Liso Transparente.png"style="
                                              margin-left: auto;
                                              margin-right: auto;
	position: absolute;
	top: 10px; left: 0; bottom: 0; right: 0;"/>
          </div>
            <ul>
                <li class="has-subnav">
                    <a href="PainelControle.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Dashboard
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                    <a style="background: #212121;" href="PainelControle_Cad_Cliente.jsp">
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
 
            <!-- MENU SECUNDARIO-->
         <div id='cssmenu' style=" padding-left: 60px; ">  
   <ul>
      <li><a href="PainelControle_Cad_Cliente.jsp" >Cadastrar Cliente</a>
      </li>  
      </li>
      <li><a href="Configuracao/Config_Licenca.jsp" >Licença </a>
      </li>  
      <li><a href="Configuracao/Config_Maquina_Cartao.jsp" >Maquina Cartão</a>
      </li>  
      <li><a href="Configuracao/Config_Banco.jsp" >Banco de Dados</a>
      </li>  
   </ul>
</div>   
            <% 
            //    obj_Login_Bean.getCNPJ();
            FiscalDAO fdao = new FiscalDAO();
            for(Fiscal f : fdao.read()){
            //    if(f.getCNPJ().equals(anObject))
            }
 %>
            <!-- AREA DE AÇÃO -->
                <div  class="container-contact100">
                    <form class="contact100-form validate-form" action="profile/controller/Cadastro_Cliente_controller.jsp" method="POST">
			
		<div style="padding: 0; padding-left: 60px; float: left; width: 100%; display: inline-block;" class="wrap-contact100">
			<span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					Cadastro de Cliente
				</span>
                    </div>
		<div style=" padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Identificação
				</span>
                
                <ul class="form-style-1">
                    <li><label>Nome <span class="required"></span></label>
                        <input type="text" name="nome" class="field-long"  /> 
                        <label>CNPJ <span class="required"></span></label>
                        <input type="text" name="cnpj" class="field-long" data-mask="00.000.000/0000-00" />
                        <label>Razão Social <span class="required"></span></label>
                        <input type="text" name="aa" class="field-long"  />
                        <label>Nome Fantasia <span class="required"></span></label>
                        <input type="text" name="bb" class="field-long" />
                        <span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Contato
				</span>
                        <label>Telefone <span class="required"></span></label>
                        <input type="text" name="telefone" data-mask="(00) 00000-0000" class="field-long"/> 
                        <label>E-mail <span class="required"></span></label>
                        <input type="text" name="email" class="field-long" placeholder="" /> 
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
                        <input type="text" name="cep" class="field-long" data-mask="00000-000" />
                        <label>Logradouro<span class="required"></span></label>
                        <input type="text" name="endereco" class="field-long" placeholder="" />
                        <label>Cidade<span class="required"></span></label>
                        <input type="text" name="cidade" class="field-long" placeholder="" />
                        <label>UF<span class="required"></span></label>
                        <input type="text" name="estado" class="field-long" placeholder="" />
                        <label>Bairro<span class="required"></span></label>
                        <input type="text" name="bairro" class="field-long" placeholder="" />
                        <label>Numero<span class="required"></span></label>
                        <input type="text" name="numero" class="field-long" />
                        <label>Complemento<span class="required"></span></label>
                        <input type="text" name="complemento" class="field-long" />
                        
                    </li>
                    
                </ul>
                    </div> 
                        <!-- Permissões -->
                         <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                <ul class="form-style-1">
                    <li>
                       <label>Módulos<span class="required"></span></label>
                        <input type="checkbox" name="nfce" value="1" checked="checked"> NFC-e<br>
                        <input type="checkbox" name="nfe" value="2" checked="checked"> NF-e<br>
                        <input type="checkbox" name="gestor" value="3" checked="checked"> Gestor<br>
                        <input type="checkbox" name="marketplace" value="4" checked="checked"> Marketplace<br>
                        <input type="checkbox" name="ecommerce" value="5" checked="checked"> E-Commerce<br>
                        <input type="checkbox" name="contabilidade" value="6" checked="checked"> Contabilidade<br>
                        <input type="checkbox" name="aplicativo" value="7" checked="checked"> Aplicativo<br>
                    </li>
                    <label>Tempo Licença <span class="required"></span></label>
                    <select name="licenca" class="field-select">
                        <option value="1">Teste Grátis</option>
                        <option value="2">Mensal</option>
                        <option value="3">Trimestral</option>
                        <option value="4">Semestral</option>
                        <option value="5">Anual</option>
                        <option value="6">Trienal</option>
                        </select>
                </ul>
                    </div>
                        
                <div style=" padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Acesso
				</span>
                <ul class="form-style-1">
                    <li>
                        <label>Usuario <span class="required"></span></label>
                        <input type="text" name="user" class="field-long" placeholder="" />
                        <label>Senha <span class="required"></span></label>
                        <input style=" box-sizing: border-box;
                        -webkit-box-sizing: border-box;
                        -moz-box-sizing: border-box;
                        border: 1px solid #BEBEBE;
                        padding: 7px;
                        margin: 0px;
                        -webkit-transition: all 0.30s" type="password" name="pass" class="field-long" placeholder="" />
                        <label>Confirme a Senha<span class="required"></span></label>
                        <input style="" type="password" name="csenha" class="field-long" placeholder="" />
                        
                    </li>
                </ul>
                    </div>
                     
                    <div style=" padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                
                <ul class="form-style-1">
                    <li>
                        
					<input class="contact100-form-btn" style="color: #ffffff;
                                               cursor: pointer !important;
                                               margin-top: 20px;
                                               " type="submit" value="Cadastrar Cliente">	
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
<!-- SCRIPTS FIM -->
  </body>
    </html>
