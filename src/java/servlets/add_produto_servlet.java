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
import com.google.gson.Gson;
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
@WebServlet(name = "add_produto_servlet", urlPatterns = {"/add_produto_servlet"})
public class add_produto_servlet extends HttpServlet {

    String nome;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        nome = request.getParameter("debusc");
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        StringBuilder texto = new StringBuilder("\n");
        ProdutoDAO pdao = new ProdutoDAO();
        String produtoJsonString = null;
        for(Produto p : pdao.readdesc(String.valueOf(nome))){
            
            produtoJsonString = new Gson().toJson(p);
            System.err.println(produtoJsonString);
        }
        
            response.getWriter().write(produtoJsonString);
        
            
    }

    

   

}
