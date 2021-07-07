package org.apache.jsp.Configuracao.Controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Dao.ClienteDAO;
import utils.GerarSenha;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.io.PrintWriter;
import Dao.UserDAO;

public final class Atualiza_005finfor_005ffiscal_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("  <!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write("  <html>\n");
      out.write("  \n");
      out.write("  <head>\n");
      out.write("  <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("  <title>Cadastrando</title>\n");
      out.write("  </head>\n");
      out.write("  <body>\n");
      out.write("   ");
      Bean.Fiscal obj_Fiscal = null;
      synchronized (_jspx_page_context) {
        obj_Fiscal = (Bean.Fiscal) _jspx_page_context.getAttribute("obj_Fiscal", PageContext.PAGE_SCOPE);
        if (obj_Fiscal == null){
          obj_Fiscal = new Bean.Fiscal();
          _jspx_page_context.setAttribute("obj_Fiscal", obj_Fiscal, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\n");
      out.write("   ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("obj_Cliente"), request);
      out.write("\n");
      out.write("   ");

       String erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Fiscal.getCNPJ());
     System.out.println(" --------------------------------");
     boolean flag = false;
     
    
     
     //Verifica dados
     if(false){
        erro = "Complete todos os campos!";
         flag = false;
     }else{
         try{
            
            //Salva informañ{ao fiscal
           // ClienteDAO obj_User_DAO = new ClienteDAO();
           // flag = obj_User_DAO.save(obj_Cliente);
           flag = true;
            
         }catch(Exception e){
             flag = false;
             erro = "Data invalida";
         }
         
     }
     
    if(flag){
       
        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Cliente Cadastrado com sucesso!');");
            pw.println("</script>");
    
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("       window.location.href=\"http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp\";\n");
      out.write("    </script>\n");
      out.write("  ");

}else{
 erro = "Erro no cadastro!";
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('"+erro+"');");
            pw.println("</script>");
            
  
      out.write("\n");
      out.write("  <script type=\"text/javascript\">\n");
      out.write("   history.back();\n");
      out.write("   </script>\n");
      out.write("  ");

 }
 
      out.write("\n");
      out.write(" </body>\n");
      out.write(" </html>\n");
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
