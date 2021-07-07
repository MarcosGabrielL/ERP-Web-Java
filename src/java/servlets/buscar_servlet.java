/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.NCMUntrib;
import Bean.Produto;
import Dao.NCMUntribDAO;
import Dao.ProdutoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "buscar_servlet", urlPatterns = {"/buscar_servlet"})
public class buscar_servlet extends HttpServlet {

    String nome;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        nome = request.getParameter("debusc");
        
        response.setContentType("text/html;charset=UTF-8");
        StringBuilder texto = new StringBuilder("\n");
        ProdutoDAO pdao = new ProdutoDAO();
        for(Produto p : pdao.Procurar(String.valueOf(nome))){
            System.out.println("DESC: "+p.getDescricao());
            String Desc = p.getDescricao();
            if(Desc.length()>11){ Desc = Desc.substring(11); }
            texto.append("<tr onclick=\"changeBgColor(this);\">\n" +
"                       <td style=\"text-align: left;\">"+Desc+"</td>\n" +
"                       <td>"+p.getCodigo()+"</td>	  \n" +
"                       <td>"+p.getUnidade()+"</td>\n" +
"                       </tr>");  
        
        
        
            response.getWriter().write(texto.toString());
        }
            
    }

    

   

}
