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
import javax.swing.JOptionPane;
import model.bean.Cliente;
import model.bean.Fornecedor;
import model.bean.Funcionario;

/**
 *
 * @author Marcos
 */
public class FuncionarioDAO {
    
    public void creat(Funcionario f){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("INSERT INTO NOSSOCLIENTE.FUNCIONARIOS (nome,email,nascimento,cpf,rg,telefone1,telefone2,"
                    + "cargo,formação,atributos,cargahoraria,salario,vencimento,nis,cartão,prazo,"
                    + "bairro,cep,cidade,complemento,numero,rua,uf) VaLUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stmt.setString(1,f.getNome());
            stmt.setString(2,f.getEmail());
            stmt.setString(3,f.getNascimento());
            stmt.setString(4,f.getCpf());
            stmt.setString(5,f.getRg());
            stmt.setString(6,f.getTelefone1());
            stmt.setString(7,f.getTelefone2());
            stmt.setString(8,f.getCargo());
            stmt.setString(11,f.getCargahoraria());
            stmt.setString(9,f.getFormação());
            stmt.setString(10,f.getAtributos());
            stmt.setString(12,f.getSalario());
            stmt.setString(13,f.getVencimento());
            stmt.setString(14, f.getNIS());
            stmt.setString(15,f.getCartão());
            stmt.setString(16, f.getPrazo());
            stmt.setString(17, f.getBairro());
            stmt.setString(18, f.getCep());
            stmt.setString(19, f.getCidade());
            stmt.setString(20, f.getComplemento());
            stmt.setString(21, f.getNumero());
            stmt.setString(22, f.getRua());
            stmt.setString(23, f.getUf());
            
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Salvo com sucesso");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public List<Funcionario> read(){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Funcionario> funcionarios = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.FUNCIONARIOS");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                Funcionario funcionario = new Funcionario();
                
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setNascimento(rs.getString("nascimento"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setTelefone1(rs.getString("telefone1"));
                funcionario.setTelefone2(rs.getString("telefone2"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setFormação(rs.getString("formação"));
                funcionario.setAtributos(rs.getString("atributos"));
                funcionario.setCargahoraria(rs.getString("cargahoraria"));
                funcionario.setSalario(rs.getString("salario"));
                funcionario.setVencimento(rs.getString("vencimento"));
                funcionario.setNIS(rs.getString("nis"));
                funcionario.setCartão(rs.getString("cartão"));
                funcionario.setPrazo(rs.getString("prazo"));
                funcionario.setBairro(rs.getString("bairro"));
                funcionario.setCep(rs.getString("cep"));
                funcionario.setCidade(rs.getString("cidade"));
                funcionario.setComplemento(rs.getString("complemento"));
                funcionario.setNumero(rs.getString("numero"));
                funcionario.setUf(rs.getString("uf"));
                
                funcionarios.add(funcionario);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return funcionarios;
        
    
    }
    
     public List<Funcionario> LerFuncionario(String nome){
    
        Connection con = Connector.getConnection();
        PreparedStatement stmt = null;
        ResultSet rs = null;
        List<Funcionario> funcionarios = new ArrayList<>();
        
        try {
            stmt = con.prepareStatement("SELECT * FROM NOSSOCLIENTE.FUNCIONARIOS where nome like ?");
            stmt.setString(1, "%"+nome+"%");
            rs = stmt.executeQuery();
            
            while(rs.next()){
            
                 Funcionario funcionario = new Funcionario();
                
                funcionario.setNome(rs.getString("nome"));
                funcionario.setEmail(rs.getString("email"));
                funcionario.setNascimento(rs.getString("nascimento"));
                funcionario.setCpf(rs.getString("cpf"));
                funcionario.setRg(rs.getString("rg"));
                funcionario.setTelefone1(rs.getString("telefone1"));
                funcionario.setTelefone2(rs.getString("telefone2"));
                funcionario.setCargo(rs.getString("cargo"));
                funcionario.setFormação(rs.getString("formação"));
                funcionario.setAtributos(rs.getString("atributos"));
                funcionario.setCargahoraria(rs.getString("cargahoraria"));
                funcionario.setSalario(rs.getString("salario"));
                funcionario.setVencimento(rs.getString("vencimento"));
                funcionario.setNIS(rs.getString("nis"));
                funcionario.setCartão(rs.getString("cartão"));
                funcionario.setPrazo(rs.getString("prazo"));
                funcionario.setBairro(rs.getString("bairro"));
                funcionario.setCep(rs.getString("cep"));
                funcionario.setCidade(rs.getString("cidade"));
                funcionario.setComplemento(rs.getString("complemento"));
                funcionario.setNumero(rs.getString("numero"));
                funcionario.setUf(rs.getString("uf"));
                
                funcionarios.add(funcionario);
            }
            
            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao carregar funcionarios: "+ex);
        }finally{
            Connector.closeConnection(con, stmt, rs);        
            
        }
        
        return funcionarios;
        
    
    }
    
    public void update(Funcionario f){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("UPDATE NOSSOCLIENTE.FUNCIONARIOS SET email = ?, nascimento = ?, cpf = ?, rg = ?, "
                    + "telefone1 = ?, telefone2 = ?, cargo = ?, cargahoraria = ?, formação = ?, atributos = ?, salario = ?,"
                    + "nome = ?,vencimento = ?, nis = ?, cartão = ?, prazo = ?, bairro = ?, cep = ?, cidade = ?, "
                    + "complemento = ?, numero = ?, rua = ?, uf = ?  WHERE cpf = ?");
            
            stmt.setString(1,f.getEmail());
            stmt.setString(2,f.getNascimento());
            stmt.setString(3,f.getCpf());
            stmt.setString(4,f.getRg());
            stmt.setString(5,f.getTelefone1());
            stmt.setString(6,f.getTelefone2());
            stmt.setString(7,f.getCargo());
            stmt.setString(8,f.getCargahoraria());
            stmt.setString(9,f.getFormação());
            stmt.setString(10,f.getAtributos());
            stmt.setString(11,f.getSalario());
            stmt.setString(12,f.getNome());
            stmt.setString(13,f.getVencimento());
            stmt.setString(14,f.getNIS());
            stmt.setString(15,f.getCartão());
            stmt.setString(16,f.getPrazo());
            stmt.setString(17,f.getBairro());
            stmt.setString(18,f.getCep());
            stmt.setString(19,f.getCidade());
            stmt.setString(20,f.getComplemento());
            stmt.setString(21,f.getNumero());
            stmt.setString(22,f.getRua());
            stmt.setString(23,f.getUf());
            stmt.setString(24,f.getCpf());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Atualizado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao atalizar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    public void delete(Funcionario f){
    
    Connection con = Connector.getConnection();
    PreparedStatement stmt = null;
    
    
        try {
            stmt = con.prepareStatement("DELETE FROM NOSSOCLIENTE.FUNCIONARIOS WHERE nome = ? or cpf = ? or rg = ?");
            stmt.setString(1,f.getNome());
            stmt.setString(2,f.getCpf());
            stmt.setString(3,f.getRg());
            
            stmt.executeUpdate();
            
            JOptionPane.showMessageDialog(null, "Deletado com sucesso!");
                    } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Erro ao Deletar: "+ex);
        } finally{
        
        Connector.closeConnection(con, stmt);
        }
    
    }
    
    
    
    
    
}
