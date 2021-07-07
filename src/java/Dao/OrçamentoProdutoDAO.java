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
import model.bean.OrçamentoProduto;

/**
 *
 * @author Marcos
 */
public class OrçamentoProdutoDAO {
    
    
    public void creat(OrçamentoProduto o){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.\"ORÇAMENTOPRODUTOS\" "
                    + "(CODIGO, QUANTIDADE, SUBTOTAL, \"DATA\", NOMECLIENTE)" +
                "VALUES (?,?,?,?,?)");
            
            stmt.setString(1,o.getCodigo());
            stmt.setString(2,o.getQuantidade());
            stmt.setString(3,o.getSubTotal());
            stmt.setString(4,o.getData());
            stmt.setString(5,o.getNomeCliente());
            
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar Orçamento:  "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<OrçamentoProduto> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<OrçamentoProduto> produtos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ORÇAMENTOPRODUTOS\"");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                OrçamentoProduto orça = new OrçamentoProduto();
                
                
                orça.setData(rs.getString("data"));
                orça.setCodigo(rs.getString("codigo"));
                orça.setQuantidade(rs.getString("quantidade"));
                orça.setSubTotal(rs.getString("subtotal"));
                orça.setNomeCliente(rs.getString("nomecliente"));
                
                produtos.add(orça);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Orçamentos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return produtos;
        
    
    }
    
    public void delete(String Data, String Nome){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.\"ORÇAMENTOPRODUTOS\" WHERE xnome = ? AND data = ?");
            stmt.setString(1, Nome);
            stmt.setString(2, Data);
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar Orçamento: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
     public List<OrçamentoProduto> readNomeData(String Data, String Nome){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<OrçamentoProduto> produtos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ORÇAMENTOPRODUTOS\" WHERE nomecliente = ? AND data = ?");
            stmt.setString(1, Nome);
            stmt.setString(2,Data);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                OrçamentoProduto orça = new OrçamentoProduto();
                
                
                orça.setData(rs.getString("data"));
                orça.setCodigo(rs.getString("codigo"));
                orça.setQuantidade(rs.getString("quantidade"));
                orça.setSubTotal(rs.getString("subtotal"));
                orça.setNomeCliente(rs.getString("nomecliente"));
                
                produtos.add(orça);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Orçamentos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return produtos;
        
    
    }
}
