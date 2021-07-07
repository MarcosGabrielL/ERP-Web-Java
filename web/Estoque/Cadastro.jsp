
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
        
        <!-- MODAL-->
        
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
        font-weight: bold;
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
.colorir {
    background-color: rgb(234, 92, 26);
}
</style>

  </head>
  
  
  <body style="margin: 0;">

 <header>
    <div class="area"></div>
      <nav class="main-menu">
          <div style=" background-size: 100%; background-position: center; width: 100%; height: 80px;">
              
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
                    <a href="../EmitirNotaFiscal/NFCE.jsp">
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
                    <a style="background: #212121;" href="../Estoque/Cadastro.jsp">
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
      <li><a href="" >Edição Produtos</a>
          <ul>
              <li><a href="../Estoque/Cadastro.jsp" >Cadastrar Produto</a></li>
            <li><a href="../Estoque/Edit_prod.jsp" >Gerenciar Produtos</a></li> 
        </ul>
      </li> 
      <li><a href="" >Estoque</a>
          <ul>
              <li><a href="../Estoque/Estoque_falta.jsp" >Produtos em falta</a></li>
              <li><a href="../Estoque/Estoque.jsp" >Estoque Especifico</a></li>
            <li><a href="../Estoque/Estoque_area.jsp" >Estoque por Area</a></li> 
            <li><a href="../Estoque/Estoque_editar.jsp" >Editar Tipos</a></li>
            <li><a href="../Estoque/Estoque_relatorios.jsp" >Relatorios</a></li>
        </ul>
      </li>  
      <li><a href="" >Validade</a>
          <ul>
              <li><a href="../Estoque/Validade_falta.jsp" >Produtos Vencidos</a></li>
              <li><a href="../Estoque/Validade.jsp" >Validade Especifica</a></li>
            <li><a href="../Estoque/Validade_area.jsp" >Validade por Area</a></li> 
            <li><a href="../Estoque/Validade_relatorios.jsp" >Relatorios</a></li>
        </ul>
      </li>  
      <li><a href="../Estoque/Estoque.jsp" >Edição Fornecedores</a>
          <ul>
              <li><a href="../Estoque/Cadastro_forn.jsp" >Cadastrar Fornecedores</a></li>
            <li><a href="../Estoque/Edit_forn.jsp" >Editar Fornecedores</a></li>
            <li><a href="../Estoque/Fornecedores.jsp" >Fornecedores</a></li>
        </ul
      </li>
      <li><a href="" >Remessas</a>
          <ul>
              <li><a href="../Estoque/Entrada.jsp" >Entrada</a></li>
            <li><a href="../Estoque/Caminho.jsp" >Caminho</a></li>  
      <li><a href="../Estoque/Retornada.jsp" >Retornada</a></li>
        </ul>
      </li> 
   </ul>
