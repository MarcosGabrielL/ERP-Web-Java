/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Connection.Connector;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import model.bean.Boletos;
import model.bean.ConfigBoleto;

/**
 *
 * @author Marcos
 */
public class BoletosDAO {
    
    public void creat(Boletos a){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.BOLETOS (nomecedente, cnpjcedente,"
                    + "nomeavalista,cnpjavalista,localidadeavalista,cepavalista,bairroavalista,"
                    + "logradouroavalista,numeroavalista,bancocedente,contacedente,"
                    + "carteiracedente,agenciacedente,nossonumero,digitonossonumero,localpagamento,"
                    + "instruçãoaosacado,instrução1,instrução2,instrução3,instrução4,"
                    + "instrução5,instrução6,instrução7,instrução8,"
                    + "nomesacado,cnpjsacado,localidadesacado,cepsacado,bairrosacado,"
                    + "logradourosacado,numerosacado,numerodocumento,valor, "
                    + "datavencimento,datadocumento,codigocontacedente,codigoagenciacedente) VaLUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
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
            stmt.setString(26,a.getNomeSacado());
            stmt.setString(27,a.getCNPJSacado());
            stmt.setString(28,a.getLocalidadeSacado());
            stmt.setString(29,a.getCEPSacado());
            stmt.setString(30,a.getBairroSacado());
            stmt.setString(31,a.getLogradouroSacado());
            stmt.setString(32,a.getNumeroSacado());
            stmt.setInt(33,a.getNumeroDocumento());
            stmt.setString(34,a.getValor());
            stmt.setDate(35, (Date) a.getDataDoVencimento());
            stmt.setDate(36, (Date) a.getDataDoDocumento());
            stmt.setString(37,a.getCodigoContaCedente());
            stmt.setString(38,a.getCodigoAgenciaCedente());
            
            
            
            stmt.executeUpdate();
            
            //JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Boletos> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Boletos> adms = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.BOLETOS");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Boletos adm = new Boletos();
                
                adm.setNomeCedente(rs.getString("nomecedente"));
                adm.setCNPJCedente(rs.getString("cnpjcedente"));
                adm.setNomeAvalista(rs.getString("nomeavalista"));
                adm.setCNPJAvalista(rs.getString("cnpjavalista"));
                adm.setNomeSacado(rs.getString("nomesacado"));
                adm.setCNPJSacado(rs.getString("cnpjsacado"));
                adm.setLocalidadeAvalista(rs.getString("localidadeavalista"));
                adm.setCEPSacado(rs.getString("cepsacado"));
                adm.setBairroSacado(rs.getString("bairrosacado"));
                adm.setLogradouroSacado(rs.getString("logradourosacado"));
                adm.setNumeroSacado(rs.getString("numerosacado"));
                adm.setCEPAvalista(rs.getString("cepavalista"));
                adm.setBairroAvalista(rs.getString("bairroavalista"));
                adm.setLogradouroAvalista(rs.getString("logradouroavalista"));
                adm.setNumeroAvalista(rs.getString("numeroavalista"));
                adm.setBancoCedente(rs.getString("bancocedente"));
                adm.setContaCedente(rs.getString("contacedente"));
                adm.setCarteiraCedente(rs.getString("carteiracedente"));
                adm.setAgenciaCedente(rs.getString("agenciacedente"));
                adm.setNumeroDocumento(rs.getInt("numeroDocumento"));
                adm.setNossoNumero(rs.getString("nossonumero"));
                adm.setDigitoDoNossoNumero(rs.getString("digitonossonumero"));
                adm.setValor(rs.getString("valor"));
                adm.setDataDoVencimento(rs.getDate("datavencimento"));
                adm.setDataDoDocumento(rs.getDate("datadocumento"));
                adm.setLocalPagamento(rs.getString("localpagamento"));
                adm.setInstruçãoAoSacado(rs.getString("instruçãoaosacado"));
                adm.setInstrução1(rs.getString("instrução1"));
                 adm.setInstrução2(rs.getString("instrução2"));
                  adm.setInstrução3(rs.getString("instrução3"));
                   adm.setInstrução4(rs.getString("instrução4"));
                    adm.setInstrução5(rs.getString("instrução5"));
                     adm.setInstrução6(rs.getString("instrução6"));
                      adm.setInstrução7(rs.getString("instrução7"));
                       adm.setInstrução8(rs.getString("instrução8"));
                       adm.setCodigoContaCedente(rs.getString("codigocontacedente"));
                       adm.setCodigoAgenciaCedente(rs.getString("codigoagenciacedente"));
                       adm.setStatus(rs.getString("status"));
                adms.add(adm);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return adms;
        
    
    }
    
    public void update(Boletos a){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE NOSSOCLIENTE.BOLETOS SET nomecedente = ?, cnpjcedente = ?,"
                    + "nomeavalista = ?,cnpjavalista = ?,localidadeavalista = ?,cepavalista = ?,bairroavalista = ?,"
                    + "logradouroavalista = ?,numeroavalista = ?,bancocedente = ?,contacedente = ?,"
                    + "carteiracedente = ?,agenciacedente = ?,nossonumero = ?,digitonossonumero = ?,localpagamento = ?,"
                    + "instruçãoaosacado = ?, instrução1 = ?, instrução2 = ?, instrução3 = ?, instrução4 = ?,"
                    + "instrução5 = ?, instrução6 = ?, instrução7 = ?, instrução8 = ?,"
                    + "nomesacado = ?,cnpjsacado = ?,localidadesacado = ?,cepsacado = ?,bairrosacado = ?,"
                    + "logradourosacado = ?, numerosacado = ?,valor = ?, "
                    + "datavencimento = ?, datadocumento = ?,codigocontacedente = ?, codigoagenciacedente = ?  WHERE numerodocumento = ?");
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
            stmt.setString(26,a.getNomeSacado());
            stmt.setString(27,a.getCNPJSacado());
            stmt.setString(28,a.getLocalidadeSacado());
            stmt.setString(29,a.getCEPSacado());
            stmt.setString(30,a.getBairroSacado());
            stmt.setString(31,a.getLogradouroSacado());
            stmt.setString(32,a.getNumeroSacado());
            stmt.setString(33,a.getValor());
            stmt.setDate(34, (Date) a.getDataDoVencimento());
            stmt.setDate(35, (Date) a.getDataDoDocumento());
            stmt.setString(36,a.getCodigoContaCedente());
            stmt.setString(37,a.getCodigoAgenciaCedente());
            stmt.setInt(38,a.getNumeroDocumento());
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
                        Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro ao atalizar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public void updatestatus(String status, String Numero){
    
     Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE NOSSOCLIENTE.BOLETOS SET status = ? WHERE numerodocumento = ?");
            stmt.setString(1,status);
            stmt.setString(2,Numero);
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
                        Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro ao atalizar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    
    }
    
     public int Numero(){
         int maxn = 0;
         int novomax = 0 ;
     Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            stmt = con.prepareStatement("Select max(numerodocumento) FROM NOSSOCLIENTE.BOLETOS ");
            
            rs = stmt.executeQuery();
            
                if (rs.next()) {
                    
                    System.err.println(rs.getString(1));
                        try{
                            if(rs.getString(1).equals("") || rs.getString(1) == null || rs.getString(1).equals("0")){
                            maxn = 1;
                        }else{
                        maxn = Integer.valueOf(rs.getString(1))+1;
                        }
                        }catch(Exception e){
                            maxn = 1;}
                //novomax = maxn+1;
               
                }
            
        } catch (SQLException ex) {
            Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro ao carregar numero: "+ex);
            System.out.println("Erro ao carregar numero: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
     
     return maxn;
     }
    
    public List<Boletos> readpordata(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Boletos> adms = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.BOLETOS order by datavencimento");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Boletos adm = new Boletos();
                
                adm.setNomeCedente(rs.getString("nomecedente"));
                adm.setCNPJCedente(rs.getString("cnpjcedente"));
                adm.setNomeAvalista(rs.getString("nomeavalista"));
                adm.setCNPJAvalista(rs.getString("cnpjavalista"));
                adm.setNomeSacado(rs.getString("nomesacado"));
                adm.setCNPJSacado(rs.getString("cnpjsacado"));
                adm.setLocalidadeAvalista(rs.getString("localidadeavalista"));
                adm.setCEPSacado(rs.getString("cepsacado"));
                adm.setBairroSacado(rs.getString("bairrosacado"));
                adm.setLogradouroSacado(rs.getString("logradourosacado"));
                adm.setNumeroSacado(rs.getString("numerosacado"));
                adm.setCEPAvalista(rs.getString("cepavalista"));
                adm.setBairroAvalista(rs.getString("bairroavalista"));
                adm.setLogradouroAvalista(rs.getString("logradouroavalista"));
                adm.setNumeroAvalista(rs.getString("numeroavalista"));
                adm.setBancoCedente(rs.getString("bancocedente"));
                adm.setContaCedente(rs.getString("contacedente"));
                adm.setCarteiraCedente(rs.getString("carteiracedente"));
                adm.setAgenciaCedente(rs.getString("agenciacedente"));
                adm.setNumeroDocumento(rs.getInt("numeroDocumento"));
                adm.setNossoNumero(rs.getString("nossonumero"));
                adm.setDigitoDoNossoNumero(rs.getString("digitonossonumero"));
                adm.setValor(rs.getString("valor"));
                adm.setDataDoVencimento(rs.getDate("datavencimento"));
                adm.setDataDoDocumento(rs.getDate("datadocumento"));
                adm.setLocalPagamento(rs.getString("localpagamento"));
                adm.setInstruçãoAoSacado(rs.getString("instruçãoaosacado"));
                adm.setInstrução1(rs.getString("instrução1"));
                 adm.setInstrução2(rs.getString("instrução2"));
                  adm.setInstrução3(rs.getString("instrução3"));
                   adm.setInstrução4(rs.getString("instrução4"));
                    adm.setInstrução5(rs.getString("instrução5"));
                     adm.setInstrução6(rs.getString("instrução6"));
                      adm.setInstrução7(rs.getString("instrução7"));
                       adm.setInstrução8(rs.getString("instrução8"));
                       adm.setCodigoContaCedente(rs.getString("codigocontacedente"));
                       adm.setCodigoAgenciaCedente(rs.getString("codigoagenciacedente"));
                       adm.setStatus(rs.getString("status"));
                adms.add(adm);
            }
            
            
        } catch (SQLException ex) {
            Logger.getLogger(BoletosDAO.class.getName()).log(Level.SEVERE, null, ex);
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return adms;
        
    
    }
    
     public void delete(String numero){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.BOLETOS WHERE numerodocumento = ?");
            stmt.setString(1,numero);
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
}
