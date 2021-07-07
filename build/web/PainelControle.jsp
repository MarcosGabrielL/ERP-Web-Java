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
 window.location.href="http://localhost:8080/DpPatrimonio/loginCentral.html";
 </script>
 <% 
 }else{
    session.setAttribute("user_session", obj_Login_Bean);
 %>
 <header >
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
                            Cadastro Respons
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
  
      <div style="width: 90%; height: 90%; padding-left: 80px;  padding-right: 50px;">
        <div class="container1"><h1>Painel de bordo</h1></div>
        <div class="container">
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
                <br/>
            </div>
  
  <%
 }
%>
  </body>
    </html>
