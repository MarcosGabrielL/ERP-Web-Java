/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Cliente;
import Bean.Fiscal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class FiscalDAO {
    
    public List<Fiscal> read(){
    
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        boolean flag = false;
        List<Fiscal> fiscals = new ArrayList<Fiscal>();
        
        try {
            ps = con.prepareStatement("SELECT * FROM fiscal");
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                Fiscal fiscal = new Fiscal();
                
                 fiscal.setCNPJ(rs.getString("cnpj"));
                fiscal.setRazaosocial(rs.getString("razaosocial"));
                fiscal.setRua(rs.getString("rua"));
                fiscal.setBairro(rs.getString("bairro"));
                fiscal.setNumero(rs.getString("numero"));
                fiscal.setEstado(rs.getString("estado"));
                fiscal.setUf(rs.getString("uf"));
                fiscal.setTelefone(rs.getString("telefone"));
                fiscal.setEmail(rs.getString("email"));
                fiscal.setCertificado(rs.getString("certificado"));
                fiscal.setNumeroSérie(rs.getString("numeroserie"));
                fiscal.setAmbiente(rs.getInt("ambiente"));
                fiscal.setSérie(rs.getInt("série"));
                fiscal.setRegimetributario(rs.getString("regimetributario"));
                fiscal.setICMS(rs.getString("icms"));
                fiscal.setPIS(rs.getString("pis"));
                fiscal.setCOFINS(rs.getString("cofins"));
                fiscal.setIPI(rs.getString("ipi"));
                fiscal.setFantasia(rs.getString("nomefantasia"));
                fiscal.setCidade(rs.getString("cidade"));
                fiscal.setCEP(rs.getString("cep"));
                fiscal.setCFOP(rs.getString("cfop"));
                fiscal.setCTipo(rs.getInt("ctipo"));
                fiscal.setCSenha(rs.getString("csenha"));
                fiscal.setCValidade(rs.getString("cvalidade"));
                fiscal.setCST(rs.getString("cst"));
                fiscal.setNCM(rs.getString("ncm"));
                fiscal.setInscricaoEstadual(rs.getString("inscricaoestadual"));
                fiscal.setIBPT(rs.getString("ibpt"));
                fiscal.setCodigoCity(rs.getString("codigocity"));
                fiscal.setToken(rs.getString("idtoken"));
                fiscal.setCSC(rs.getString("csc"));
                fiscal.setNome(rs.getString("nome"));
                
                fiscals.add(fiscal);
            }
            
            
        } catch (Exception ex) {
            System.err.println("Erro ao ler dados fiscais: "+ex);
        }finally{
          try {
               if(con!=null){
                con.close();
               }
           } catch (Exception e2) {
           // TODO: handle exception
           } 
        }
        
        return fiscals;
        
    
    }
    
    public boolean update(Fiscal f){
    
   DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
    PreparedStatement stmt = null;
     boolean flag = false;
     System.err.println("VEio!!");
        try {
            stmt = con.prepareStatement("UPDATE fiscal SET razaosocial = ?, rua = ?,bairro = ?,"
                    + "numero = ?,estado = ?,uf = ?,telefone = ?,email = ?,certificado = ?,numeroserie = ?,ambiente = ?,série = ?,"
                    + "regimetributario = ?,icms = ?,pis = ?,cofins = ?,ipi = ?,nomefantasia = ?,cidade = ?,cep = ?,"
                    + "cfop = ?, ctipo = ?,csenha = ?,cst = ?,ncm = ?, codigocity = ?, inscricaoestadual = ?, ibpt = ?,"
                    + "idtoken = ?, csc = ?, cnpj = ? WHERE nome like ?;");
            stmt.setString(1,f.getRazaosocial());
            stmt.setString(2,f.getRua());
            stmt.setString(3,f.getBairro());
            stmt.setString(4,f.getNumero());
            stmt.setString(5,f.getEstado());
            stmt.setString(6,f.getBb());
            stmt.setString(7,f.getAa());
            stmt.setString(8,f.getEmail());
            stmt.setString(9,f.getCertificado());
            stmt.setString(10,f.getNumeroSérie());
            stmt.setInt(11,f.getAmbiente());
            stmt.setInt(12,f.getSérie());
            stmt.setString(13,f.getRegimetributario());
            stmt.setString(14,f.getICMS());
            stmt.setString(15,f.getPIS());
            stmt.setString(16,f.getCOFINS());
            stmt.setString(17,f.getIPI());
            stmt.setString(18, f.getFantasia());
            stmt.setString(19, f.getDd());
            stmt.setString(20, f.getCEP());
            stmt.setString(21, f.getCFOP());
            stmt.setInt(22,f.getCTipo());
            stmt.setString(23, f.getCSenha());
            stmt.setString(24, f.getCST());
            stmt.setString(25, f.getNCM());
            stmt.setString(26, f.getCodigoCity());
            stmt.setString(27, f.getCc());
            stmt.setString(28, f.getIBPT());
            stmt.setString(29, f.getToken());
            stmt.setString(30, f.getCSC());
            stmt.setString(31, f.getCNPJ());
            stmt.setString(32, f.getNome());
            stmt.executeUpdate();
            
            System.err.println("Salvo com sucesso!");
    flag=true;
                    } catch (SQLException ex) {
             System.err.println( "Erro ao atualizar dados Fiscais: "+ex);
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
    
    public boolean updatevalidade(Fiscal f){
    
    DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
    PreparedStatement stmt = null;
     boolean flag = false;
    
        try {
            stmt = con.prepareStatement("UPDATE fiscal SET cvalidade = ? WHERE id = 1");
            stmt.setString(1, f.getCValidade());
            stmt.executeUpdate();
            
            System.err.println("Atualizado com sucesso!");
             flag=true;
                    } catch (SQLException ex) {
            System.err.println("Erro ao atalizar dados Fiscais: "+ex);
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
    
    public boolean checkCNPJ(String cnpj){
    
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        boolean flag = false;
        List<Fiscal> fiscals = new ArrayList<Fiscal>();
        
        try {
            ps = con.prepareStatement("SELECT * FROM fiscal where cnpj like ?");
            ps.setString(1, cnpj);
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                flag = true;
            }
            
            
        } catch (Exception ex) {
            System.err.println("Erro ao ler dados fiscais: "+ex);
        }finally{
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
     
     public boolean save(Fiscal c){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps=null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO cliente "
           + "(user,pass,nome,cnpj,nomefantasia,razaosocial,estado,telefone,cep,"
           + "endereco,numero,complemento,bairro,cidade,datainicio,prazolicenca,pacote,"
           + "permissao,logo,email) "
           + "VaLUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
   ps.setString(1,obj_User.getUser());
   ps.setString(2,obj_User.getPass());
   ps.setString(3,obj_User.getNome());
   ps.setString(4,obj_User.getCnpj());
   ps.setString(5,obj_User.getBb());
   ps.setString(6,obj_User.getAa());
   ps.setString(7,obj_User.getEstado());
   ps.setString(8,obj_User.getTelefone());
   ps.setString(9,obj_User.getCep());
   ps.setString(10,obj_User.getEndereco());
   ps.setString(11,obj_User.getNumero());
   ps.setString(12,obj_User.getComplemento());
   ps.setString(13,obj_User.getBairro());
   ps.setString(14,obj_User.getCidade());
   ps.setString(15,obj_User.getDatainicio());
   ps.setString(16,obj_User.getPrazo_licença());
   ps.setString(17,obj_User.getPacote());
   ps.setString(18,obj_User.getPermissão());
   ps.setString(19,obj_User.getLogo());
   ps.setString(20,obj_User.getEmail());
   
   ps.executeUpdate();
   System.err.println("Salvo com sucesso!");
    flag=true;
   
  } catch (Exception e) {
      
   System.err.println("Erro: "+e);
   
 }finally {
  try {
   if(connection!=null){
    connection.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }
 }
 return flag;
 }
     
}
