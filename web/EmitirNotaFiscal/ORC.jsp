<%-- 
    Document   : painel_patrimonio
    Created on : 05/08/2019, 13:03:46
    Author     : Marcos
--%>

<%@page import="Bean.User"%>
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
    <div class="area"></div>
      <nav class="main-menu">
          <div style=" background-size: 100%; background-position: center; width: 100%; height: 80px;">
              <image src="http://localhost:8080/Alba/resources/imagens/Logo Liso Transparente.png"style="
                                              margin-left: auto;
                                              margin-right: auto;
	position: absolute;
	top: 10px; left: 0; bottom: 0; right: 0;"/> 
          </div>
            <ul>
                <li>
                    <a href="..//painel.jsp">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">
                            Dashboard
                        </span>
                    </a>
                  
                </li>
                <li class="has-subnav">
                     <a href="../Alba/EmitirNotaFiscal/Entrar_Caixa.jsp">
                       <i class="fa fa-shopping-cart fa-2x"></i>
                        <span class="nav-text">
                            Frente de Caixa
                        </span>
                    </a>
                </li>
                <li class="has-subnav">
                    <a  href="../Configuracao/Config_Fiscal.jsp">
                        <i class="fa fa-cog fa-2x"></i>
                        <span class="nav-text">
                            Configuração
                        </span>
                    </a>
                </li>
               <li class="has-subnav">
                    <a  href="../Estoque/Cadastro.jsp">
                       <i class="fa fa-archive fa-2x"></i>
                        <span class="nav-text">
                            Estoque
                        </span>
                    </a>
                    
                </li>
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
                        <i class="fa fa-book fa-2x"></i>
                        <span class="nav-text">
                           Contabilidade
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
                       <i class="fa fa-money fa-2x"></i>
                        <span class="nav-text">
                            E-Commerce
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
        </nav>
     </header>
 
            <!-- MENU SECUNDARIO-->
         <div id='cssmenu' style=" padding-left: 60px; ">  
   <ul>
      <li><a href="../EmitirNotaFiscal/ORC.jsp" >Gerar Orçamento</a>
      </li>  
      
     <li><a href=''><i class="iconn ion-android-settings"></i> &nbsp;Configuração</a>
     <ul>
            <li><a href='../EmitirNotaFiscal/CONF_IMP.jsp'><i class="iconn ion-android-printer"></i> &nbsp;Impressoras</a></li>
            <li><a href='../EmitirNotaFiscal/CONF_BAL.jsp'><i class="iconn ion-android-printer"></i> &nbsp;Balança</a></li>
       
        </ul></li>
   </ul>
</div>   
            <!-- AREA DE AÇÃO -->
                <div  style="padding-left: 60px" class="container-contact100">
		<div style="padding: 0; padding-left: 20px; float: left; width: 50%; display: inline-block;" class="wrap-contact100">
		<div style="padding: 0; padding-left: 20px; padding-bottom: 10px; float: left; width: 80%; display: inline-block;" class="wrap-contact100">
		
                    <span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					Gerar Orçamento
				</span>
                    <ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Código <span class="required"></span></label>
                        <input style="width: 40%;" type="email" name="field3" class="field-divided" />	
                        <label>Descrição (F4) <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />	
                       
                    </ul>
                </div>
                    <div style="padding: 0; float: left; width: 20%; display: inline-block;" class="wrap-contact100">
		     <span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                        <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                        <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                        <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                    <ul class="form-style-1">
                    <li style="    margin-top: 42px;">
                        <input title="Tecle F4 para buscar produto" class="contact100-form-btn" style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/magnifier-tool.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;" 
                                               type="button" onclick="alert('Buscando!')" value="">
                        </li>
                    </ul>
                </div>
		<div style="padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Valor <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />	
                        <label>Unidade <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />
                        <div style=" border: 0; margin-right: 100px; padding-left: 10px; 
                             width: 100%; margin-top: 145px; background: #333333; padding-bottom: 10px;" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span style="color: #fff;" class="label-input100">Total</span>
                                        <input style=" border: 0; font-size: 35px; color: #fff;" class="input100" type="text" name="name" placeholder="" value="0.00">
				</div>
                        </li>
                    </ul>
                </div>
                    <div style="padding: 0;padding-bottom: 20px;   padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Quantidade (F10) <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />	
                        <label>Peso (Kg) <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />	
                        </li>
                    </ul>
                </div>
                    <div style="padding: 0; padding-bottom: 20px; 
                         padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li>
                    <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                    <label style="margin-top: 30px;">SubTotal <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" class="field-divided" />
                    </li>
                    
                </ul>
                </div>
                    <div style="padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li>
                    <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                    </li>
                    
                </ul>
                </div>
                    <form class="contact100-form validate-form" action="../EmitirNotaFiscal/Trans_e_Cliente_NFE.jsp" method="POST">
			<div style=" padding-top: 0; width: 71%; " class="container-contact100-form-btn">
					<input class="contact100-form-btn" style="color: #ffffff;
                                               cursor: pointer !important;
                                               background: rgb(234, 92, 26);;
                                               " type="submit" value="Gerar Orçamento">	
				</div>
                            <div style="padding-top: 0px; border-radius: 13px; height: 30px; width: 9%" class="container-contact100-form-btn">
					<input title="Tecle F6 para cancelar venda" class="contact100-form-btn" 
                                               style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/error.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;"
                                               type="submit" value="">	
				</div>
                        <div style="padding-top: 0px; border-radius: 13px; height: 30px; width: 9%" class="container-contact100-form-btn">
					<input title="Tecle F7 para transformar venda em orçamento" class="contact100-form-btn" 
                                               style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/test.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;"
                                               type="submit" value="">	
				</div>
                        <div style="padding-top: 0px; border-radius: 13px; height: 30px; width: 9%" class="container-contact100-form-btn">
					<input title="Tecle F8 para fechar caixa" class="contact100-form-btn" 
                                               style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/exit.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;"
                                               type="submit" value="">	
				</div>
			</form>
                     
                    
                    </div>
                    
                    <div style=" border-right: 0; padding: 0px 7px 0px 7px; border: 0; float: left; width: 50%; display: inline-block;" class="wrap-contact100">
			<form class="contact100-form validate-form" action="EnviaEmail" method="POST">
					
            <!-- Tabela -->
            <div style="border-radius: 0px; border-style: solid; border-width: 2px; background: #fff;
                 background: #fff; margin-bottom: 20px; overflow: auto; width: 100%; height: 560px;" class="validate-input bg1 rs1-wrap-input50">
		<table>
                <thead>
                  <tr>
                    <th>Item</th>
                    <th>DESCRIÇÃO</th>
                    <th>UND</th>
                    <th>QTD</th>
                    <th>VALOR</th>
                    <th>SUB-TOTAL</th>
                  </tr>
                <thead>
                <tbody style="font-size: 12px;">
                     <tr>
                    <td>1</td>
                    <td>IMPRESSORA COLORIDA ASDFGTSSDF SDF SDF SDF SDF SDF</td>
                    <td>2</td>
                    <td>1500</td>
                    <td>IMPR</td>
                    <td>IMPR</td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>REFRIGERADOR DE 01 PORTA</td>
                    <td>1</td>
                    <td>999</td>
                    <td>REF28</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>MICROONDAS</td>
                    <td>1</td>
                    <td>399</td>
                    <td>MICR</td>
                  </tr>
                  
                </tbody>
              </table>
            </div>	
            
			</form>
                        
                    </div>
                    
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

