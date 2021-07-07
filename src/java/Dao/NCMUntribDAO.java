/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.NCMUntrib;
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
public class NCMUntribDAO {
    
      public List<NCMUntrib> LerNCMeUnTrib(String desc){
    
         boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection con = obj_DB_Connection.getConnection();
  PreparedStatement stmt =null;
  ResultSet rs=null;
  
        List<NCMUntrib> ncmuns= new ArrayList<NCMUntrib>();
        
        try {
            stmt = con.prepareStatement("SELECT * from UNTRIBUTAVEL where descricao like ?;");
            stmt.setString(1, "%"+desc+"%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                NCMUntrib ncmun = new NCMUntrib();
                
                ncmun.setDescrição(rs.getString("descricao"));
                ncmun.setNcm(rs.getString("ncm"));
                ncmun.setUnTrib(rs.getString("untrib"));
                
                ncmuns.add(ncmun);
            }
            
            
        } catch (SQLException ex) {
            System.out.println( "Erro ao carregar Ncm: "+ex);
        }finally{
           try {
            if(con!=null){
             con.close();
            }
        } catch (Exception e2) {}        
            
        }
        
        return ncmuns;
        
    
    }
      
       public List<NCMUntrib> LerNCMeUnTrib(){
    System.out.println("---------------------------------------------------------------------------------------------------");
         boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection con = obj_DB_Connection.getConnection();
  PreparedStatement stmt =null;
  ResultSet rs=null;
  
        List<NCMUntrib> ncmuns= new ArrayList<NCMUntrib>();
        
        try {
            stmt = con.prepareStatement("select * from untributavel;");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                NCMUntrib ncmun = new NCMUntrib();
                
                ncmun.setDescrição(rs.getString("descricao"));
                ncmun.setNcm(rs.getString("ncm"));
                ncmun.setUnTrib(rs.getString("untrib"));
                System.out.println("-----------"+ncmun.getDescrição());
                ncmuns.add(ncmun);
            }
            
            
        } catch (SQLException ex) {
            System.out.println( "Erro ao carregar Ncm: "+ex);
        }finally{
           try {
            if(con!=null){
             con.close();
            }
        } catch (Exception e2) {}        
            
        }
        
        return ncmuns;
        
    
    }
    
        public List<NCMUntrib> LerUnidade(String desc){
    
         boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection con = obj_DB_Connection.getConnection();
  PreparedStatement stmt =null;
  ResultSet rs=null;
  
        List<NCMUntrib> ncmuns= new ArrayList<NCMUntrib>();
        
        try {
            stmt = con.prepareStatement("SELECT * from UNTRIBUTAVEL where ncm = ?");
            stmt.setString(1, desc);
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                NCMUntrib ncmun = new NCMUntrib();
                
                ncmun.setDescrição(rs.getString("descricao"));
                ncmun.setNcm(rs.getString("ncm"));
                ncmun.setUnTrib(rs.getString("untrib"));
                
                ncmuns.add(ncmun);
            }
            
            
        } catch (SQLException ex) {
            System.out.println( "Erro ao carregar Ncm: "+ex);
        }finally{
           try {
            if(con!=null){
             con.close();
            }
        } catch (Exception e2) {}        
            
        }
        
        return ncmuns;
        
    
    }
}
