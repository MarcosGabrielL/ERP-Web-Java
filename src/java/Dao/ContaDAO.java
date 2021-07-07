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
import model.bean.Conta;

/**
 *
 * @author Marcos
 */
public class ContaDAO {
    
    public void creat(Conta c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO nossocliente.conta (datacriação, datafinal, cnpj, serial, administrador, senha) VALUES (?, ?, ?, ?, ?, ?)");
            stmt.setString(1,c.getDatacriação());
            stmt.setString(2,c.getDatafinal());
            stmt.setString(3,c.getCnpj());
            stmt.setString(4,c.getSerial());
            stmt.setString(5,c.getAdministrador());
            stmt.setString(6,c.getSenha());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar conta:  "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Conta> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Conta> contas = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.conta");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Conta c = new Conta();
                
                c.setDatacriação(rs.getString("datacriação"));
                c.setDatafinal(rs.getString("datafinal"));
                c.setCnpj(rs.getString("cnpj"));
                c.setSerial(rs.getString("serial"));
                c.setAdministrador(rs.getString("administrador"));
                c.setSenha(rs.getString("senha"));
                
                
                contas.add(c);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler caixa: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return contas;
        
    
    }
    
    public void update(Conta c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE nossocliente.conta SET datacriação = ?, datafinal = ?, cnpj = ?, serial = ? WHERE id = 1");
            stmt.setString(1, c.getDatacriação());
            stmt.setString(2, c.getDatafinal());
            stmt.setString(3, c.getCnpj());
            stmt.setString(4, c.getSerial());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar conta: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
}
