/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.MalformedURLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.net.URL;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;

import org.apache.commons.mail.EmailAttachment;
import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.HtmlEmail;
import org.apache.commons.mail.MultiPartEmail;
import org.apache.commons.mail.SimpleEmail;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "EnviaEmail", urlPatterns = {"/EnviaEmail"})
public class EnviaEmail extends HttpServlet {
    
    String nome;
    String emaile;
    String fone;
    String serviço;
    String menssagem;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        nome = request.getParameter("name");
         emaile = request.getParameter("email");
           fone = request.getParameter("phone");
             serviço = request.getParameter("service");
               menssagem = request.getParameter("message") + "\nNome: "+nome+"\n"
                       + "Email: "+emaile+"\n"
                       + "Telefone: "+fone+"n"
                       + "Serviço: "+serviço+"\n";
               
               System.err.println("Nome: "+nome+"email: "+emaile+"Fone: "+fone+"Serviço: "+serviço+"Mensagem: "+menssagem);
        try {
            enviaEmailSimples();
           
            //Mensagem de cofnirmaçao 
            
            //Atualiza pagina
           response.sendRedirect("contato_conta.html");
           
        } catch (Exception ex) {
            
            response.setContentType("text/html");
PrintWriter pw=response.getWriter();
pw.println("<script type=\"text/javascript\">");
pw.println("alert('E-mail não enviado! Verifique seu proxe.');");
pw.println("</script>");
RequestDispatcher rd=request.getRequestDispatcher("contato_conta.html");
rd.include(request, response);
          // response.sendRedirect("contato_conta.html");
            
            Logger.getLogger(EnviaEmail.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }


/**
 * envia email simples(somente texto)
 * @throws EmailException
 */
public void enviaEmailSimples() throws EmailException {
    
    Properties props = new Properties();
            /** Parâmetros de conexão com servidor Gmail */
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.starttls.required",true);
	
	SimpleEmail email = new SimpleEmail();
	email.setHostName("smtp.gmail.com"); // o servidor SMTP para envio do e-mail
	email.addTo("softsaj.tecnico@gmail.com", "Marcos"); //destinatário
	email.setFrom("softsaj.bug@gmail.com", nome); // remetente
	email.setSubject("Contato - "+fone); // assunto do e-mail
	email.setMsg(menssagem); //conteudo do e-mail
	email.setAuthentication("softsaj.bug@gmail.com", "Marcos&123");
	email.setSmtpPort(587);
	email.setSSL(true);
	email.setTLS(true);
	email.send();	
}

/**
 * envia email com arquivo anexo
 * @throws EmailException
 */
public void enviaEmailComAnexo() throws EmailException{
	
	// cria o anexo 1.
	EmailAttachment anexo1 = new EmailAttachment();
	anexo1.setPath("teste/teste.txt"); //caminho do arquivo (RAIZ_PROJETO/teste/teste.txt)
	anexo1.setDisposition(EmailAttachment.ATTACHMENT);
	anexo1.setDescription("Exemplo de arquivo anexo");
	anexo1.setName("teste.txt");		
	
	// cria o anexo 2.
	EmailAttachment anexo2 = new EmailAttachment();
	anexo2.setPath("teste/teste2.jsp"); //caminho do arquivo (RAIZ_PROJETO/teste/teste2.jsp)
	anexo2.setDisposition(EmailAttachment.ATTACHMENT);
	anexo2.setDescription("Exemplo de arquivo anexo");
	anexo2.setName("teste2.jsp");		
	
	// configura o email
	MultiPartEmail email = new MultiPartEmail();
	email.setHostName("smtp.gmail.com"); // o servidor SMTP para envio do e-mail
	email.addTo("teste@gmail.com", "Guilherme"); //destinatário
	email.setFrom("teste@gmail.com", "Eu"); // remetente
	email.setSubject("Teste -&gt; Email com anexos"); // assunto do e-mail
	email.setMsg("Teste de Email utilizando commons-email"); //conteudo do e-mail
	email.setAuthentication("teste", "xxxxx");
	email.setSmtpPort(465);
	email.setSSL(true);
	email.setTLS(true);
	
	// adiciona arquivo(s) anexo(s)
	email.attach(anexo1);
	email.attach(anexo2);
	// envia o email
	email.send();
}



}
