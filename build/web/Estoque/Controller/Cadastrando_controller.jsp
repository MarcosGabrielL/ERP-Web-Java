<%-- 
    Document   : Sign_in_controller
    Created on : 05/08/2019, 13:39:31
    Author     : Marcos
--%>

<%@page import="Bean.NCMUntrib"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Dao.NCMUntribDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.LoginCentralDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Insert title here</title>
  </head>
  <body>
   <jsp:useBean id="obj_Produto" class="Bean.Produto"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Produto"/>
   <%
       String erro = null;
       erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println("Código: "+obj_Produto.getCodigo());
     System.out.println("Descrição: "+obj_Produto.getDescricao());
     System.out.println("Preço Un: "+obj_Produto.getPrecoun());
     System.out.println("Valor Entrada: "+obj_Produto.getVentrada());
     System.out.println("Quantidade: "+obj_Produto.getQuantidade());
     System.out.println("Tipo: "+obj_Produto.getTipo());
     System.out.println("Unidade: "+obj_Produto.getUnidade());
     System.out.println("Unidade Tributavel: "+obj_Produto.getUnidadeTributavel());
     System.out.println("Data: "+obj_Produto.getData());
     System.out.println("Loja: "+obj_Produto.getLoja());
     System.out.println("SubTotal: "+obj_Produto.getSubTotal());
    
     System.out.println("NCM: "+obj_Produto.getNcm());
     System.out.println("CST: "+obj_Produto.getCst());
     System.out.println("CFOP: "+obj_Produto.getCfop());
     System.out.println("Base ICMS: "+obj_Produto.getBaseicms());
     System.out.println("ICMS: "+obj_Produto.getIcms());
     System.out.println("Aliquota ICMS: "+obj_Produto.getAliquotaicms());
    
     System.out.println("CEST: "+obj_Produto.getCest());
    
     System.out.println("CEAN: "+obj_Produto.getCean());
     System.out.println("CEAN Tributavel: "+obj_Produto.getCeantrib());
     System.out.println("Quantidade Tributavel: "+obj_Produto.getQtrib());
     System.out.println("Valor Un Tributavel: "+obj_Produto.getVuntrib());

    System.out.println("Item: "+obj_Produto.getItem());
    
     System.out.println("Base Icms: "+obj_Produto.getBcicms());
     System.out.println("Base ICMS ST: "+obj_Produto.getBcicmsst());
     System.out.println("PMVAST: "+obj_Produto.getPmvast());
     System.out.println("PREDBCST: "+obj_Produto.getPredbcst());
     System.out.println("VBCST: "+obj_Produto.getVbcst());
     System.out.println("PICMSST: "+obj_Produto.getPicmsst());
     System.out.println("VICMSST: "+obj_Produto.getVicmsst());
     System.out.println("PREDBC: "+obj_Produto.getPredbc());
     System.out.println("PDIF: "+obj_Produto.getPdif());
     System.out.println("VICMSDIF: "+obj_Produto.getVicmsdif());
     System.out.println("VICMS: "+obj_Produto.getVicms());
     System.out.println("PCREDSN: "+obj_Produto.getPcredsn());
     System.out.println("VcredICMSS: "+obj_Produto.getVcredicmssn());
    
     System.out.println("CSTPIS: "+obj_Produto.getCstpis());
     System.out.println("VBC PIS: "+obj_Produto.getVbcpis());
     System.out.println("PPIS: "+obj_Produto.getPpis());
     System.out.println("VPIS: "+obj_Produto.getVpis());
    
     System.out.println("CST Cofins: "+obj_Produto.getCstcofins());
     System.out.println("VBC Cofins: "+obj_Produto.getVbccofins());
     System.out.println("Percentual Cofins: "+obj_Produto.getPcofins());
     System.out.println("Valor cofins: "+obj_Produto.getVcofins());
    
     System.out.println("A Federal N: "+obj_Produto.getAfederaln());
     System.out.println("A Federal I: "+obj_Produto.getAfederali());
     System.out.println("A Estadual: "+obj_Produto.getAestadual());
     System.out.println("A Municipal: "+obj_Produto.getAmunicipal());
     System.out.println("Mod BCST: "+obj_Produto.getModbcst());
     System.out.println("Validade: "+obj_Produto.getValidade());
     System.out.println(" --------------------------------");
     boolean flag1 = true;
     boolean flag = false;
     
    
     
     
    if(flag){
        
        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Produto Cadastrado com Sucesso!');");
            pw.println("</script>");
            
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/Estoque/Cadastro.jsp";
    </script>
  <%
}else{
            response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('"+erro+"');");
            pw.println("</script>");
            
  %>
  <script type="text/javascript">
    window.location.href="http://localhost:8080/Alba/Estoque/Cadastro.jsp";
   </script>
  <%
 }
 %>
 </body>
 </html>
