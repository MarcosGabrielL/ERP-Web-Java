package org.apache.jsp.Entregas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Bean.Caixa;
import Dao.CaixaDAO;
import Dao.UserDAO;
import Bean.User;
import Bean.Fiscal;
import Dao.FiscalDAO;
import java.io.PrintWriter;
import Bean.Login;

public final class Inicio_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("  <head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("\n");
      out.write("    <link rel=\"stylesheet\" href=\"../Paginas/Painel/css/style.css\">\n");
      out.write("    <link href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>\n");
      out.write("  <link href=\"http://code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css\" rel=\"stylesheet\">\n");
      out.write("  <script src=\"//code.jquery.com/jquery-2.1.0.min.js\" type=\"text/javascript\"></script>\n");
      out.write("  <link rel=\"stylesheet\" href=\"../Paginas/Painel/css/style_1.css\">\n");
      out.write(" <link rel=\"stylesheet\" href=\"../Paginas/Painel/css/style_menu_horizontal_sub.css\">\n");
      out.write(" <!--===============================================================================================-->\n");
      out.write("\t<link rel=\"icon\" type=\"image/png\" href=\"../Paginas/CadastroCliente/images/icons/favicon.ico\"/>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/fonts/iconic/css/material-design-iconic-font.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/animate/animate.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/css-hamburgers/hamburgers.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/animsition/css/animsition.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/select2/select2.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/vendor/noui/nouislider.min.css\">\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"../Paginas/CadastroCliente/css/main_1.css\">\n");
      out.write("         <!-- TABELA -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Paginas/Painel/Patrimonio/Csss/style1.css\">\n");
      out.write(" <!-- TABELA  FINAL-->\n");
      out.write(" <style type=\"text/css\">\n");
      out.write("     input:-webkit-autofill,\n");
      out.write("input:-webkit-autofill:hover, \n");
      out.write("input:-webkit-autofill:focus,\n");
      out.write("textarea:-webkit-autofill,\n");
      out.write("textarea:-webkit-autofill:hover,\n");
      out.write("textarea:-webkit-autofill:focus,\n");
      out.write("select:-webkit-autofill,\n");
      out.write("select:-webkit-autofill:hover,\n");
      out.write("select:-webkit-autofill:focus {\n");
      out.write("  border: 1px solid green;\n");
      out.write("  -webkit-box-shadow: 0 0 0px 1000px #fff inset;\n");
      out.write("  transition: background-color 5000s ease-in-out 0s;\n");
      out.write("}\n");
      out.write(".form-style-1 {\n");
      out.write("\t\n");
      out.write("\tfont: 13px \"Lucida Sans Unicode\", \"Lucida Grande\", sans-serif;\n");
      out.write("}\n");
      out.write(".form-style-1 li {\n");
      out.write("\tpadding: 0;\n");
      out.write("\tdisplay: block;\n");
      out.write("\tlist-style: none;\n");
      out.write("\tmargin: 10px 0 0 0;\n");
      out.write("}\n");
      out.write(".form-style-1 label{\n");
      out.write("\tmargin:0 0 3px 0;\n");
      out.write("\tpadding:0px;\n");
      out.write("\tdisplay:block;\n");
      out.write("\tfont-weight: bold;\n");
      out.write("}\n");
      out.write(".form-style-1 input[type=text], \n");
      out.write(".form-style-1 input[type=date],\n");
      out.write(".form-style-1 input[type=datetime],\n");
      out.write(".form-style-1 input[type=number],\n");
      out.write(".form-style-1 input[type=search],\n");
      out.write(".form-style-1 input[type=time],\n");
      out.write(".form-style-1 input[type=url],\n");
      out.write(".form-style-1 input[type=email],\n");
      out.write("textarea, \n");
      out.write("select{\n");
      out.write("\tbox-sizing: border-box;\n");
      out.write("\t-webkit-box-sizing: border-box;\n");
      out.write("\t-moz-box-sizing: border-box;\n");
      out.write("\tborder:1px solid #BEBEBE;\n");
      out.write("\tpadding: 7px;\n");
      out.write("\tmargin:0px;\n");
      out.write("\t-webkit-transition: all 0.30s ease-in-out;\n");
      out.write("\t-moz-transition: all 0.30s ease-in-out;\n");
      out.write("\t-ms-transition: all 0.30s ease-in-out;\n");
      out.write("\t-o-transition: all 0.30s ease-in-out;\n");
      out.write("\toutline: none;\t\n");
      out.write("}\n");
      out.write(".form-style-1 input[type=text]:focus, \n");
      out.write(".form-style-1 input[type=date]:focus,\n");
      out.write(".form-style-1 input[type=datetime]:focus,\n");
      out.write(".form-style-1 input[type=number]:focus,\n");
      out.write(".form-style-1 input[type=search]:focus,\n");
      out.write(".form-style-1 input[type=time]:focus,\n");
      out.write(".form-style-1 input[type=url]:focus,\n");
      out.write(".form-style-1 input[type=email]:focus,\n");
      out.write(".form-style-1 textarea:focus, \n");
      out.write(".form-style-1 select:focus{\n");
      out.write("\t-moz-box-shadow: 0 0 8px #BEBEBE;\n");
      out.write("\t-webkit-box-shadow: 0 0 8px #BEBEBE;\n");
      out.write("\tbox-shadow: 0 0 8px #BEBEBE;\n");
      out.write("\tborder: 1px solid #BEBEBE;\n");
      out.write("}\n");
      out.write(".form-style-1 .field-divided{\n");
      out.write("\twidth: 49.5%;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-style-1 .field-long{\n");
      out.write("\twidth: 100%;\n");
      out.write("}\n");
      out.write(".form-style-1 .field-select{\n");
      out.write("\twidth: 100%;\n");
      out.write("}\n");
      out.write(".form-style-1 .field-textarea{\n");
      out.write("\theight: 100px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".form-style-1 .required{\n");
      out.write("\tcolor:red;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("  </head>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("  <body style=\"margin: 0;\">\n");
      out.write(" ");

 User obj_Login_Bean=(User)session.getAttribute("user_session");
 if(obj_Login_Bean==null){
     response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Por Favor, Faça o Login primeiro');");
            pw.println("</script>");
 
      out.write("\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write(" window.location.href=\"http://localhost:8080/Alba/login.html\";\n");
      out.write(" </script>\n");
      out.write(" ");
 
 }else{
 
      out.write("\n");
      out.write(" <header>\n");
      out.write("     <nav class=\"main-menu\">\n");
      out.write("          <div style=\" background-size: 100%; background-position: center; width: 100%; height: 80px;\">\n");
      out.write("              <image src=\"http://localhost:8080/Alba/resources/imagens/Logo Liso Transparente.png\"style=\"\n");
      out.write("                                              margin-left: auto;\n");
      out.write("                                              margin-right: auto;\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: 10px; left: 0; bottom: 0; right: 0;\"/>\n");
      out.write("          </div>\n");
      out.write("            <ul>\n");
      out.write("                ");
 if(obj_Login_Bean.getPermissão().equals("1")){
      out.write(" \n");
      out.write("                <li>\n");
      out.write("                    <a  href=\"../Alba/painel.jsp\">\n");
      out.write("                        <i class=\"fa fa-home fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Dashboard\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                  \n");
      out.write("                </li>\n");
      out.write("                ");
 if(obj_Login_Bean.getPacote().contains("2")){
                    
      out.write("\n");
      out.write("                <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"../Alba/EmitirNotaFiscal/Entrar_Caixa.jsp\">\n");
      out.write("                       <i class=\"fa fa-shopping-cart fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Frente de Caixa\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                    <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                       <i class=\"fa fa-shopping-cart fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Frente de Caixa\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp\">\n");
      out.write("                        <i class=\"fa fa-cog fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Configuração\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("               <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"http://localhost:8080/Alba/Estoque/Cadastro.jsp\">\n");
      out.write("                       <i class=\"fa fa-archive fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Estoque\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                    \n");
      out.write("                </li>\n");
      out.write("                ");
 if(obj_Login_Bean.getPacote().contains("3")){
                    
      out.write("\n");
      out.write("                <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                       <i class=\"fa fa-heart fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Clientes\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class=\"fa fa-money fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Financeiro\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                       <i class=\"fa fa-user fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Entregas\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                        <i class=\"fa fa-group fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            RH\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-bar-chart-o fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Estatisticas\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                <li class=\"has-subnav\">\n");
      out.write("                    <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                       <i class=\"fa fa-heart fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Clientes\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                     <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                        <i class=\"fa fa-money fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Financeiro\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                       <i class=\"fa fa-user fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Entregas\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                        <i class=\"fa fa-group fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            RH\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                <li>\n");
      out.write("                  <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                         <i class=\"fa fa-bar-chart-o fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Estatisticas\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                 ");
 } 
      out.write("\n");
      out.write("                  ");
 if(obj_Login_Bean.getPacote().contains("6")){
                    
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                        <i class=\"fa fa-book fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                           Contabilidade\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                        <i class=\"fa fa-book fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                           Contabilidade\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("                 ");
 if(obj_Login_Bean.getPacote().contains("5")){
                    
      out.write("\n");
      out.write("                <li>\n");
      out.write("                    <a href=\"#\">\n");
      out.write("                       <i class=\"fa fa-money fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            E-Commerce\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                 <li>\n");
      out.write("                    <a href=\"../Alba/update/mesage.jsp\">\n");
      out.write("                       <i class=\"fa fa-money fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            E-Commerce\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("                ");
 if(obj_Login_Bean.getPacote().contains("4")){
                    
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-building-o fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Marketplace\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-building-o fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Marketplace\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("                ");
 if(obj_Login_Bean.getPacote().contains("7")){
                    
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-mobile fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Aplicativo\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 }else{ 
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-mobile fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Aplicativo\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("                ");
 } 
      out.write("\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"#\">\n");
      out.write("                         <i class=\"fa fa-question fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Ajuda\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>\n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"logout\">\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"profile/controller/Signoutcontroller.jsp\">\n");
      out.write("                         <i class=\"fa fa-power-off fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Sair\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>  \n");
      out.write("            </ul>\n");
      out.write("                ");

                    }else{

                    } 
                
      out.write("\n");
      out.write("                \n");
      out.write("            </ul>\n");
      out.write("            <ul class=\"logout\">\n");
      out.write("                <li>\n");
      out.write("                   <a href=\"profile/controller/Signoutcontroller.jsp\">\n");
      out.write("                         <i class=\"fa fa-power-off fa-2x\"></i>\n");
      out.write("                        <span class=\"nav-text\">\n");
      out.write("                            Sair\n");
      out.write("                        </span>\n");
      out.write("                    </a>\n");
      out.write("                </li>  \n");
      out.write("            </ul>\n");
      out.write("        </nav>\n");
      out.write("     </header>\n");
      out.write(" \n");
      out.write("            <!-- MENU SECUNDARIO-->\n");
      out.write("         <div id='cssmenu' style=\" padding-left: 60px; \">  \n");
      out.write("   <ul>\n");
      out.write("      <li><a href=\"#\">Painel</a>\n");
      out.write("          <ul>\n");
      out.write("             <li><a href=\"../Entregas/Inicio.jsp\" >Informações</a> \n");
      out.write("            </li>\n");
      out.write("         </ul>\n");
      out.write("      </li>  \n");
      out.write("      <li><a href=\"#\" >Entregas</a>\n");
      out.write("          <ul>\n");
      out.write("             <li><a href=\"#\" >A caminho</a> \n");
      out.write("                 </li>\n");
      out.write("             <li><a href=\"#\" >Lista</a> \n");
      out.write("            </li>\n");
      out.write("            <li><a href=\"#\" >Entregues</a> \n");
      out.write("            </li>\n");
      out.write("          </ul>\n");
      out.write("      </li>\n");
      out.write("      <li><a href=\"#\">Configuração</a>\n");
      out.write("          <ul>\n");
      out.write("             <li><a href=\"../#\" >Sistemas de Envio</a> \n");
      out.write("            </li>\n");
      out.write("         </ul>\n");
      out.write("      </li>  \n");
      out.write("   </ul>\n");
      out.write("</div>   \n");
      out.write("            ");
 
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
            
 
      out.write("\n");
      out.write("            <!-- AREA DE AÇÃO -->\n");
      out.write("                <div  class=\"container-contact100\">\n");
      out.write("                    <form class=\"contact100-form validate-form\" id=\"formulario\" name=\"formulario\" autocomplete=\"off\" action=\"../Configuracao/Controller/Atualizar_Caixa.jsp\" method=\"POST\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t <div  class=\"container-contact100\">\n");
      out.write("\t\t<div style=\"padding: 0; padding-left: 40px; float: left; width: 30%; display: inline-block;\" class=\"wrap-contact100\">\n");
      out.write("\t\t<div style=\"padding: 0; padding-left: 20px; padding-bottom: 10px; float: left; width: 80%; display: inline-block;\" class=\"wrap-contact100\">\n");
      out.write("\t\t\n");
      out.write("                    <span style=\"  color: #333333;  padding-bottom: 6px; text-align: left; \" class=\"contact100-form-title\">\n");
      out.write("\t\t\t\t\tEntregas Programadas\n");
      out.write("\t\t\t\t</span>\n");
      out.write("                    <ul class=\"form-style-1\">\n");
      out.write("                    <li style=\"margin-top: 0;\">\n");
      out.write("                        <label>Loja <span class=\"required\"></span></label>\n");
      out.write("                        <select id=\"nome\" name=\"loja\" class=\"field-select\">\n");
      out.write("                        ");
for(Fiscal a : fdao.read()){
      out.write("\n");
      out.write("                        <option >");
      out.print(a.getNome() );
      out.write("</option>\n");
      out.write("                        ");
 } 
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                        <label>Caixa <span class=\"required\"></span></label>\n");
      out.write("                        <input style=\"width: 100%;\" id=\"descricao\" type=\"text\" name=\"idcaixa\" class=\"field-divided\" />\t\n");
      out.write("                       <label>Operador <span class=\"required\"></span></label>\n");
      out.write("                       <select id=\"nome\" name=\"operador\" class=\"field-select\">\n");
      out.write("                        ");
UserDAO udao = new UserDAO();
                        for(User a : udao.read()){
                            
                            if(a.getRazao().equals(obj_Login_Bean.getRazao())){
      out.write("\n");
      out.write("                        <option >");
      out.print(a.getNome() );
      out.write("</option>\n");
      out.write("                           ");
 }
                        } 
      out.write("\n");
      out.write("                        </select> \n");
      out.write("                       <label>Senha <span class=\"required\"></span></label>\n");
      out.write("                        <input style=\"width: 100%;\" id=\"descricao\" type=\"text\" name=\"senha\" class=\"field-divided\" />\t\n");
      out.write("                       <label>Série NFCE <span class=\"required\"></span></label>\n");
      out.write("                        <input style=\"width: 100%;\" id=\"descricao\" type=\"text\" name=\"serienfe\" class=\"field-divided\" />\t\n");
      out.write("                        <a style=\"color: red;\">Entre 000 e 800 </a>\n");
      out.write("                        <label>Série NFE<span class=\"required\"></span></label>\n");
      out.write("                        <input style=\"width: 100%;\" id=\"descricao\" type=\"text\" name=\"serienfce\" class=\"field-divided\" />\t\n");
      out.write("                       <a style=\"color: red;\">Entre 000 e 800 </a>\n");
      out.write("                       <input style=\"width: 100%; display: none;\" id=\"funcao\" type=\"text\" name=\"funcao\" />\t\n");
      out.write("                       \n");
      out.write("                    </ul>\n");
      out.write("                    \n");
      out.write("                        <div style=\"padding-top: 0px; border-radius: 13px; height: 30px; margin-bottom: 15px; width: 18%\" class=\"container-contact100-form-btn\">\n");
      out.write("\t\t\t\t\t<input id=\"ir\" title=\"Salvar Caixa\" class=\"contact100-form-btn\" \n");
      out.write("                                               style=\"color: #ffffff; \n");
      out.write("                                               background: #fff;\n");
      out.write("                                               background-image: url(../resources/imagens/rotate.png); \n");
      out.write("                                               cursor: pointer !important; background-position:center;\n");
      out.write("                                               background-repeat:no-repeat;\"\n");
      out.write("                                               type=\"submit\" value=\"\">\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                        \n");
      out.write("\t\t\t</form>\n");
      out.write("                </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                     \n");
      out.write("                    \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <div style=\" border-right: 0; padding: 0px 7px 0px 7px; border: 0; float: left; width: 70%; display: inline-block;\" class=\"wrap-contact100\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("            <!-- Tabela -->\n");
      out.write("            <div style=\"border-radius: 0px; border-style: solid; border-width: 2px; background: #fff;\n");
      out.write("                 background: #fff; margin-bottom: 20px; overflow: auto; width: 100%; height: 560px;\" class=\"validate-input bg1 rs1-wrap-input50\">\n");
      out.write("\t\t<table>\n");
      out.write("                <thead>\n");
      out.write("                  <tr>\n");
      out.write("                    <th>LOJA</th>\n");
      out.write("                    <th>CAIXA</th>\n");
      out.write("                    <th>OPERADOR</th>\n");
      out.write("                    <th>SENHA</th>\n");
      out.write("                    <th>SÉRIE NFCE</th>\n");
      out.write("                    <th>SÉRIE NFE</th>\n");
      out.write("                  </tr>\n");
      out.write("                <thead>\n");
      out.write("                <tbody style=\"font-size: 12px;\">\n");
      out.write("                    ");
 CaixaDAO cdao = new CaixaDAO(); 
                    for(Caixa c : cdao.read()){
                        System.err.println("Cliente: "+c.getCliente());
                        System.err.println("Razao: "+obj_Login_Bean.getRazao());
                        try{
                        if(c.getCliente().equals(obj_Login_Bean.getRazao())){
                            
      out.write("\n");
      out.write("                        <tr>\n");
      out.write("                    <td>");
      out.print(c.getLoja() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getIdcaixa() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getOperador() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getSenha() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getSerienfce() );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(c.getSerienfe() );
      out.write("</td>\n");
      out.write("                  </tr>    \n");
      out.write("                     ");
   }
}catch(Exception e){

}
                    } 
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("              </table>\n");
      out.write("            </div>\t\n");
      out.write("            \n");
      out.write("\t\t\t\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("\t\t</div>\n");
      out.write("\t\t \n");
      out.write("                    </div>\n");
      out.write("            \n");
      out.write("  \n");
      out.write("             ");

                 
 }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!-- SCRIPTS -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("  function funcao(valor){\n");
      out.write("      alert(\"AQui\");\n");
      out.write("        if(valor===1){\n");
      out.write("            document.getElementById(\"funcao\").value = valor;\n");
      out.write("            \n");
      out.write("        } else if(valor === 2){\n");
      out.write("            document.getElementById(\"funcao\").value = valor;\n");
      out.write("        }\n");
      out.write("        document.getElementById(\"formulario\").submit();\n");
      out.write("    }\n");
      out.write(" </script>\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("\t\n");
      out.write("$(document).ready(function(){\n");
      out.write("\t$('#nav-menuuu').click(function(){\n");
      out.write("\t\t$('ul.nav-listtt').addClass('open').slideToggle('200');\n");
      out.write("\t});\n");
      out.write("});\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write(" <script type=\"text/javascript\">\n");
      out.write("   $(document).ready(function(){\n");
      out.write("     $('.data').mask(\"00/00/0000\");\n");
      out.write("});\n");
      out.write(" </script>\n");
      out.write(" \n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    \n");
      out.write("window.onload = function(){\n");
      out.write("document.getElementById(\"select\").onchange = function(){\n");
      out.write("$('#lname').val(this.value);\n");
      out.write("}\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write(" \n");
      out.write(" <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js\"></script>\n");
      out.write("\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/jquery/jquery-3.2.1.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/animsition/js/animsition.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/bootstrap/js/popper.js\"></script>\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/select2/select2.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t\t$(\".js-select2\").each(function(){\n");
      out.write("\t\t\t$(this).select2({\n");
      out.write("\t\t\t\tminimumResultsForSearch: 20,\n");
      out.write("\t\t\t\tdropdownParent: $(this).next('.dropDownSelect2')\n");
      out.write("\t\t\t});\n");
      out.write("\n");
      out.write("\n");
      out.write("\t\t\t$(\".js-select2\").each(function(){\n");
      out.write("\t\t\t\t$(this).on('select2:close', function (e){\n");
      out.write("\t\t\t\t\tif($(this).val() == \"Please chooses\") {\n");
      out.write("\t\t\t\t\t\t$('.js-show-service').slideUp();\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t\telse {\n");
      out.write("\t\t\t\t\t\t$('.js-show-service').slideUp();\n");
      out.write("\t\t\t\t\t\t$('.js-show-service').slideDown();\n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t\t});\n");
      out.write("\t\t\t});\n");
      out.write("\t\t})\n");
      out.write("\t</script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/daterangepicker/moment.min.js\"></script>\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/daterangepicker/daterangepicker.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/countdowntime/countdowntime.js\"></script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"../Paginas/CadastroCliente/vendor/noui/nouislider.min.js\"></script>\n");
      out.write("\t<script>\n");
      out.write("\t    var filterBar = document.getElementById('filter-bar');\n");
      out.write("\n");
      out.write("\t    noUiSlider.create(filterBar, {\n");
      out.write("\t        start: [ 1500, 3900 ],\n");
      out.write("\t        connect: true,\n");
      out.write("\t        range: {\n");
      out.write("\t            'min': 1500,\n");
      out.write("\t            'max': 7500\n");
      out.write("\t        }\n");
      out.write("\t    });\n");
      out.write("\n");
      out.write("\t    var skipValues = [\n");
      out.write("\t    document.getElementById('value-lower'),\n");
      out.write("\t    document.getElementById('value-upper')\n");
      out.write("\t    ];\n");
      out.write("\n");
      out.write("\t    filterBar.noUiSlider.on('update', function( values, handle ) {\n");
      out.write("\t        skipValues[handle].innerHTML = Math.round(values[handle]);\n");
      out.write("\t        $('.contact100-form-range-value input[name=\"from-value\"]').val($('#value-lower').html());\n");
      out.write("\t        $('.contact100-form-range-value input[name=\"to-value\"]').val($('#value-upper').html());\n");
      out.write("\t    });\n");
      out.write("\t</script>\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("\t<script src=\"js/main.js\"></script>\n");
      out.write("\n");
      out.write("<!-- Global site tag (gtag.js) - Google Analytics -->\n");
      out.write("<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-23581568-13\"></script>\n");
      out.write("<script>\n");
      out.write("  window.dataLayer = window.dataLayer || [];\n");
      out.write("  function gtag(){dataLayer.push(arguments);}\n");
      out.write("  gtag('js', new Date());\n");
      out.write("\n");
      out.write("  gtag('config', 'UA-23581568-13');\n");
      out.write("</script>    \n");
      out.write("<!-- SCRIPTS FIM -->\n");
      out.write("  </body>\n");
      out.write("    </html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
