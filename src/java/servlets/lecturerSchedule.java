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
@WebServlet(name = "lecturerSchedule", urlPatterns = {"/lecturerSchedule"})
public class lecturerSchedule extends HttpServlet {

    String nome;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        nome = request.getParameter("debusc");
        
        if(nome.length()<3){
            
        }else{
        response.setContentType("text/html;charset=UTF-8");
        StringBuilder texto = new StringBuilder("\n");
        NCMUntribDAO undao = new NCMUntribDAO();
        for(NCMUntrib u : undao.LerNCMeUnTrib(String.valueOf(nome))){
            String Desc = u.getDescrição();
            if(Desc.length()>11){ Desc = Desc.substring(11); }
            texto.append("<tr>\n" +
"                       <td style=\"text-align: left;\">"+Desc+"</td>\n" +
"                       <td>"+u.getNcm()+"</td>	  \n" +
"                       <td>"+u.getUnTrib()+"</td>\n" +
"                       </tr>");
        }
        
        
            response.getWriter().write(texto.toString());
        }
            
    }

    

   

}
