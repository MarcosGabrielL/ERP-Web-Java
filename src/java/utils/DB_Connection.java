/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utils;

/**
 *
 * @author Marcos
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DB_Connection {
    
  public static void main(String[] args) {
   DB_Connection ob_DB_Connection = new DB_Connection();
   System.out.println(ob_DB_Connection.getConnection());
  }
  
  public Connection getConnection(){
   Connection connection=null;
   System.out.println("Connection called");
   
  try {
    Class.forName("com.mysql.jdbc.Driver");
    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/data_gibgas","root", "");
  } catch (ClassNotFoundException e) {
    e.printStackTrace();
  } catch (SQLException e) {
    e.printStackTrace();
  }
    return connection;
  }
}
