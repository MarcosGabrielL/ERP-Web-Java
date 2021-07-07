<%-- 
    Document   : cadastro_cliente_controller
    Created on : 05/08/2019, 17:16:10
    Author     : Marcos
--%>


<%@page import="Bean.Municipio"%>
<%@page import="Dao.MunicipioDAO"%>
<%@page import="utils.VerificaInscricaoEstadual"%>
<%@page import="utils.Ferramentas"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="Dao.FiscalDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
  <%@page import="Dao.UserDAO"%>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Cadastrando</title>
  </head>
  <body style="display: none;">
   <jsp:useBean id="obj_Fiscal" class="Bean.Fiscal"></jsp:useBean>
   <jsp:setProperty property="*" name="obj_Fiscal"/>
   <%
       String erro = null;
     System.out.println("\n\n --------------------------------");
     System.out.println(obj_Fiscal.getAmbiente());
     System.out.println(" --------------------------------");
     boolean flag1 = true;
     boolean flag = false;
     
    //Verifica se nome já existe
    //Se sim, update
    //Se não, save
     
     //Verifica dados;
         //É CNPJ Valido?
         Ferramentas util = new Ferramentas();
         if(obj_Fiscal.getCNPJ()==null || obj_Fiscal.getBb()==null
                 || obj_Fiscal.getCEP() == null || obj_Fiscal.getCc()==null
                 || obj_Fiscal.getAa()== null || obj_Fiscal.getCSenha()==null
                 || obj_Fiscal.getDd() == null){
             erro = "Complete todos os campos obrigatorios!";
                            flag1 = false;
         }else{
             
             if(!util.isCNPJ(obj_Fiscal.getCNPJ().replaceAll("[^0-9]", ""))){
             erro = "CNPJ Invalido!";
             flag1 = false;
                 }
             if(String.valueOf(obj_Fiscal.getAa()).equals("0")){
                            erro = "Selecione uma Unidade Federativa - UF";
                            flag1 = false;
                 }
             if(String.valueOf(obj_Fiscal.getCSenha()).equals("0")){
                            erro = "Selecione o Tipo de Certificado";
                            flag1 = false;
                 } 
                      //É Iscrição EStadual?
                        VerificaInscricaoEstadual n = new VerificaInscricaoEstadual();
                       // n.valida(obj_Fiscal.getCc(),obj_Fiscal.getBb());  
              
         }
         
       
        if(flag1){
        //Codigo da Cidade
        MunicipioDAO mdao = new MunicipioDAO();
        obj_Fiscal.setCodigoCity(mdao.pegaCodigo(obj_Fiscal.getDd()));
        obj_Fiscal.setPIS(obj_Fiscal.getPIS().substring(0,2));
        obj_Fiscal.setCOFINS(obj_Fiscal.getCOFINS().substring(0,2));
       // for(Municipio a : mdao.read("BA")){
       //     System.out.println(a.getNome());
       // }
     
       //Verifica se existe cnpj
        FiscalDAO obj_User_DAO = new FiscalDAO();
       boolean existe = obj_User_DAO.checkCNPJ(obj_Fiscal.getCNPJ());
       
         try{
            
            //Salva informañ{ao fiscal
          if(existe){
             flag = obj_User_DAO.update(obj_Fiscal);
           if(flag==false){
            erro = "Erro ao atualizar informações";
           } 
          }else{
              flag = obj_User_DAO.save(obj_Fiscal);
           if(flag==false){
            erro = "Erro ao atualizar informações";
           } 
          }
           
         }catch(Exception e){
             flag = false;
             erro = "Erro ao atualizar informações";
         }
         
     
        }
    if(flag){
        
        response.setContentType("text/html");
            PrintWriter pw=response.getWriter();
            pw.println("<script type=\"text/javascript\">");
            pw.println("alert('Informações atualizadas com sucesso!');");
            pw.println("</script>");
            
    %>
    <script type="text/javascript">
       window.location.href="http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp";
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
    window.location.href="http://localhost:8080/Alba/Configuracao/Config_Fiscal.jsp";
   </script>
  <%
 }
 %>
 </body>
 </html>
