/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.NCMUntrib;
import Dao.NCMUntribDAO;
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
@WebServlet(name = "unidadeporncm", urlPatterns = {"/unidadeporncm"})
public class unidadeporncm extends HttpServlet {

    String nome;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        nome = request.getParameter("nc");
        
        if(nome.length()<3){
             response.getWriter().write("UN");
        }else{
            String te = null;
        StringBuilder texto = new StringBuilder("\n");
        NCMUntribDAO undao = new NCMUntribDAO();
        for(NCMUntrib u : undao.LerUnidade(String.valueOf(nome))){
            
           te = u.getUnTrib();
            
        }
        
        if(te==null){
           response.getWriter().write("UN"); ;
        }else{
         response.getWriter().write(te);
        }
            
        }
            
    }

    

   

}
