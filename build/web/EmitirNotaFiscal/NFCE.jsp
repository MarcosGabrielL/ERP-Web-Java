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
<style>
    .row-clicked {
        background-color: #ea5c1a;
        color: #fff;
    }
</style>


  </head>
  
  
  <body style="margin: 0;" onload='setFocusToTextBox()'>
 <%
 User obj_Login_Bean=(User)session.getAttribute("user_session");
 
 String idCaixa = String.valueOf(session.getAttribute("idcaixa_login"));
 String loja =  String.valueOf(session.getAttribute("loja_login"));
 String cliente = String.valueOf(session.getAttribute("cliente_login"));
 
 System.out.println("IDCAIXA: "+idCaixa+"\n loja: "+loja +"\n cliente: "+cliente);
 
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
     
     </header>
 
            <!-- AREA DE AÇÃO -->
                <div  class="container-contact100">
		<div style="padding: 0; padding-left: 20px; float: left; width: 50%; display: inline-block;" class="wrap-contact100">
		<div style="padding: 0; padding-left: 20px; padding-bottom: 10px; float: left; width: 80%; display: inline-block;" class="wrap-contact100">
		
                    <span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					Emissão NFC-e
				</span>
                    <ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Código <span class="required"></span></label>
                        <input style="width: 40%;" autofocus type="email" name="field3" id="codigo" class="field-divided" />	
                        <label>Descrição (F4) <span class="required"></span></label>
                        <input style="width: 100%;" id="descricao" type="email" name="field3" class="field-divided" />	
                       
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
                                               type="button" onclick="buscarNCM()"
                                               data-toggle="modal" data-target="#myModal">
                        </li>
                    </ul>
                </div>
		<div style="padding: 0; padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Valor <span class="required"></span></label>
                        <input style="width: 100%;" id="valor" type="email" name="field3" class="field-divided" />	
                        <label>Unidade <span class="required"></span></label>
                        <input style="width: 100%;" id="und" type="email" name="field3" class="field-divided" />
                        <div style=" border: 0; margin-right: 100px; padding-left: 10px; 
                             width: 100%; margin-top: 145px; background: #ea5c1a; padding-bottom: 10px;" class="wrap-input100 validate-input bg1 rs1-wrap-input50" data-validate="Por favor digite seu nome">
					<span style="color: #fff;" class="label-input100">Total</span>
                                        <input style=" border: 0; font-size: 35px; color: #fff;" id="total" class="input100" type="text" name="name">
				</div>
                        </li>
                    </ul>
                </div>
                    <div style="padding: 0;padding-bottom: 20px;   padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Quantidade (F10) <span class="required"></span></label>
                        <input style="width: 100%;" type="email" name="field3" value="1" class="field-divided" />	
                        <label>Peso (Kg) <span class="required"></span></label>
                        <input style="width: 100%;" id="kg" type="email" name="field3" class="field-divided" value="0"/>	
                        </li>
                    </ul>
                </div>
                    <div style="padding: 0; padding-bottom: 20px; 
                         padding-left: 20px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li>
                    <label>&nbsp;&nbsp;&nbsp; <span class="required"></span></label>
                    <label style="margin-top: 30px; ">SubTotal <span class="required"></span></label>
                        <input readonly style="width: 100%" id="subtotal" type="email" name="field3" class="field-divided" />
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
                                               " type="submit" value="Finalizar Compra">	
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
	
        <!-- POP UP NCM -->
         <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div style="width: 750px;" class="modal-content">
        <div class="modal-header">
          <button type="button" id="elemento1" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Selecione o Produto</h4>
        </div>
        <div class="modal-body">
          <div style="padding: 0; padding-left: 10px; float: left; width: 100%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                <label>Descrição<span class="required"></span></label>
                        <input style="text-transform: uppercase;" id="debusc" name="debusc" type="text" class="field-long" />
                <div style="text-align: left; background: #fff; margin-top: 20px; 
                     overflow: auto; width: 100%; height: 250px;" class="validate-input bg1 rs1-wrap-input50">
		<table id="scheduleTable" class="order-table">
                <thead>
                  <tr style="text-align: left;">
                    <th style="text-align: left;">DESCRIÇÃO</th>
                    <th>CÓDIGO</th>
                    <th>UND</th>
                  </tr>
                <thead>
                <tbody style="text-align: left; font-size: 12px;">
                  <!-- SERA PREENCHIDO -->
                </tbody>
              </table>
            </div>
                        
                </ul>
                    </div>
        </div>
      </div>
  
             <%
 }
%>


<!-- SCRIPTS -->
<!-- Salva dados login -->
<!-- Salva dados venda -->
    <!-- Salva produto vendido -->
<!-- Salva dados seção -->
<!-- COMPLETA DADOS TABELA-->
<script>
 function completa(elemento){
        
        document.getElementById('elemento1').click();
        document.getElementById('codigo').value = elemento;
        //Verifica se codigo é cean ou balança
        $.ajax({
                type: "GET",
                url: '../add_produto_servlet',
                data: "debusc=" + elemento,
                complete: [
                    function (response) {
                        
                       var obj = $.parseJSON(response.responseText);
                       
                       $("#descricao").val(obj.descricao);
                       $("#und").val(obj.unidade);
                       $("#valor").val(obj.precoun);
                       if(obj.unidade === "KG"){
                           var peso = pegaPeso();
                          $("#kg").val(peso);
                       }else{
                          // alert("Não é KG");
                       }
                       var subtotal = parseFloat(obj.precoun)*parseFloat(peso);
                       $("#subtotal").val(subtotal.toFixed(2));
                       
                       //Adicionar produto na lista de compra
                      
                       AdicionaProdutoCarrinho(subtotal.toFixed(2));
                       
                    }
                ]
            });
        
    }
</script>
<!-- BUSCA PRODUTOS TABELA-->
<script>
    $('#debusc').on('input',function(e){
        AddTableRow();
});
    function AddTableRow(){
        var dsc = document.getElementById('debusc').value;
        $.ajax({
                type: "GET",
                url: '../buscar_servlet',
                data: "debusc=" + dsc,
                complete: [
                    function (response) {
                        $("#scheduleTable").find("tr:not(:first)").remove();
                        
                        var trHTML = response.responseText;
                        $("#scheduleTable tbody").append(trHTML);
                    }
                ]
            });
    }
    </script>
<!-- Seleciona linha -->
<script type="text/javascript">
    function changeBgColor(element) {
        if(element.className === 'row-clicked') {
            element.className = '';
        } else {
            element.className = 'row-clicked';
          completa(element.cells[1].innerText);
        }
    }
</script>
<!-- PEga Peso da balança -->
<script> 
    function pegaPeso(){
        return "10";
    }
    function AdicionaProdutoCarrinho(subtotal){
        
        //Busca lista de produtos ja passados
        
        //Atualiza total
        
        //Atualiza Tabela
        
        
         $("#total").val(subtotal);
    }
        </script>
<!-- PINTA LINHA TABELA
<script>
    $(document).ready(function(){
      $("tr").click(function(){
        $(this).find('td').each(function(i) {
          $th = $("thead th")[i];
          alert(jQuery($th).text() + ": " + $(this).html());
        });                  
      });
    });
  </script> -->
<script>
    $('#codigo').on('input',function(e){
        AddProduto();
});
    function AddProduto(){
        alert("Procurando Produto");
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
<script>
function setFocusToTextBox(){
    document.getElementById("codigo").focus();
    var textbox = document.getElementById("codigo");
    textbox.focus();
    textbox.scrollIntoView();
}
</script>
<!-- SCRIPTS FIM -->
  </body>
    </html>

