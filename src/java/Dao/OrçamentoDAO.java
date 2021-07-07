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
import model.bean.Orçamento;

/**
 *
 * @author Marcos
 */
public class OrçamentoDAO {
    
    public void creat(Orçamento o){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.\"ORÇAMENTO\" "
                    + "(TOTALGERAL, FRETE, DESCONTO, XNOME, XLGR, NRO, BAIRRO, XMUN, UF, CEP, FONE, LOGO,\"DATA\")" +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            stmt.setFloat(1,o.getTotalGeral());
            stmt.setFloat(2,o.getFrete());
            stmt.setFloat(3,o.getDesconto());
            stmt.setString(4,o.getXNome());
            stmt.setString(5,o.getXLgr());
            stmt.setString(6,o.getNro());
            stmt.setString(7,o.getBairro());
            stmt.setString(8,o.getXMun());
            stmt.setString(9,o.getUF());
            stmt.setString(10,o.getCEP());
            stmt.setString(11,o.getFone());
            stmt.setString(12,o.getLogo());
            stmt.setString(13,o.getData());
            
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar Orçamento:  "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Orçamento> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Orçamento> orçamentos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ORÇAMENTO\" ");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Orçamento orça = new Orçamento();
                
                orça.setBairro(rs.getString("bairro"));
                orça.setCEP(rs.getString("cep"));
                orça.setData(rs.getString("data"));
                orça.setDesconto(Float.parseFloat(rs.getString("desconto")));
                orça.setFone(rs.getString("fone"));
                orça.setFrete(Float.parseFloat(rs.getString("frete")));
                orça.setNro(rs.getString("nro"));
                orça.setTotalGeral(Float.parseFloat(rs.getString("totalgeral")));
                orça.setUF(rs.getString("uf"));
                orça.setXLgr(rs.getString("xlgr"));
                orça.setXMun(rs.getString("xmun"));
                orça.setXNome(rs.getString("xnome"));
                
                orçamentos.add(orça);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Orçamentos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return orçamentos;
        
    
    }
    
    public void delete(String Data, String Nome){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.\"ORÇAMENTO\" WHERE XNOME = ? AND data = ?");
            stmt.setString(1, Nome);
            stmt.setString(2,Data);
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar Orçamento: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Orçamento> readNome(String Nome){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Orçamento> orçamentos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ORÇAMENTO\" WHERE xnome LIKE ?");
            stmt.setString(1, "%"+Nome+"%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Orçamento orça = new Orçamento();
                
                orça.setBairro(rs.getString("bairro"));
                orça.setCEP(rs.getString("cep"));
                orça.setData(rs.getString("data"));
                orça.setDesconto(Float.parseFloat(rs.getString("desconto")));
                orça.setFone(rs.getString("fone"));
                orça.setFrete(Float.parseFloat(rs.getString("frete")));
                orça.setNro(rs.getString("nro"));
                orça.setTotalGeral(Float.parseFloat(rs.getString("totalgeral")));
                orça.setUF(rs.getString("uf"));
                orça.setXLgr(rs.getString("xlgr"));
                orça.setXMun(rs.getString("xmun"));
                orça.setXNome(rs.getString("xnome"));
                
                orçamentos.add(orça);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Orçamentos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return orçamentos;
        
    
    }
    
    public List<Orçamento> readOr(String Data, String Nome){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Orçamento> orçamentos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.\"ORÇAMENTO\" WHERE xnome = ? AND data = ?");
            stmt.setString(1, Nome);
            stmt.setString(2,Data);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Orçamento orça = new Orçamento();
                
                orça.setBairro(rs.getString("bairro"));
                orça.setCEP(rs.getString("cep"));
                orça.setData(rs.getString("data"));
                orça.setDesconto(Float.parseFloat(rs.getString("desconto")));
                orça.setFone(rs.getString("fone"));
                orça.setFrete(Float.parseFloat(rs.getString("frete")));
                orça.setNro(rs.getString("nro"));
                orça.setTotalGeral(Float.parseFloat(rs.getString("totalgeral")));
                orça.setUF(rs.getString("uf"));
                orça.setXLgr(rs.getString("xlgr"));
                orça.setXMun(rs.getString("xmun"));
                orça.setXNome(rs.getString("xnome"));
                
                orçamentos.add(orça);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler Orçamentos: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return orçamentos;
        
    
    }

}
