<%@page import="Bean.User"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Bean.Login"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">

    <link rel="stylesheet" href="Paginas/Painel/css/style.css">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
  <link href="http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet">
  
  <script src="//code.jquery.com/jquery-2.1.0.min.js" type="text/javascript"></script>
  <link rel="stylesheet" href="Paginas/Painel/css/style_1.css">
  <link rel="stylesheet" href="Paginas/Painel/css/style_2.css">

  </head>
  
  
  <body style="margin-top: 0px;">
       <%
 User obj_Login_Bean = (User)session.getAttribute("user_session");
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
                   <a href="http://localhost:8080/Alba/Entregas/Inicio.jsp">
                       <i class="fa fa-truck fa-2x"></i>
                        <span class="nav-text">
                            Entregas
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
                       <i class="fa fa-truck fa-2x"></i>
                        <span class="nav-text">
                            Entregas
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
                
      <nav style="width: 100%;" class="nav-barr">
    <div class="nav-containerrr"> 
        <a id="nav-menuuu" class="nav-menuuu">? Menu</a>
        <ul class="nav-listtt " id="nav">
            <li> <a href="#" id="tile1"><i class=""></i> <%=obj_Login_Bean.getUser() %>   </a></li>
            <li> <a href="#" id="tile2"><i class="iconn ion-connection-bars"></i> &nbsp;Geral</a></li>
            <li> <a href="#" id="tile3"><i class="iconn ion-connection-bars"></i> &nbsp;Portfolio</a></li>
            <li> <a href="#" id="tile4"><i class="iconn ion-connection-bars"></i> &nbsp;Services</a></li>
            <li> <a href="#" id="tile5"><i class="iconn ion-connection-bars"></i> &nbsp;Clients</a></li>
            <li> <a href="#" id="tile6"><i class="iconn ion-connection-bars"></i> &nbsp;Order</a></li>
            <li> <a href="#" id="tile7"><i class="iconn ion-connection-bars"></i> &nbsp;Blog</a></li>
            <li> <a href="#" id="tile8"><i class="iconn ion-connection-bars"></i> &nbsp;Contact</a></li>
        </ul>
    </div>
</nav>
  </header>

         <!-- AREA -->
         
            <div style="height: 90%; padding-left: 70px; padding-right: 10px;">
        <div class="container1">
            <h1>Dashboard</h1>
            <img src="https://www.klipfolio.com/sites/default/files/field/image/executive-dashboard.png" alt="some text" width=100% height=100%>
                    
        </div>
        
          </div>
            
  <%
 }
%>
  <script type="text/javascript">
	
$(document).ready(function(){
	$('#nav-menuuu').click(function(){
		$('ul.nav-listtt').addClass('open').slideToggle('200');
	});
});

</script>
  </body>
    </html>
