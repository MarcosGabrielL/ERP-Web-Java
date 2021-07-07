/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Cliente;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class ClienteDAO {
    
    public boolean save(Cliente obj_User){
      
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
    public boolean Ver_Email(String email){
  
  boolean flag=false;
  DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM cliente where email = ?");
            stmt.setString(1, email);
            rs = stmt.executeQuery();

        if(rs.next()){
            System.err.println("E-mail Existente");
             flag=true;
        }
   
  } catch (Exception e) {
      
   System.err.println("Erro: "+e);
   
 }finally {
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
    
     public boolean Ver_User(String email){
  
  boolean flag=false;
  DB_Connection obj_DB_Connection = new DB_Connection();
        Connection con = obj_DB_Connection.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try {
            stmt = con.prepareStatement("SELECT * FROM cliente where user = ?");
            stmt.setString(1, email);
            rs = stmt.executeQuery();

        if(rs.next()){
            System.err.println("Usuario Existente");
             flag=true;
        }
   
  } catch (Exception e) {
      
   System.err.println("Erro: "+e);
   
 }finally {
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
   
    
}
