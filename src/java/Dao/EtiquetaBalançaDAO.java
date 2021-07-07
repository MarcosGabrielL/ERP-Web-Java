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
import model.bean.EtiquetaBalança;

/**
 *
 * @author Marcos
 */
public class EtiquetaBalançaDAO {
    
    
   /*public void creat(EtiquetaBalança c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.\"ETIQUETABALANÇA\" (digitoinicial,tamanhototal,iniciocodigo,finalcodigo,iniciodados,finaldados,casasdecimais) VALUES (?,?,?,?,?,?,?)");
            stmt.setString(1,c.getDigitoInicial());
            stmt.setString(2,c.getTamanhoTotal());
            stmt.setString(3,c.getInicioCódigo());
            stmt.setString(4,c.getFinalCódigo());
            stmt.setString(5,c.getInicioDados());
            stmt.setString(6,c.getFinalDados());
            stmt.setString(7,c.getCasasDecimais());
            
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar caixa:  "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    */
    public List<EtiquetaBalança> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<EtiquetaBalança> caixas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ETIQUETABALANÇA\"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                EtiquetaBalança caixa = new EtiquetaBalança();
                
                caixa.setCasasDecimais(rs.getString("casasdecimais"));
                caixa.setDigitoInicial(rs.getString("digitoinicial"));
                caixa.setFinalCódigo(rs.getString("finalcodigo"));
                caixa.setFinalDados(rs.getString("finaldados"));
                caixa.setInicioCódigo(rs.getString("iniciocodigo"));
                caixa.setInicioDados(rs.getString("iniciodados"));
                caixa.setTamanhoTotal(rs.getString("tamanhototal"));
                caixa.setTipoDados(rs.getString("tipodados"));
                
                
                caixas.add(caixa);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return caixas;
        
    
    }
    
    public void update(EtiquetaBalança c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE NOSSOCLIENTE.\"ETIQUETABALANÇA\" SET digitoinicial = ?,tamanhototal = ?,iniciocodigo = ?,"
                    + "finalcodigo = ?,iniciodados = ?,finaldados = ?,casasdecimais = ?,tipodados = ? WHERE id = 1");
            stmt.setString(1,c.getDigitoInicial());
            stmt.setString(2,c.getTamanhoTotal());
            stmt.setString(3,c.getInicioCódigo());
            stmt.setString(4,c.getFinalCódigo());
            stmt.setString(5,c.getInicioDados());
            stmt.setString(6,c.getFinalDados());
            stmt.setString(7,c.getCasasDecimais());
            stmt.setString(8, c.getTipoDados());
            stmt.executeUpdate();
            
          //  JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar : "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
}
