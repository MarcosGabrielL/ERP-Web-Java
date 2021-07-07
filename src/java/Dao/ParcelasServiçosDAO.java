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
import model.bean.Caixa;
import model.bean.ParcelasServiços;
import model.bean.Servicos;

/**
 *
 * @author Marcos
 */
public class ParcelasServiçosDAO {
    
    public void creat(ParcelasServiços c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO nossocliente.SERVICOSPARCELAS (descrição , data, empresa, telefone, "
                    + "endereço, bairro, estado, cnpj, inscriçãoEstadual, forma, vencimento, parcela, valor, cidade) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            
            stmt.setString(1,c.getDescrição());
            stmt.setString(2,c.getData());
            stmt.setString(3,c.getEmpresa());
            stmt.setString(4,c.getTelefone());
            stmt.setString(5,c.getEndereço());
            stmt.setString(6,c.getBairro());
            stmt.setString(7,c.getEstado());
            stmt.setString(8,c.getCnpj());
            stmt.setString(9,c.getInscriçãoEstadual());
            stmt.setString(10,c.getForma());
            stmt.setString(11,c.getVencimento());
            stmt.setString(12, c.getParcelas());
            stmt.setString(13, c.getValor());
            stmt.setString(14,c.getCidade());
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Parcelas salvas com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar conta:  "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<ParcelasServiços> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ParcelasServiços> servicos = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.SERVICOSPARCELAS");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                ParcelasServiços servico = new ParcelasServiços();
                
                servico.setDescrição(rs.getString("Descrição"));
                servico.setData(rs.getString("Data"));
                servico.setEmpresa(rs.getString("Empresa"));
                servico.setTelefone(rs.getString("Telefone"));
                servico.setEndereço(rs.getString("Endereço"));
                servico.setBairro(rs.getString("Bairro"));
                servico.setCidade(rs.getString("Cidade"));
                servico.setEstado(rs.getString("Estado"));
                servico.setCnpj(rs.getString("Cnpj"));
                servico.setInscriçãoEstadual(rs.getString("InscriçãoEstadual"));
                servico.setForma(rs.getString("Forma"));
                servico.setVencimento(rs.getString("Vencimento"));
                servico.setParcelas(rs.getString("Parcela"));
                servico.setValor(rs.getString("valor"));
                
                
                
                
                servicos.add(servico);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler contas: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return servicos;
        
    
    }
    
    
    public void delete(ParcelasServiços a){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM nossocliente.SERVICOSPARCELAS WHERE valor like ? and forma like ? and vencimento like ? and parcela like ?");
            stmt.setString(1, a.getValor());
            stmt.setString(2, a.getForma());
            stmt.setString(3, a.getVencimento());
            stmt.setString(4, a.getParcelas());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar parcela: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    
     public int MenorNumero(ParcelasServiços a){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int venda = 1;
        int venda2 = 1;
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.SERVICOSPARCELAS WHERE valor like ? and forma like ? and vencimento like ?");
            stmt.setString(1, a.getValor());
            stmt.setString(2, a.getForma());
            stmt.setString(3, a.getVencimento());
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                
                venda2 = Integer.parseInt(rs.getString("parcela"));
                if(venda >= venda2){
                
                venda=venda2;
                }
                 
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao obter parcela: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return  venda;
        
    
    }
    
}
