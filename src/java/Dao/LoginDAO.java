/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author Marcos
 */
import Bean.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import Bean.Login;
import Bean.User;
import utils.DB_Connection;

public class LoginDAO {
    
  public User check_user_name(String User, String Pass){
      
  boolean flag=false;
  User c = new User();
  
  DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM users where user = ? and pass = ?");
            stmt.setString(1, User);
            stmt.setString(2, Pass);
            rs = stmt.executeQuery();

        if(rs.next()){
           c.setUser(rs.getString("user"));
           c.setPass(rs.getString("pass"));
           c.setNome(rs.getString("nome"));
           c.setCnpj(rs.getString("cnpj"));
           c.setNomefantasia(rs.getString("nomefantasia"));
           c.setRazaosocial(rs.getString("razaosocial"));
           c.setEstado(rs.getString("estado"));
           c.setTelefone(rs.getString("telefone"));
           c.setCep(rs.getString("cep"));
           c.setEndereco(rs.getString("endereco"));
           c.setNumero(rs.getString("numero"));
           c.setComplemento(rs.getString("complemento"));
           c.setBairro(rs.getString("bairro"));
           c.setCidade(rs.getString("cidade"));
           c.setDatainicio(rs.getString("datainicio"));
           c.setPrazo_licença(rs.getString("prazolicenca"));
           c.setPacote(rs.getString("pacote"));
           c.setPermissão(rs.getString("permissao"));
           c.setLogo(rs.getString("logo"));
           c.setEmail(rs.getString("email"));
           c.setRazao(rs.getString("razao"));
         flag=true;
        }
   
  } catch (Exception e) {
  }finally {
  try {
   if(con!=null){
    con.close();
   }
 } catch (Exception e2) {
 // TODO: handle exception
 }
 }
 return c;
 }
}