</div>   
            <!-- AREA DE AÇÃO -->
                <div  class="container-contact100">
                    <form class="contact100-form validate-form" action="../Estoque/Controller/Cadastrando_controller.jsp" method="POST">
			
                    <div style="padding: 0; padding-left: 60px; float: left; width: 100%; display: inline-block;" class="wrap-contact100">
			<span style="  color: #333333;  padding-bottom: 6px; text-align: left; " class="contact100-form-title">
					Cadastrar Produto
				</span>
                    <ul class="form-style-1">
                    <li style="margin-top: 0;">
                        <label>Descrição <span class="required"></span></label>
                        <input style="text-transform: uppercase; width: 90%;" type="text" name="descricao" class="field-divided" />	
                        </li>
                    </ul>
                </div>
                    <span style=" font-size: 20px; padding-left: 60px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Dados Produtos
				</span>
		<div style=" padding: 0; padding-left: 60px; float: left; width: 20%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		
                <ul class="form-style-1">
                    <li><label>Código Barras <span class="required"></span></label>
                        <input id="gtni" type="text" name="cean" class="field-long" placeholder="" /> 
                        <label>Loja <span class="required"></span></label>
                        <input readonly type="text" name="loja" class="field-long" placeholder="" value="Sede" />
                <label>Valor Venda <span class="required"></span></label>
                        <input id="preçoUn" type="text" name="precoun" class="field-long" placeholder="" />
                        <label id="minimo" style="color: rgb(150,0,20);">Minimo de: <span class="required"></span></label>
                    </li>
                </ul>
                    </div>
                    <div style=" padding: 0; padding-left: 10px; float: left; width: 5%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		
                
                <ul class="form-style-1">
                    <li><button title="SEM GTIN" class="contact100-form-btn" style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/error.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;
                                               margin-top: 25px;" 
                                               type="button" onclick="confirmacao()"></button>
                        
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li><label>Código Produto <span class="required"></span></label>
                        <input id="cod" readonly style="background: #eff0f1;" type="text" name="codigo" class="field-long" placeholder="" /> 
                        <label>Preço Entrada <span class="required"></span></label>
                        <input id="Ventrada" type="text" name="ventrada" class="field-long" placeholder="" />
                    <label>Tipo</label>
                        <select name="tipo" class="field-select">
                        <option value="Sem tipo">Sem tipo</option>
                        <option value="Hortifruti">Hortifruti</option>
                        <option value="Higiene e limpeza do lar">Higiene e limpeza do lar</option>
                        <option value="Higiene e limpeza pessoal">Higiene e limpeza pessoal</option>
                        <option value="Perfumaria">Perfumaria</option>
                        <option value="Utilidades domésticas">Utilidades domésticas</option>
                        <option value="Campo e lazer">Campo e lazer</option>
                        <option value="Padaria">Padaria</option>
                        <option value="Açougue">Açougue</option>
                        <option value="Enlatados">Enlatados</option>
                        <option value="Doces">Doces</option>
                        <option value="Massas e biscoitos">Massas e biscoitos</option>
                        <option value="Cereais">Cereais</option>
                        <option value="Outros">Outros</option>
                        </select>
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li>
                        
                    <label>Validade <span class="required"></span></label>
                        <input data-mask="00/00/0000" type="text" name="validade" class="field-long" placeholder="" />
                <label>Quantidade Comercial <span class="required"></span></label>
                        <input type="text" name="quantidade" class="field-long" placeholder="" />
                        <label>NCM <span class="required"></span></label>
                        <input type="text" id="NCM" name="ncm" class="field-long" placeholder="" />
                    </li>
                </ul>
                    
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                    <li>
                    <label>Data Entrada <span class="required"></span></label>
                        <input value="" readonly style="background: #eff0f1;" type="text" name="data" class="field-long" placeholder="" />
                    <label>Unidade Comercial <span class="required"></span></label>
                    <select name="unidade" class="field-select">
                        <option value="UN">UN</option>
                        <option value="CX">CX</option>
                        <option value="KG">KG</option>
                        <option value="Lt">Lt</option>
                        <option value="TON">TON</option>
                        <option value="DUZIA">DUZIA</option>
                        <option value="QUILAT">QUILAT</option>
                        <option value="METRO">METRO</option>
                        <option value="M3">M3</option>
                        <option value="PARES">PARES</option>
                        <option value="M2">M2</option>
                        </select>
                    <button title="Buscar NCM" class="contact100-form-btn" style="color: #ffffff; 
                                               background: #fff;
                                               background-image: url(../resources/imagens/magnifier-tool.png); 
                                               cursor: pointer !important; background-position:center;
                                               background-repeat:no-repeat;
                                               width: 20%; margin-right: 80%; margin-top: 13px;" 
                                               type="button" onclick="buscarNCM()"
                                               data-toggle="modal" data-target="#myModal"></button>
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style="  font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Dados Fiscais
				</span>
                <ul class="form-style-1">
                    <label>CST/CSOSN Saida 
                        <a style="text-decoration: none; text-decoration: none; color: rgb(150,0,20);" data-toggle="modal" data-target="#myModal1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+</a>
                        <span class="required"></span>
                    </label>
                        <input type="text" id="CST" name="cst" class="field-long" placeholder="" />
                <label>CFOP de Saida<span class="required"><a style="color: rgb(150,0,20);" data-toggle="modal" data-target="#myModal2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+</a></span></label>
                        <input type="text" name="cfop" class="field-long" placeholder="" />
                <label>CEST <span class="required"></span></label>
                        <input type="text" name="cest" class="field-long" placeholder="" />
                <label>Base ICMS Próprio <span class="required"></span></label>
                        <input id="BaseICMS" readonly style="background: #eff0f1;" type="text" name="baseicms" class="field-long" placeholder="" />
                <label>Alíquota ICMS<span class="required"></span></label>
                        <input type="text" name="aliquotaicms" class="field-long" placeholder="" />
                <label>ICMS<span class="required"></span></label>
                        <input value="0.00" readonly id="ICMS" style="background: #eff0f1;" type="text" name="icms" class="field-long" placeholder="" />
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" color: #333333; font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                <ul class="form-style-1">
                <label>Un. Tributária <span class="required"></span></label>
                        <input id="untri" readonly style="background: #eff0f1;" type="text" name="unidadetributavel" class="field-long" placeholder="" />
                <label>Qtde. Tributavel <span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="qtrib" class="field-long" placeholder="" />
                <label>Código Tributavel <span class="required"></span></label>
                        <input id="gtnitrib" type="text" name="ceantrib" class="field-long" placeholder="" />
                <label>Valor Tributavel<span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="vutrib" class="field-long" placeholder="" />
                <label>Modalidade de determinação da BC do ICMS <span class="required"></span></label>
                        <select name="bcicms" class="field-select">
                        <option value="">---</option>
                        <option value="0">0=Margem Valor Agregado (%)</option>
                        <option value="1">1=Pauta (Valor)</option>
                        <option value="2">2=Preço Tabelado Máx. (valor)</option>
                        <option value="3">3=Valor da operação</option>
                        </select>
                <label>Percentual Redução BC do ICMS (%) <span class="required"></span></label>
                <input type="text" name="predbc" class="field-long" placeholder="" />
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" color: #333333; font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                <ul class="form-style-1">
                <label>Modalidade de determinação da BC do ICMS ST <span class="required"></span></label>
                        <select name="bcicmsst" class="field-select">
                        <option value="">---</option>
                        <option value="0">0=Preço tabelado ou máximo sugerido</option>
                        <option value="1">1=Lista Negativa (valor)</option>
                        <option value="2">2=Lista Positiva (valor)</option>
                        <option value="3">3=Lista Neutra (valor)</option>
                        <option value="4">4=Margem Valor Agregado (%)</option>
                        <option value="5">5=Pauta (valor)</option>
                        </select>
                <label>Percentual MVA do ICMS ST (%) <span class="required"></span></label>
                        <input type="text" name="pmvast" class="field-long" placeholder="" />
                <label>Percentual Redução BC do ICMS ST(%) <span class="required"></span></label>
                        <input type="text" name="predbcst" class="field-long" placeholder="" />
                <label>Alíquota ICMS ST <span class="required"></span></label>
                        <input type="text" name="vicmsst" class="field-long" placeholder="" />
                <label>Base do ICMS ST <span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="vbcst" class="field-long" placeholder="" />
                <label>ICMS ST<span class="required"></span></label>
                        <input type="text" name="picmsst" class="field-long" placeholder="" />
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style=" color: #333333; font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					&nbsp;&nbsp;&nbsp;
				</span>
                <ul class="form-style-1">
                <label>Percentual do diferimento <span class="required"></span></label>
                        <input type="text" name="pdif" class="field-long" placeholder="" />
                <label>Valor do ICMS diferido <span class="required"></span></label>
                        <input type="text" name="vicmsdif" class="field-long" placeholder="" />
                <label>Valor do ICMS <span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="vicms" class="field-long" placeholder="" />
                <label>Alíquota Cálc. Crédito <span class="required"></span></label>
                        <input type="text" name="pcredsn" class="field-long" placeholder="" />
                <label>ICMS Aproveitavel <span class="required"></span></label>
                        <input type="text" name="vcredicmssn" class="field-long" placeholder="" />
                    </li>
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 60px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style="  font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					PIS
				</span>
                <ul class="form-style-1">
                <label>CST do PIS <span class="required"></span></label>
                        <select name="cstpis" class="field-select">
                        <option value="01">01 ? Operação Tributável com Alíquota Básica</option>
                        <option value="02">02 ? Operaneral Questionção Tributável com Alíquota por Unidade de Medida de Produto</option>
                        <option value="03">03 ? Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                        <option value="04">04 ? Operação Tributável Monofásica ? Revenda a Alíquota Zero</option>
                        <option value="05">05 ? Operação Tributável por Substituição Tributária</option>
                        <option value="06">06 ? Operação Tributável a Alíquota Zero</option>
                        <option value="07">07 ? Operação Isenta da Contribuição</option>
                        <option value="08">08 ? Operação sem Incidência da Contribuição</option>
                        <option value="09">09 ? Operação com Suspensão da Contribuição</option>
                        <option value="49">49 ? Outras Operações de Saída</option>
                        <option value="99">99 ?  Outras Operações</option>
                        </select>
                <label>Base do PIS<span class="required"></span></label>
                        <input id="VBCPIS" readonly style="background: #eff0f1;" type="text" name="vbcpis" class="field-long" placeholder="" />
                <label>Alíquota do PIS <span class="required"></span></label>
                        <input type="text" name="ppis" class="field-long" placeholder="" />
                <label>Valor do PIS <span class="required"></span></label>
                        <input value="0.00" readonly id="VPIS" style="background: #eff0f1;" type="text" name="vpis" class="field-long" placeholder="" />
                    
                </ul>
                    </div>
                    <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<span style="  font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					COFINS
				</span>
                <ul class="form-style-1">
                <label>CST do COFINS <span class="required"></span></label>
                        <select name="cstcofins" class="field-select">
                        <option value="01">01 ? Operação Tributável com Alíquota Básica</option>
                        <option value="02">02 ? Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                        <option value="03">03 ? Operação Tributável com Alíquota por Unidade de Medida de Produto</option>
                        <option value="04">04 ? Operação Tributável Monofásica ? Revenda a Alíquota Zero</option>
                        <option value="05">05 ? Operação Tributável por Substituição Tributária</option>
                        <option value="06">06 ? Operação Tributável a Alíquota Zero</option>
                        <option value="07">07 ? Operação Isenta da Contribuição</option>
                        <option value="08">08 ? Operação sem Incidência da Contribuição</option>
                        <option value="09">09 ? Operação com Suspensão da Contribuição</option>
                        <option value="49">49 ? Outras Operações de Saída</option>
                        <option value="99">99 ?  Outras Operações</option>
                        </select>
                <label>Base do COFINS<span class="required"></span></label>
                        <input id="VBCCOFINS" readonly style="background: #eff0f1;" type="text" name="vbccofins" class="field-long" placeholder="" />
                <label>Alíquota do COFINS <span class="required"></span></label>
                        <input type="text" name="pcofins" class="field-long" placeholder="" />
                <label>Valor do COFINS <span class="required"></span></label>
                        <input id="VCOFINS" value="0.00" readonly id="VCOFINS" style="background: #eff0f1;" type="text" name="vcofins" class="field-long" placeholder="" />
                </ul>
                    </div>
                      <div style="padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block; padding-bottom: 15px;" class="wrap-contact100">
		<span style="  font-size: 20px; padding-top: 6px; text-align: left; " class="contact100-form-title">
					Valor Tributos (Aproximado)
				</span>
                <ul class="form-style-1">
                <label>Tributação Federal Produtos Nacionais <span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="afederaln" class="field-long" placeholder="" />
                <label>Tributação Federal Produtos Importados<span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="afederali" class="field-long" placeholder="" />
                <label>Tributação Estadual<span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="aestadual" class="field-long" placeholder="" />
                <label>Tributação municipal<span class="required"></span></label>
                        <input readonly style="background: #eff0f1;" type="text" name="amunicipal" class="field-long" placeholder="" />
                </ul>
                    </div>
                      <div style="margin-top: 20px; margin-bottom: 20px; padding: 0; padding-left: 10px; float: left; width: 25%; display: inline-block;" class="wrap-contact100">
		 <input class="contact100-form-btn" style="color: #ffffff;
                                               cursor: pointer !important;
                                               " type="submit" value="Cadastrar Produto">
                 
                 
                    </div>
                    </form>
                    <!-- Tabela -->
		</div>
                    
                    
          <!-- POP UP NCM -->
         <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div style="width: 750px;" class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Selecione o NCM</h4>
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
                    <th>NCM</th>
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
      
    </div>
  </div> 
   <!-- Modal CST -->
  <div class="modal fade" id="myModal1" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div style="width: 750px;" class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Tabela CST/CSON</h4>
        </div>
        <div class="modal-body">
          <div style="padding: 0; padding-left: 10px; float: left; width: 100%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                <div style="text-align: left; background: #fff; 
                     overflow: auto; width: 100%; height: 300px;" class="validate-input bg1 rs1-wrap-input50">
		<a><img style="margin-left: 20px; "src="../resources/imagens/cst4.png" > </a>  
            </div>
                        
                </ul>
                    </div>
        </div>
      </div>
      
    </div>
  </div> 	
  <!-- Modal CFOP-->
  <div class="modal fade" id="myModal2" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div style="width: 750px;" class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Tabela CFOP</h4>
        </div>
        <div class="modal-body">
          <div style="padding: 0; padding-left: 10px; float: left; width: 100%; display: inline-block; padding-bottom: 7px;" class="wrap-contact100">
		<ul class="form-style-1">
                <div style="text-align: left; background: #fff; 
                     overflow: auto; width: 100%; height: 300px;" class="validate-input bg1 rs1-wrap-input50">
		<table border="1" cellpadding="0" cellspacing="0" style="width:912px">
	<tbody>
		<tr>
			<td colspan="2">
			<h2><span style="color:#FF0000"><strong>Com&eacute;rcio</strong></span></h2>
			</td>
			<td colspan="2">
			<h2><span style="color:#FF0000"><strong>Ind&uacute;stria</strong></span></h2>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>CFOP</strong></p>
			</td>
			<td>
			<p><strong>DESCRI&Ccedil;&Atilde;O</strong></p>
			</td>
			<td>
			<p><strong>CFOP</strong></p>
			</td>
			<td>
			<p><strong>DESCRI&Ccedil;&Atilde;O</strong></p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.102</strong></p>
			</td>
			<td>
			<p>Venda de mercadoria adquirida ou recebida de terceiros.</p>
			</td>
			<td>
			<p><strong>5.101</strong></p>
			</td>
			<td>
			<p>Venda de produ&ccedil;&atilde;o do estabelecimento.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.405</strong></p>
			</td>
			<td>
			<p>Venda de mercadoria adquirida/recebida de terceiros em opera&ccedil;&atilde;o com mercadoria sujeita ao regime de substitui&ccedil;&atilde;o tribut&aacute;ria, na condi&ccedil;&atilde;o de contribuinte substitu&iacute;do.</p>
			</td>
			<td>
			<p><strong>5.401</strong></p>
			</td>
			<td>
			<p>Venda de produ&ccedil;&atilde;o do estabelecimento em opera&ccedil;&atilde;o com produto sujeito ao regime de substitui&ccedil;&atilde;o tribut&aacute;ria, na condi&ccedil;&atilde;o de contribuinte substituto.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.202</strong></p>
			</td>
			<td>
			<p>Devolu&ccedil;&atilde;o de compra para comercializa&ccedil;&atilde;o.</p>
			</td>
			<td>
			<p><strong>5.201</strong></p>
			</td>
			<td>
			<p>Devolu&ccedil;&atilde;o de compra para industrializa&ccedil;&atilde;o.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.411</strong></p>
			</td>
			<td>
			<p>Devolu&ccedil;&atilde;o de compra para comercializa&ccedil;&atilde;o em opera&ccedil;&atilde;o com mercadoria sujeita ao regime de substitui&ccedil;&atilde;o tribut&aacute;ria.</p>
			</td>
			<td>
			<p><strong>5.410</strong></p>
			</td>
			<td>
			<p>Devolu&ccedil;&atilde;o de compra para industrializa&ccedil;&atilde;o ou produ&ccedil;&atilde;o rural em opera&ccedil;&atilde;o com mercadoria sujeita ao regime de substitui&ccedil;&atilde;o tribut&aacute;ria - Classificam-se neste c&oacute;digo as devolu&ccedil;&otilde;es de mercadorias adquiridas para serem utilizadas em processo de industrializa&ccedil;&atilde;o ou produ&ccedil;&atilde;o rural cujas entradas tenham sido classificadas como &quot;Compra para industrializa&ccedil;&atilde;o ou produ&ccedil;&atilde;o rural em opera&ccedil;&atilde;o com mercadoria sujeita ao regime de substitui&ccedil;&atilde;o tribut&aacute;ria&quot;.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.949</strong></p>
			</td>
			<td>
			<p>Outra sa&iacute;da de mercadoria ou presta&ccedil;&atilde;o de servi&ccedil;o n&atilde;o especificado</p>
			</td>
			<td>
			<p><strong>5.949</strong></p>
			</td>
			<td>
			<p>Outra sa&iacute;da de mercadoria ou presta&ccedil;&atilde;o de servi&ccedil;o n&atilde;o especificado.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.910</strong></p>
			</td>
			<td>
			<p>Remessa em bonifica&ccedil;&atilde;o, doa&ccedil;&atilde;o ou brinde</p>
			</td>
			<td>
			<p><strong>5.910</strong></p>
			</td>
			<td>
			<p>Remessa em bonifica&ccedil;&atilde;o, doa&ccedil;&atilde;o ou brinde.</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.911</strong></p>
			</td>
			<td>
			<p>Remessa de amostra gr&aacute;tis</p>
			</td>
			<td>
			<p><strong>5.911</strong></p>
			</td>
			<td>
			<p>Remessa de amostra gr&aacute;tis</p>
			</td>
		</tr>
		<tr>
			<td>
			<p><strong>5.915</strong></p>
			</td>
			<td>
			<p>Remessa de mercadoria ou bem para conserto ou reparo</p>
			</td>
			<td>
			<p><strong>5.915</strong></p>
			</td>
			<td>
			<p>Remessa de mercadoria ou bem para conserto ou reparo</p>
			</td>
		</tr>
	</tbody>
