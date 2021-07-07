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
import model.bean.Imagens;

/**
 *
 * @author Marcos
 */
public class ImagensDAO {
    
    
    
    public Imagens read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Imagens i = new Imagens();
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.imagens");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                i.setLogo(rs.getString("logo"));
                i.setNota(rs.getString("nota"));
                i.setPerfil(rs.getString("perfil"));
                
                
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler caixa: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return i;
        
    
    }
    
    public void updateNota(Imagens i){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    

        try {
            stmt = con.prepareStatement("UPDATE nossocliente.IMAGENS SET nota = ? WHERE id=1");
            stmt.setString(1, i.getNota());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar Imagem: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public void updateLogo(Imagens i){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    

        try {
            stmt = con.prepareStatement("UPDATE nossocliente.IMAGENS SET logo = ? WHERE id=1");
            stmt.setString(1, i.getLogo());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar Imagem: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public void updatePerfil(Imagens i){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    

        try {
            stmt = con.prepareStatement("UPDATE nossocliente.IMAGENS SET perfil = ? WHERE id=1");
            stmt.setString(1, i.getPerfil());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar Imagem: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
   
    
}
