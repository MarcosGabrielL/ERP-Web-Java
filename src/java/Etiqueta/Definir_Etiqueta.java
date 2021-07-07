/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Etiqueta;

import Bean.Patrimonio;
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
public class Definir_Etiqueta {
    
    static Patrimonio patrimonio = new Patrimonio();
    
    //Pega o patrimonio com os dados
    public void getPatrimonio(Patrimonio p, String impressora){
       patrimonio = p;
       
       //Pega TExto parametrizado
      String etiqueta = XML2Relatorio();
      
      //Imprime texto
      Imprimir_Etiqueta imp = new Imprimir_Etiqueta();
    try {
            //imp.imprima(texto.toString(), "BTP-L42"); //invoca o método que utiliza as classes java para impressão.
            imp.imprimaTexto(etiqueta.toString(),impressora);
            
    } catch (Exception ex) {
            Logger.getLogger(Etiqueta.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    }
    
    //Pega os valores do patrimonio e insere no layout por meio de xml
    private static String XML2Relatorio(){
       
    String desc_detal = patrimonio.getDesc_detal(); 
    String desc = patrimonio.getDesc();
    String marca = patrimonio.getMarca(); 
    String data = patrimonio.getData(); 
    String valor = patrimonio.getValor(); 
    String modelo = patrimonio.getModelo(); 
    String local = patrimonio.getLocal(); 
    String responsavel = patrimonio.getResponsavel(); 
    String cliente = patrimonio.getCliente();
 
    String Qrcode = desc_detal+"MARCA: "+marca+"MODEL:"+modelo+" R: "+desc+""
            + "AQUIS: "+data+" VALOR: "+valor+" LOCAL: "+local+""
            + "RESP.: "+responsavel+"";
    StringBuilder texto = new StringBuilder("N\n"); //  (limpa o buffer de impressão, para ser iniciado um novo arquivo BPLB)
   
    texto.append("D2\n"); //(configura a Densidade ou aquecimento da cabeça de impressão para o valor 9)
    texto.append("S3\n"); //(configura a Velocidade de impressão para 3 pol./seg)
    texto.append("JF\n"); //(habilita o “backfeed” para que ao final da impressão, o espaço entre etiquetas pare na serrilha)
    texto.append("ZT\n"); //(indica que a impressão deve inciar a partir do topo, ou seja, de cabeça para baixo)
    texto.append("Q260,24\n"); //(configura a altura da etiqueta 480/8=60mm e altura do espaço entre etiquetas 24/8=3mm)
    texto.append("q832\n"); //(configura a largura total da etiqueta: 832/8 = 104mm)
    texto.append("X301,0,3,720,250\n"); //Retangulo
    texto.append("b369,45,Q,"+ '"' + Qrcode  + '"' +"\n"); // (campo de código QR, vide comando B)
    texto.append("B350,0,1,E80,3,3,40,N,\"1234567\"\n"); // (campo de código de barras, vide comando B)
    //texto.append("B350,20,0,1,3,5,80,B,\"A0B1C2D3\"\n"); // (campo de código de barras, vide comando B)
    texto.append("A710,16,1,4,1,1,N," + '"' + "  PREFEITURA"  + '"' + "\n");
    texto.append("A680,16,1,4,1,1,N," + '"' + cliente  + '"' + "\n");
    texto.append("LE659,0,3,250\n");
    texto.append("A650,16,1,4,1,1,N," + '"' + "  PATRIMONIO" + '"' + "\n");
    texto.append("A610,20,1,3,2,1,N," + '"' + "   N:0000001" + '"' + "\n");
    texto.append("LE564,0,3,250\n");
    texto.append("X204,0,3,290,250\n"); //Retangulo
    texto.append("A284,16,1,4,1,1,N," + '"' + " ETIQUETA SEG"  + '"' + "\n");
    texto.append("A246,16,1,3,2,1,N," + '"' + "   N: 0000002"  + '"' + "\n");
    texto.append("X110,0,3,186,250\n"); //Retangulo
    texto.append("A182,16,1,4,1,1,N," + '"' + "  NOTA FISCAL"  + '"' + "\n");
    texto.append("A149,16,1,3,2,1,N," + '"' + "   N: 0000003"  + '"' + "\n");
    texto.append("P1\n");
    
   
    /*texto.append("\n"); //
    texto.append("\n"); //
    texto.append("\n"); //
    texto.append("\n"); //
    texto.append("\n"); //
    texto.append("\n"); //
    */
    
   
    return texto.toString();
            
    }
    
}
