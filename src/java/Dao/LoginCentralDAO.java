/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.LoginCentral;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class LoginCentralDAO {
     public boolean check_user_name(LoginCentral obj_Login_Bean){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps=null;
  ResultSet rs=null;
  
  try {
   String qurey="select * from controler where username=? and password=?";
   ps=connection.prepareStatement(qurey);
   ps.setString(1, obj_Login_Bean.getUsername());
   ps.setString(2, obj_Login_Bean.getPassword());
   System.out.println(ps);
   rs=ps.executeQuery();
   if(rs.next()){
    flag=true;
   }
  } catch (Exception e) {
   // TODO: handle exception
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
