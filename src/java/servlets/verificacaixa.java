/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import Bean.Caixa;
import Bean.NCMUntrib;
import Dao.CaixaDAO;
import Dao.NCMUntribDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Marcos
 */
@WebServlet(name = "verificacaixa", urlPatterns = {"/verificacaixa"})
public class verificacaixa extends HttpServlet {

    
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //Verificar se o caixa esta aberto
       String user = request.getParameter("debusc");
            response.setContentType("text/html;charset=UTF-8");
            StringBuilder texto = new StringBuilder("\n");
            CaixaDAO cdao = new CaixaDAO();
            for(Caixa c : cdao.read()){
                if(c.getUsuarioatt().equals(user) && c.getStatus().equals("ativo")){
                texto.append("Existe");    
                }
            }
        
            response.getWriter().write(texto.toString());
        
            
    }

    

   

}
