/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Cliente;
import Bean.Fiscal;
import Bean.Login;
import Bean.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class UserDAO {
    
  public static boolean save(Cliente obj_User){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps=null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO users "
           + "(user,pass,nome,cnpj,nomefantasia,razaosocial,estado,telefone,cep,"
           + "endereco,numero,complemento,bairro,cidade,datainicio,prazolicenca,pacote,"
           + "permissao,logo,email,razao) "
           + "VaLUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");
  
   ps.setString(1,obj_User.getUser());
   ps.setString(2,obj_User.getPass());
   ps.setString(3,obj_User.getNome());
   ps.setString(4,obj_User.getCnpj());
   ps.setString(5,obj_User.getNomefantasia());
   ps.setString(6,obj_User.getRazaosocial());
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
   ps.setString(21,obj_User.getRazao());
   
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
  
  public List<User> read(){
    
        DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement ps=null;
        ResultSet rs=null;
        boolean flag = false;
        List<User> fiscals = new ArrayList<User>();
        
        try {
            ps = con.prepareStatement("SELECT * FROM users");
            rs = ps.executeQuery();
            
            while(rs.next()){
            
                User user = new User();
                
                user.setUser(rs.getString("user"));
                user.setPass(rs.getString("pass"));
                user.setNome(rs.getString("nome"));
                user.setCnpj(rs.getString("cnpj"));
                user.setNomefantasia(rs.getString("nomefantasia"));
                user.setRazaosocial(rs.getString("razaosocial"));
                user.setEstado(rs.getString("estado"));
                user.setTelefone(rs.getString("telefone"));
                user.setCep(rs.getString("cep"));
                user.setEndereco(rs.getString("endereco"));
                user.setNumero(rs.getString("numero"));
                user.setComplemento(rs.getString("complemento"));
                user.setBairro(rs.getString("bairro"));
                user.setCidade(rs.getString("cidade"));
                user.setDatainicio(rs.getString("datainicio"));
                user.setPrazo_licença(rs.getString("prazolicenca"));
                user.setPacote(rs.getString("pacote"));
                user.setPermissão(rs.getString("permissao"));
                user.setLogo(rs.getString("logo"));
                user.setEmail(rs.getString("email"));
                user.setRazao(rs.getString("razao"));
                
                fiscals.add(user);
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
}
