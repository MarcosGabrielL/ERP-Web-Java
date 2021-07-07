/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connection.Connector;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import model.bean.NotaNFE;
/**
 *
 * @author Marcos
 */
public class NotaNfeDAO {
    
    public void ArmazenarNota(NotaNFE m){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
                
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.NFES (NUMERO, SERIE, FORMA, LOJA, CAIXA, VALOR,PAGAMENTO,DATA)"
                    + " VALUES(?,?,?,?,?,?,?,?)");
            stmt.setString(1,m.getNumero());
            stmt.setString(2,m.getSerie());
            stmt.setString(3,m.getForma());
            stmt.setString(4, m.getLoja());
            stmt.setString(5, m.getCaixa());
            stmt.setString(6, m.getValor());
            stmt.setString(7, m.getPagamento());
            stmt.setString(8, m.getData());
            stmt.executeUpdate();
            
            
            
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao adicionar Nota: "+ex);
            System.out.println("Erro ao adicionar Nota: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
     public List<NotaNFE> LerNotas(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<NotaNFE> notas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.NFES ORDER BY numero");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                NotaNFE nota = new NotaNFE();
                
                nota.setNumero(rs.getString("numero"));
                nota.setSerie(rs.getString("serie"));
                nota.setForma(rs.getString("forma"));
                nota.setLoja(rs.getString("loja"));
                nota.setCaixa(rs.getString("caixa"));
                nota.setValor(rs.getString("valor"));
                nota.setPagamento(rs.getString("pagamento"));
                nota.setData(rs.getString("data"));
                
                notas.add(nota);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar notas nfe: "+ex);
            System.out.println("Erro ao carregar notas nfe: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return notas;
        
    
    }
     
     public int Numero(String loja, String caixa,String Serie){
         int maxn = 0;
         int novomax = 0 ;
     Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = con.prepareStatement("Select Max(numero) FROM NOSSOCLIENTE.NFES where loja = ? and caixa = ? and serie = ?");
            stmt.setString(1,loja);
            stmt.setString(2,caixa);
            stmt.setString(3, Serie);
            rs = stmt.executeQuery();
            
                NotaNFE nota = new NotaNFE();
                if (rs.next()) {
                        try{
                            if(rs.getString(1).equals("") || rs.getString(1) == null || rs.getString(1).equals("0")){
                            maxn = 0;
                        }else{
                        maxn = Integer.valueOf(rs.getString(1));
                        }
                        }catch(Exception e){maxn = 0;}
                //novomax = maxn+1;
               
                }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar numero: "+ex);
            System.out.println("Erro ao carregar numero: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
     
     return maxn;
     }
     
     public int Serie(String loja, String caixa){
    
      int maxn = 0;
         int novomax = 0 ;
     Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = con.prepareStatement("Select Max(serie) FROM NOSSOCLIENTE.NFES where loja = ?, caixa = ?");
            stmt.setString(1,loja);
            stmt.setString(2,caixa);
            rs = stmt.executeQuery();
            
            
                if (rs.next()) {
                maxn = Integer.valueOf(rs.getInt(1));
                //novomax = maxn+1;
               
                }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar serie: "+ex);
            System.out.println("Erro ao carregar serie: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return maxn;
        
    
    }
    
      public int Id(){
        
        int maxn = 0;
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("Select Max(id) FROM NOSSOCLIENTE.NFES");
            rs = stmt.executeQuery();
            
                if (rs.next()) {
                    if(Integer.valueOf(rs.getInt(1)) == null){
                        maxn = 1;
                    }else{
                    maxn = Integer.valueOf(rs.getInt(1));
                    }
                
                //novomax = maxn+1;
               
                }
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar id: "+ex);
            System.out.println("Erro ao carregar id: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
     
     return maxn;
     }
    
      public List<NotaNFE> LerNotasOrder(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<NotaNFE> notas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.NFES ORDER BY numero desc");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                NotaNFE nota = new NotaNFE();
                
                nota.setNumero(rs.getString("numero"));
                nota.setSerie(rs.getString("serie"));
                nota.setForma(rs.getString("forma"));
                nota.setLoja(rs.getString("loja"));
                nota.setCaixa(rs.getString("caixa"));
                nota.setValor(rs.getString("valor"));
                nota.setPagamento(rs.getString("pagamento"));
                nota.setData(rs.getString("data"));
                
                notas.add(nota);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar notas nfe: "+ex);
            System.out.println("Erro ao carregar notas nfe: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return notas;
        
    
    }
}
