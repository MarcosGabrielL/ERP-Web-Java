/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bean.Patrimonio;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import utils.DB_Connection;

/**
 *
 * @author Marcos
 */
public class PatrimonioDAO {
    
     public static boolean save(Patrimonio obj_Patrimonio){
      
  boolean flag=false;
  DB_Connection obj_DB_Connection = new DB_Connection();
  Connection connection = obj_DB_Connection.getConnection();
  PreparedStatement ps=null;
  ResultSet rs=null;
  
  try {
   ps = connection.prepareStatement("INSERT INTO patrimonio (tipo,desca,descdetal,marca,dataob,valor,modelo,locala,responsavel,obs,cliente) VALUES(?,?,?,?,?,?,?,?,?,?,?);");
   ps.setString(1,obj_Patrimonio.getTipo());
   ps.setString(2,obj_Patrimonio.getDesc());
   ps.setString(3,obj_Patrimonio.getDesc_detal());
   ps.setString(4,obj_Patrimonio.getMarca());
   ps.setString(5,obj_Patrimonio.getData());
   ps.setString(6,obj_Patrimonio.getValor());
   ps.setString(7,obj_Patrimonio.getModelo());
   ps.setString(8,obj_Patrimonio.getLocal());
   ps.setString(9,obj_Patrimonio.getResponsavel());
   ps.setString(10,obj_Patrimonio.getObs());
   ps.setString(11,obj_Patrimonio.getCliente());
   
   ps.executeUpdate();
   System.err.println("Salvo com sucesso!");
    flag=true;
   
  } catch (Exception e) {
   System.err.println("Erro: "+e);
   Logger.getLogger(PatrimonioDAO.class.getName()).log(Level.SEVERE, null, e);
 }finally {
  try {
   //Fecha conexão
 } catch (Exception e2) {
 // TODO: handle exception
 }
 }
 return flag;
 }
    
    public static Patrimonio getPatrimonio_Ref(String Ref, String Cliente){
        
    Patrimonio p = new Patrimonio();
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.getConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;

    try {
     ps = connection.prepareStatement("SELECT * FROM patrimonio where desca like ? and cliente = ?;");
     ps.setString(1, Ref);
     ps.setString(2, Cliente);
     
     rs = ps.executeQuery();
     
     if(rs.next()){
         
               p.setTipo(rs.getString("tipo"));
               p.setDesc(rs.getString("desca"));
               p.setDesc_detal(rs.getString("descdetal"));
               p.setMarca(rs.getString("marca"));
               p.setData(rs.getString("dataob"));
               p.setValor(rs.getString("valor"));
               p.setModelo(rs.getString("modelo"));
               p.setLocal(rs.getString("locala"));
               p.setResponsavel(rs.getString("responsavel"));
               p.setObs(rs.getString("obs"));
               p.setCliente(rs.getString("cliente"));
               
      }else{
         
     }
     
    } catch (Exception e) {
        
     System.err.println("Erro: "+e);
     Logger.getLogger(PatrimonioDAO.class.getName()).log(Level.SEVERE, null, e);
     
   }finally {
    
   }
        
        return p;
    }
    
    public static ArrayList<Patrimonio> getPatrimonios_User(String Cliente){
    
    ArrayList<Patrimonio> patrimonios = new ArrayList<Patrimonio>();
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.getConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;

    try {
     ps = connection.prepareStatement("SELECT * FROM patrimonio where cliente = ?;");
     ps.setString(1, Cliente);
     
     rs = ps.executeQuery();
     
     while(rs.next()){
                Patrimonio p = new Patrimonio();
               p.setTipo(rs.getString("tipo"));
               p.setDesc(rs.getString("desca"));
               p.setDesc_detal(rs.getString("descdetal"));
               p.setMarca(rs.getString("marca"));
               p.setData(rs.getString("dataob"));
               p.setValor(rs.getString("valor"));
               p.setModelo(rs.getString("modelo"));
               p.setLocal(rs.getString("locala"));
               p.setResponsavel(rs.getString("responsavel"));
               p.setObs(rs.getString("obs"));
               p.setCliente(rs.getString("cliente"));
               
               patrimonios.add(p);  
      }
     
    } catch (Exception e) {
     System.err.println("Erro: "+e);
     Logger.getLogger(PatrimonioDAO.class.getName()).log(Level.SEVERE, null, e);
     
   }finally {
    
   }
        
        return patrimonios;
    }
    
    public static boolean update(Patrimonio p, String Usuario){
        
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.getConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    boolean flag = false;
    
    try {
        ps = connection.prepareStatement("UPDATE patrimonio SET "
                + "tipo = ?, descdetal = ?, marca = ?, dataob = ?, valor = ?, modelo = ?, "
                + "locala = ?, responsavel = ?, obs = ? "
                + "WHERE cliente LIKE ? AND desca LIKE ?");
        ps.setString(1, p.getTipo());
        ps.setString(2, p.getDesc_detal());
        ps.setString(3, p.getMarca());
        ps.setString(4, p.getData());
        ps.setString(5, p.getValor());
        ps.setString(6, p.getModelo());
        ps.setString(7, p.getLocal());
        ps.setString(8, p.getResponsavel());
        ps.setString(9, p.getObs());
        ps.setString(10, Usuario);
        ps.setString(11, p.getDesc());
        
        
        ps.executeUpdate();

        
            flag = true;
            System.out.println("Atualizado");
        
        } catch (Exception e) {
            System.err.println("Erro: "+e);
     Logger.getLogger(PatrimonioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return flag;
    }
    
    public static boolean delete(Patrimonio p, String Usuario){
        
    DB_Connection obj_DB_Connection=new DB_Connection();
    Connection connection=obj_DB_Connection.getConnection();
    PreparedStatement ps=null;
    ResultSet rs=null;
    boolean flag = false;
    
    try {
        ps = connection.prepareStatement("DELETE FROM patrimonio WHERE cliente LIKE ? AND desca LIKE ?");
        ps.setString(1, Usuario);
        ps.setString(2, p.getDesc());
        
        ps.executeUpdate();

        
            flag = true;
            System.out.println("Deletado");
        
        } catch (Exception e) {
            System.err.println("Erro: "+e);
     Logger.getLogger(PatrimonioDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return flag;
    }
    
}
