/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Etiqueta;

import Bean.Login;
import Bean.Patrimonio;
import Dao.PatrimonioDAO;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import javax.swing.JOptionPane;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

/**
 *
 * @author Marcos
 */
public class Etiqueta {
    
   
    /*
     public static void main(String[] args) {
     
       
    StringBuilder texto = new StringBuilder("ZS\n"); //  (limpa o buffer de impressão, para ser iniciado um novo arquivo BPLB)
    texto.append("GK\"CHT\"\n");  //Prepara a impressora para receber a imagem
    texto.append("GM\"CHT\"1784\n"); //(configura a Velocidade de impressão para 3 pol./seg)
    
    Imprimir_Etiqueta imp = new Imprimir_Etiqueta();
    imp.imprimaTexto(texto.toString(),"BTP-L42");
     
    StringBuilder etiqueta = new StringBuilder("N\n"); //  (limpa o buffer de impressão, para ser iniciado um novo arquivo BPLB)
    etiqueta.append("R0,0\n"); 
    etiqueta.append("Q260,24\n");
    etiqueta.append("ZT\n");
    etiqueta.append("JF\n");
    etiqueta.append("A150,5,0,1,2,3,N,\"TESTE QR CODE\"\n");
    etiqueta.append("GG150,40,\"CHT\"\n");
    etiqueta.append("P1\n");
    imp.imprimaTexto(etiqueta.toString(),"BTP-L42");
            
    
  }
    */
    
     public static void main(String[] args) {
     
         //QR CODE
         String Qrcode = "ASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDAS"
                 + "ASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDAS"
                 + "ASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDASASDASFADSDASDASDASDASDAS"
                 + "ASDASFADSDASDASDASDASDASASASDASFADSDASDASDASDASDASASASDASFADSDASDASDASDASDASASASDASFADSDASDASDASDASDASAS"
                 ;
     StringBuilder texto = new StringBuilder("N\n"); //  (limpa o buffer de impressão, para ser iniciado um novo arquivo BPLB)
   
    texto.append("D15\n"); //(configura a Densidade ou aquecimento da cabeça de impressão para o valor 9)
    texto.append("S3\n"); //(configura a Velocidade de impressão para 3 pol./seg)
    texto.append("JF\n"); //(habilita o “backfeed” para que ao final da impressão, o espaço entre etiquetas pare na serrilha)
    texto.append("ZT\n"); //(indica que a impressão deve inciar a partir do topo, ou seja, de cabeça para baixo)
    texto.append("Q260,24\n"); //(configura a altura da etiqueta 480/8=60mm e altura do espaço entre etiquetas 24/8=3mm)
    texto.append("q832\n"); //(configura a largura total da etiqueta: 832/8 = 104mm)
    texto.append("X278,0,3,720,250\n"); //Retangulo
    texto.append("b359,25,Q,"+ '"' + Qrcode  + '"' +"\n"); // (campo de código QR, vide comando B)
    //texto.append("b369,45,Q,2,4,M,A,1,"+ '"' + Qrcode  + '"' +"\n"); // (QR CODE, vide comando B)
    texto.append("B339,0,1,E80,3,3,50,N,\"1234567\"\n"); // (código de barras, vide comando B)
    texto.append("A710,16,1,4,1,1,N," + '"' + "  PREFEITURA"  + '"' + "\n");
    texto.append("A680,16,1,4,1,1,N," + '"' + "CRUZ DAS ALMAS"  + '"' + "\n");
    texto.append("LE649,0,3,250\n");
    texto.append("A640,16,1,4,1,1,N," + '"' + "  PATRIMONIO" + '"' + "\n");
    texto.append("A610,20,1,2,2,2,N," + '"' + "N:0000001" + '"' + "\n");
    texto.append("LE567,0,3,250\n");
    texto.append("X194,0,3,270,250\n"); //Retangulo
    texto.append("A264,16,1,2,1,1,N," + '"' + "ETIQUETA SEGURANCA"  + '"' + "\n");
    texto.append("A236,16,1,2,2,2,N," + '"' + "N:0000002"  + '"' + "\n");
    texto.append("X110,0,3,186,250\n"); //Retangulo
    texto.append("A177,8,1,2,1,1,N," + '"' + "ETIQUETA NOTA FISCAL"  + '"' + "\n");
    texto.append("A149,16,1,2,2,2,N," + '"' + "N:0000003"  + '"' + "\n");
    texto.append("P1\n");
    
    Imprimir_Etiqueta imp = new Imprimir_Etiqueta();
    imp.imprimaTexto(texto.toString(),"BTP-L42");
     
            
    
  }
    
    
    //Recebe patrimonio para imprimir
    public static void PegaDados(Patrimonio p){
       
        //Busca nome impressora do banco de dados
        String NomeImpressora = "BTP-L42";
        
        //Envia Valores para formatação
        Definir_Etiqueta d_eti = new Definir_Etiqueta();
        d_eti.getPatrimonio(p, NomeImpressora);
       
    }
    
    //Recebe Lista de patrimonios para imprimir
    public static void PegaDados(ArrayList<Patrimonio> patrimonios){
       
        //Busca nome impressora do banco de dados
        String NomeImpressora = "BTP-L42";
        
        //Envia Valores para formatação
        Definir_Etiqueta d_eti = new Definir_Etiqueta();
                for(Patrimonio p : patrimonios){
            d_eti.getPatrimonio(p, NomeImpressora);
        }
       
    }

   
}
