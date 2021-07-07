/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Etiqueta;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.print.PrintService;
import javax.print.PrintServiceLookup;
import javax.print.attribute.HashPrintRequestAttributeSet;
import javax.print.attribute.HashPrintServiceAttributeSet;
import javax.print.attribute.PrintRequestAttributeSet;
import javax.print.attribute.PrintServiceAttributeSet;
import javax.print.attribute.standard.Copies;
import javax.print.attribute.standard.MediaSizeName;
import javax.print.attribute.standard.OrientationRequested;
import javax.print.attribute.standard.PrinterName;
import javax.swing.JOptionPane;
import java.io.InputStream;
import java.io.OutputStream;
import javax.print.Doc;
import javax.print.DocFlavor;
import javax.print.DocPrintJob;
import javax.print.PrintException;
import javax.print.SimpleDoc;
import org.apache.commons.lang3.SystemUtils;

/**
 *
 * @author Marcos
 */
public class Imprimir_Etiqueta {
    
    //Não
    //Imprime a etiqueta de acordo com o sistema operacional
    public void imprima(String texto, String impressora) throws IOException {
        
        if (SystemUtils.IS_OS_WINDOWS) {
            
            try {
                String[] command = {"cmd",};
                Process p = Runtime.getRuntime().exec(command);
                new Thread(new ThreadSyncPipe(p.getErrorStream(), System.err)).start();
                new Thread(new ThreadSyncPipe(p.getInputStream(), System.out)).start();
                PrintWriter stdin = new PrintWriter(p.getOutputStream());
                stdin.println("type texto.txt > "+impressora); //No windows, você precisa compartilhar a impressora na rede e passar o nome dela no comando para imprimir
                stdin.close();
                int returnCode = p.waitFor();
                
            } catch (Exception e) {
                System.err.println("Erro ao imprimir: Etiqueta ou impressora não encontrada. Erro: " 
                        + e.getMessage());
            }
            
        } else if (SystemUtils.IS_OS_LINUX){
            
            String[] args = new String[] {"/bin/bash", "-c", "cat etiqueta.txt > /dev/usb/lp1"}; //no linux é mais simples, apenas passe o local da impressora
            Process proc = new ProcessBuilder(args).start(); 
            
        } else {
            
            System.out.println("O recurso de impressão de etiquetas não é compatível com este S.O");
        }
}
    
    //Não
    class ThreadSyncPipe implements Runnable {
  public ThreadSyncPipe(InputStream istrm, OutputStream ostrm) {
      istrm_ = istrm;
      ostrm_ = ostrm;
  }
  public void run() {
      try {
          final byte[] buffer = new byte[1024];
          for (int length = 0; (length = istrm_.read(buffer)) != -1; ){
              ostrm_.write(buffer, 0, length);
          }
      }
      catch (Exception e) {
          e.printStackTrace();
      }
  }
  private final OutputStream ostrm_;
  private final InputStream istrm_;
}

    //Funcionando
    public void imprimaTexto(String texto, String impressora){
    if (impressora == null) {

            String msg = "Nennhuma impressora foi encontrada. Instale uma impressora padrão \r\n(Generic Text Only) e reinicie o programa.";
	       	System.out.println(msg);

        } else {
        
       PrintService serviceFound = null;  
            PrintService[] services = PrintServiceLookup.lookupPrintServices(null,null);  
            
            for(PrintService service:services){  
                            if(service.getName().trim().equals(impressora.trim()))  
                     serviceFound = service;  
                                  
            }  
    

            try {

                DocPrintJob dpj = serviceFound.createPrintJob();
                InputStream stream = new ByteArrayInputStream(texto.getBytes());

                DocFlavor flavor = DocFlavor.INPUT_STREAM.AUTOSENSE;
                Doc doc = new SimpleDoc(stream, flavor, null);
                dpj.print(doc, null);
                
                System.out.println("Final Impressão");

            } catch (PrintException e) {

                e.printStackTrace();

            }

        }


    }
    
}


