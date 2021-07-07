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
import model.bean.ContraCheque;
import model.bean.Funcionario;

/**
 *
 * @author Marcos
 */
public class ContraChequeDAO {
    
     public void creat(ContraCheque f){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.CONTRACHEQUE (nome,email,cpf,rg,telefone1,cargo,"
                    + "salario,vencimento,prazo) VaLUES(?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,f.getNome());
            stmt.setString(2,f.getEmail());
            stmt.setString(3,f.getCpf());
            stmt.setString(4,f.getRg());
            stmt.setString(5,f.getTelefone1());
            stmt.setString(6,f.getCargo());
            stmt.setString(7,f.getSalario());
            stmt.setString(8,f.getVencimento());
            stmt.setString(9, f.getPrazo());
            
            
            stmt.executeUpdate();
            
            System.out.println("Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<ContraCheque> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ContraCheque> Contracheques = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.CONTRACHEQUE");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                ContraCheque funcionario = new ContraCheque();
                
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setTelefone1(rs.getString("telefone1"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setSalario(rs.getString("salario"));
                funcionario.setVencimento(rs.getString("vencimento"));
                funcionario.setPrazo(rs.getString("prazo"));
                
                Contracheques.add(funcionario);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return Contracheques;
        
    
    }
    
    
    public void delete(String cpf){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.CONTRACHEQUE WHERE cpf = ?");
            stmt.setString(1, cpf);
            
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public void deleteCC(String cpf,String vencimento){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.CONTRACHEQUE WHERE cpf = ? and vencimento = ?");
            stmt.setString(1, cpf);
            stmt.setString(2, vencimento);
            
            stmt.executeUpdate();
            
           // JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<ContraCheque> LerPorVencimento(String cpf){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ContraCheque> Contracheques = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.CONTRACHEQUE where cpf = ? order by vencimento");
            stmt.setString(1, cpf);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                ContraCheque funcionario = new ContraCheque();
                
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setTelefone1(rs.getString("telefone1"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setSalario(rs.getString("salario"));
                funcionario.setVencimento(rs.getString("vencimento"));
                funcionario.setPrazo(rs.getString("prazo"));
                
                Contracheques.add(funcionario);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return Contracheques;
        
    
    }
    
    public List<ContraCheque> LerTodosPorVencimento(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ContraCheque> Contracheques = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.CONTRACHEQUE order by vencimento");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                ContraCheque funcionario = new ContraCheque();
                
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setTelefone1(rs.getString("telefone1"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setSalario(rs.getString("salario"));
                funcionario.setVencimento(rs.getString("vencimento"));
                funcionario.setPrazo(rs.getString("prazo"));
                
                Contracheques.add(funcionario);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return Contracheques;
        
    
    }
    
    
    
    
}
