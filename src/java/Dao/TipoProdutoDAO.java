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
import model.bean.TipoProduto;
import model.bean.Vendidos;

/**
 *
 * @author Marcos
 */
public class TipoProdutoDAO {
    
     public void creat(TipoProduto t){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO nossocliente.tipoproduto "
                    + "(tipo,unidade) VALUES (?, ?)");
            
            
            stmt.setString(1,t.getTipo());
            stmt.setString(2,t.getUnidade());
            
            
            stmt.executeUpdate();
            
           JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar Tipo: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<TipoProduto> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<TipoProduto> vendas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.tipoproduto");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                TipoProduto tipo = new TipoProduto();
                
               tipo.setTipo(rs.getString("tipo"));
               tipo.setUnidade(rs.getString("unidade"));
                
                vendas.add(tipo);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Tipos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return vendas;
        
    
    }
    
    public void exclui(TipoProduto t){
    
        Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM nossocliente.tipoproduto WHERE tipo = ?");
            
            stmt.setString(1,t.getTipo());
            
            stmt.executeUpdate();
            
           // JOptionPane.showMessageDialog(null, "Deletado com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao excluir tipo:"+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    
    }
    
}