</table>
            </div>
                        
                </ul>
                    </div>
        </div>
      </div>
      
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
   <script type="text/javascript">
    $("#validade").mask("00/00/0000");
    </script>
 </script>
 
<script type="text/javascript">
    
    window.onload = function(){
    document.getElementById("select").onchange = function(){
    $('#lname').val(this.value);
    }
    }
</script>

<!-- AÇÂO BOTÂO SEM GTNI -->
<script>
function confirmacao() {
    document.getElementById("gtnitrib").value = "SEM GTIN";
    document.getElementById("gtni").value = "SEM GTIN";
    
       
}</script>
<!-- Zeros a Esquerda -->
<script>
    function padDigits(number, digits) {
    return Array(Math.max(digits - String(number).length + 1, 0)).join(0) + number;
}
    </script>
<!-- Minimo para lucro -->
<script>
    document.getElementsByName("Ventrada")[0].addEventListener('change', minimo);
    document.getElementsByName("preçoUn")[0].addEventListener('change', CompletaDados);
    document.getElementsByName("NCM")[0].addEventListener('change', unidade);
    function minimo(){
        alert("Bsu");
        //Calculo minimo para lucrar
    var Val_entrada = parseFloat(document.getElementById('Ventrada').value, 10);
    var Val_icms = parseFloat(document.getElementById('ICMS').value, 10);
    var Val_cofins = parseFloat(document.getElementById('VCOFINS').value, 10);
    var Val_pis = parseFloat(document.getElementById('VPIS').value, 10);
    
    var cam = Val_entrada + Val_icms + Val_cofins + Val_pis;
       document.getElementById("minimo").innerHTML = "Minimo de: "+cam+" Para Margem de lucro: 0%";
       
       calculoimposto(); 
    }
  function CompletaDados(){
      alert("Basau");
      //completa campos com vlaor
    var valor = parseFloat(document.getElementById('preçoUn').value, 10);
     document.getElementById("VBCPIS").value = valor;
     document.getElementById("VBCCOFINS").value = valor;
     document.getElementById("BaseICMS").value = valor;
     
    calculoimposto(); 
    }
    function unidade(){
        alert("Bu");
    }
    function calculoimposto{
     alert("calculo");
        calculopis_cofins();
    }
    function calculopis_cofins(){
      calculoibpt();
    }
     function calculoibpt(){
    }
   
</script>
<!-- TABELA -->
<script>
    $('#debusc').on('input',function(e){
        AddTableRow();
});
    function AddTableRow(){
        var dsc = document.getElementById('debusc').value;
        $.ajax({
                type: "GET",
                url: '../lecturerSchedule',
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
<script>
    document.getElementsByName("NCM")[0].addEventListener('change', AddUN);
    document.getElementsByName("CST")[0].addEventListener('change', PegaJCST);
    function AddUN(){
          var ss = document.getElementById('NCM').value;
        $.ajax({
                type: "GET",
                url: '../unidadeporncm',
                data: "nc=" + ss,
                complete: [
                    function (response) {
                        var trHTML = response.responseText;
                        document.getElementById('untri').value = trHTML;
                    }
                ]
            });
      }
      function PegaJCST(){
          alert("JCST");
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

