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
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.ADM;
import model.bean.ConfigBoleto;

/**
 *
 * @author Marcos
 */
public class ConfigBoletoDAO {
    
   
    public List<ConfigBoleto> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<ConfigBoleto> adms = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.CONFIGBOLETO");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                ConfigBoleto adm = new ConfigBoleto();
                
                adm.setNomeCedente(rs.getString("nomecedente"));
                adm.setCNPJCedente(rs.getString("cnpjcedente"));
                adm.setNomeAvalista(rs.getString("nomeavalista"));
                adm.setCNPJAvalista(rs.getString("cnpjavalista"));
                adm.setLocalidadeAvalista(rs.getString("localidadeavalista"));
                adm.setCEPAvalista(rs.getString("cepavalsta"));
                adm.setBairroAvalista(rs.getString("bairroavalista"));
                adm.setLogradouroAvalista(rs.getString("logradouroavalista"));
                adm.setNumeroAvalista(rs.getString("numeroavalista"));
                adm.setBancoCedente(rs.getString("bancocedente"));
                adm.setContaCedente(rs.getString("contacedente"));
                adm.setCarteiraCedente(rs.getString("carteiracedente"));
                adm.setAgenciaCedente(rs.getString("agenciacedente"));
                adm.setNossoNumero(rs.getString("nossonumero"));
                adm.setDigitoDoNossoNumero(rs.getString("digitonossonumero"));
                adm.setLocalPagamento(rs.getString("loalpagamento"));
                adm.setInstruçãoAoSacado(rs.getString("instruçãoaosacado"));
                adm.setInstrução1(rs.getString("intrução1"));
                 adm.setInstrução2(rs.getString("intrução2"));
                  adm.setInstrução3(rs.getString("intrução3"));
                   adm.setInstrução4(rs.getString("intrução4"));
                    adm.setInstrução5(rs.getString("intrução5"));
                     adm.setInstrução6(rs.getString("intrução6"));
                      adm.setInstrução7(rs.getString("intrução7"));
                       adm.setInstrução8(rs.getString("intrução8"));
                       adm.setCodigoContaCedente(rs.getString("codigocontacedente"));
                       adm.setCodigoAgenciaCedente(rs.getString("codigoagenciacedente"));
                
                adms.add(adm);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
            Logger.getLogger(ConfigBoletoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return adms;
        
    
    }
    
    public void update(ConfigBoleto a){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE NOSSOCLIENTE.CONFIGBOLETO SET nomecedente = ?, cnpjcedente = ?,"
                    + "nomeavalista = ?,cnpjavalista = ?,localidadeavalista = ?,cepavalsta = ?,bairroavalista = ?,"
                    + "logradouroavalista = ?,numeroavalista = ?,bancocedente = ?,contacedente = ?,"
                    + "carteiracedente = ?,agenciacedente = ?,nossonumero = ?,digitonossonumero = ?,loalpagamento = ?,"
                    + "instruçãoaosacado = ?, intrução1 = ?, intrução2 = ?, intrução3 = ?, intrução4 = ?,"
                    + "intrução5 = ?, intrução6 = ?, intrução7 = ?, intrução8 = ?,"
                    + "codigocontacedente = ?, codigoagenciacedente = ? WHERE id = 1");
            stmt.setString(1,a.getNomeCedente());
            stmt.setString(2,a.getCNPJCedente());
            stmt.setString(3,a.getNomeAvalista());
            stmt.setString(4,a.getCNPJAvalista());
            stmt.setString(5,a.getLocalidadeAvalista());
            stmt.setString(6,a.getCEPAvalista());
            stmt.setString(7,a.getBairroAvalista());
            stmt.setString(8,a.getLogradouroAvalista());
            stmt.setString(9,a.getNumeroAvalista());
            stmt.setString(10,a.getBancoCedente());
            stmt.setString(11,a.getContaCedente());
            stmt.setString(12,a.getCarteiraCedente());
            stmt.setString(13,a.getAgenciaCedente());
            stmt.setString(14,a.getNossoNumero());
            stmt.setString(15,a.getDigitoDoNossoNumero());
            stmt.setString(16,a.getLocalPagamento());
            stmt.setString(17,a.getInstruçãoAoSacado());
            stmt.setString(18,a.getInstrução1());
            stmt.setString(19,a.getInstrução2());
            stmt.setString(20,a.getInstrução3());
            stmt.setString(21,a.getInstrução4());
            stmt.setString(22,a.getInstrução5());
            stmt.setString(23,a.getInstrução6());
            stmt.setString(24,a.getInstrução7());
            stmt.setString(25,a.getInstrução8());
            stmt.setString(26,a.getCodigoContaCedente());
            stmt.setString(27,a.getCodigoAgenciaCedente());
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar: "+ex);
            Logger.getLogger(ConfigBoletoDAO.class.getName()).log(Level.SEVERE, null, ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
}
