/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Caixa;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.swing.JOptionPane;
import utils.DB_Connection;


/**
 *
 * @author Marcos
 */
public class CaixaDAO {
    
    public boolean creat(Caixa c){
    
   DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("INSERT INTO caixa (idCaixa, Operador, Senha, Loja,serienfce,serienfe, cliente,cnpj) VALUES (?, ?,?,?, ?, ?, ?,?)");
            stmt.setInt(1,c.getIdcaixa());
            stmt.setString(2,c.getOperador());
            stmt.setString(3,c.getSenha());
            stmt.setString(4,c.getLoja());
            stmt.setString(5,c.getSerienfce());
            stmt.setString(6,c.getSerienfe());
            stmt.setString(7, c.getCliente());
            stmt.setString(8, c.getCnpj());
            
            stmt.executeUpdate();
            flag = true;
            
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao criar caixa:  "+ex);
        } finally{
        
            try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              }   
        
        }
        return flag;
    
    }
    
    public List<Caixa> read(){
    
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
        List<Caixa> caixas = new ArrayList<Caixa>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM caixa");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Caixa caixa = new Caixa();
                
                caixa.setIdcaixa(rs.getInt("idCaixa"));
                caixa.setOperador(rs.getString("Operador"));
                caixa.setLoja(rs.getString("Loja"));
                caixa.setSenha(rs.getString("Senha"));
                caixa.setImpressora(rs.getInt("Impressora"));
                caixa.setSini(rs.getString("serieini"));
                caixa.setNomeimpressora(rs.getString("nomeimpressora"));
                caixa.setModeloimpressora(rs.getString("modeloimpressora"));
                caixa.setMarcaimpressora(rs.getString("marcaimpressora"));
                caixa.setPortabalanca(rs.getString("portabalanca"));
                caixa.setFabricantebalanca(rs.getString("fabricantebalanca"));
                caixa.setModelobalanca(rs.getString("modelobalanca"));
                caixa.setComunicacaobalança(rs.getString("comunicacaobalanca"));
                caixa.setSerienfe(rs.getString("serienfe"));
                caixa.setSerienfce(rs.getString("serienfce"));
                caixa.setNnomeimpressoraorçamento(rs.getString("nomeimpresorca"));
                caixa.setCliente(rs.getString("cliente"));
                caixa.setCnpj(rs.getString("cnpj"));
                caixa.setStatus(rs.getString("status"));
                caixa.setUsuarioatt(rs.getString("usuarioatt"));
                caixa.setTipo(rs.getString("tipo"));
                
                caixas.add(caixa);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler caixa: "+ex);
        }finally{
          try {
   if(con!=null){
    con.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }     
            
        }
        
        return caixas;
        
    
    }
    
    public void update(Caixa c){
    
     DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE nossocliente.caixa SET senha = ? WHERE idCaixa = ? and Loja = ?");
            stmt.setString(1, c.getSenha());
            stmt.setInt(2, c.getIdcaixa());
            stmt.setString(3, c.getLoja());
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar caixa: "+ex);
        } finally{
        
        try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              } 
        }
    
    }
    
     public boolean updateStatus(Caixa c){
    
     DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE caixa SET status = ?, tipo = ? WHERE idCaixa = ? and Loja = ? and cliente = ?");
            stmt.setString(1, c.getStatus());
            stmt.setString(2, c.getTipo());
            stmt.setInt(3, Integer.parseInt(c.getOperador()));
            stmt.setString(4, c.getLoja());
            stmt.setString(5, c.getCliente());
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
            System.out.println("UPDATE STATUS!!!!!!!");
            flag = true;
             // return flag;
                    } catch (SQLException ex) {
            System.out.println("Erro ao atalizar caixa: "+ex);
        } finally{
        
        try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              } 
        }
    
        return flag;
    }
     
     public boolean updateUsuario(Caixa c){
    
     DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE caixa SET usuarioatt = ? WHERE idCaixa = ? and Loja = ? and cliente = ?");
            stmt.setString(1, c.getUsuarioatt());
            stmt.setInt(2, Integer.parseInt(c.getOperador()));
            stmt.setString(3, c.getLoja());
            stmt.setString(4, c.getCliente());
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
            flag = true;
             System.out.println("UPDATE STATUS!!!!!!!");
                    } catch (SQLException ex) {
           // JOptionPane.showMessageDialog(null, "Erro ao atalizar caixa: "+ex);
        } finally{
        
        try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              } 
        }
    
        return flag;
    }
    
    public boolean delete(Caixa a){
    
    DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM caixa WHERE idcaixa = ? and loja = ? and cliente = ?");
            stmt.setInt(1,a.getIdcaixa());
            stmt.setString(2,a.getLoja());
            stmt.setString(3, a.getCliente());
            
            stmt.executeUpdate();
            
            flag = true;
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar caixa: "+ex);
        } finally{
 try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              } 
        }
    
        return flag;
    }
    
    public void atualizarImpressora(int c){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE nossocliente.caixa SET impressora = ? WHERE idCaixa = 1 and Loja = Sede");
            stmt.setInt(1, c);
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar caixa: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Caixa> readdesc(String loja, int id){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Caixa> caixas = new ArrayList<>();
        try {
            stmt = con.prepareStatement("SELECT * FROM nossocliente.caixa where loja like ? and idcaixa = ?");
            stmt.setString(1,loja);
            stmt.setInt(2, id);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
               Caixa caixa = new Caixa();
                
                caixa.setIdCaixa(rs.getInt("idCaixa"));
                caixa.setOperador(rs.getString("Operador"));
                caixa.setLoja(rs.getString("Loja"));
                caixa.setSenha(rs.getString("Senha"));
                caixa.setImpressora(rs.getInt("Impressora"));
                caixa.setSIni(rs.getString("serieini"));
                caixa.setNomeImpressora(rs.getString("nomeimpressora"));
                caixa.setModeloImpressora(rs.getString("modeloimpressora"));
                caixa.setMarcaImpressora(rs.getString("marcaimpressora"));
                caixa.setPortaBalanca(rs.getString("portabalanca"));
                caixa.setFabricanteBalanca(rs.getString("fabricantebalanca"));
                caixa.setModeloBalanca(rs.getString("modelobalanca"));
                caixa.setComunicaçãoBalança(rs.getString("comunicacaobalanca"));
                caixa.setSerieNFE(rs.getString("serienfe"));
                caixa.setNomeImpressoraOrçamento(rs.getString("nomeimpresorca"));
                
                caixas.add(caixa);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao ler caixa: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return caixas;
    
    }
    
    public boolean atualiza(Caixa c){
    
    DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE caixa SET serienfce = ?,senha = ?, operador = ?,"
                    + " serienfe = ? WHERE idcaixa = ? and loja = ? and cliente = ?");
            stmt.setString(1, c.getSerienfce());
            stmt.setString(4, c.getSerienfe());
            stmt.setString(2, c.getSenha());
            stmt.setString(3, c.getOperador());
            stmt.setInt(5, c.getIdcaixa());
            stmt.setString(6, c.getLoja());
            stmt.setString(7, c.getCliente());
            
            stmt.executeUpdate();
            flag = true;
            
                  
                    return flag;
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar caixa: "+ex);
        } finally{
        try {
                if(con!=null){
                 con.close();
                }
              } catch (Exception e2) {
              // TODO: handle exception
              } 
        }
        return flag;
    }
    
     public void atualizaComponentes(Caixa c){
    
   DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt =null;
        ResultSet rs=null;
        boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE caixa SET nomeimpressora = ?,modeloimpressora = ?,"
                    + " marcaimpressora = ?, portabalanca = ?, fabricantebalanca = ?, modelobalanca = ?, comunicacaobalanca = ?, nomeimpresorca = ?"
                    + " WHERE idCaixa = ? and Loja = ? and cnpj = ?");
            stmt.setString(1, c.getNomeimpressora());
            stmt.setString(2, c.getModeloimpressora());
            stmt.setString(3, c.getMarcaimpressora());
            stmt.setString(4, c.getPortabalanca());
            stmt.setString(5, c.getFabricantebalanca());
            stmt.setString(6, c.getModelobalanca());
            stmt.setString(7, c.getComunicacaobalança());
            stmt.setString(8, c.getNnomeimpressoraorçamento());
            stmt.setInt(9, c.getIdcaixa());
            stmt.setString(10, c.getLoja());
            stmt.setString(11, c.getCnpj());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atualizar caixa: "+ex);
            System.err.println("Erro ao atualizar caixa: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
     
    
}
