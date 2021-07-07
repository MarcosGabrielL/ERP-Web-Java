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
import model.bean.Parcelamento;

/**
 *
 * @author Marcos
 */
public class ParcelamentoDAO {
    
    public void creat(Parcelamento c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO nossocliente.faturas (cliente,datacompra,valorcompra,parcela,valorparcela,vencimento,cpf) VaLUES(?,?,?,?,?,?,?)");
            stmt.setString(1,c.getCliente());
            stmt.setString(2,c.getDataCompra());
            stmt.setString(3,c.getValorCompra());
            stmt.setString(4,c.getParcela());
            stmt.setString(5,c.getValorParcela());
            stmt.setString(6,c.getVencimento());
            stmt.setString(7, c.getCPF());
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex ) {
                        JOptionPane.showMessageDialog(null, "Erro "+ex);
                    }catch (java.lang.NumberFormatException ex){
                        JOptionPane.showMessageDialog(null, "Erro "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Parcelamento> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Parcelamento> parcelas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.faturas");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Parcelamento parcela = new Parcelamento();
                
                parcela.setCliente(rs.getString("cliente"));
                parcela.setDataCompra(rs.getString("datacompra"));
                parcela.setValorCompra(rs.getString("valorcompra"));
                parcela.setParcela(rs.getString("parcela"));
                parcela.setValorParcela(rs.getString("valorparcela"));
                parcela.setVencimento(rs.getString("vencimento"));
                parcela.setCPF(rs.getString("cpf"));
                
                
                parcelas.add(parcela);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return parcelas;
        
    
    }
    
    public void delete(Parcelamento c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM nossocliente.faturas WHERE cliente = ? AND valorcompra = ? AND parcela = ? AND datacompra = ?");
            stmt.setString(1,c.getCliente());
            stmt.setString(2,c.getValorCompra());
            stmt.setString(3,c.getParcela());
            stmt.setString(4,c.getDataCompra());
            
            stmt.executeUpdate();
            
           // JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Parcelamento> LerCliente(String desc){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Parcelamento> Parcelas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.faturas where cliente like ? order by vencimento");
            stmt.setString(1, desc+"%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Parcelamento parcela = new Parcelamento();
                
                parcela.setCliente(rs.getString("cliente"));
                parcela.setDataCompra(rs.getString("datacompra"));
                parcela.setValorCompra(rs.getString("valorcompra"));
                parcela.setParcela(rs.getString("parcela"));
                parcela.setValorParcela(rs.getString("valorparcela"));
                parcela.setVencimento(rs.getString("vencimento"));
                parcela.setCPF(rs.getString("cpf"));
                
                Parcelas.add(parcela);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar parcelas: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return Parcelas;
        
    
    }
    
}
