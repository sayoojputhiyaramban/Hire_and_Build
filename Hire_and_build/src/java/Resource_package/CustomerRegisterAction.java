/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Resource_package;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Integos
 */
public class CustomerRegisterAction extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
     DataManipulation dm=new DataManipulation();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CustomerRegisterAction</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CustomerRegisterAction at " + request.getContextPath() + "</h1>");
            
             
              
             
            String customerid=dm.GenID("customer_tb","customer_id","CUS");
             
            String fullname=request.getParameter("txtcfname")+" "+request.getParameter("txtclname");
            
            
                String s="select id from admin_tb where username='"+request.getParameter("txtcuname")+"' ";
            ResultSet rs=dm.ForSelect(s);
            try {
                if(rs.next())
                {
                   out.print("<script type='text/javascript'>alert('Username already exists...'); window.location='index.jsp'; </script>");
                
                    
                }
                else
                {
                    
               s="select customer_id from customer_tb where username='"+request.getParameter("txtcuname")+"'";
               rs=dm.ForSelect(s);
           
                if(rs.next())
                {
                  out.print("<script type='text/javascript'>alert('Username already exists...'); window.location='index.jsp'; </script>");
                
                    
                }
                    
                else
                {
                    
                String sql="insert into customer_tb values('"+customerid+"','"+fullname+"','"+request.getParameter("txtcadddr")+"','"+request.getParameter("txtcphn")+"','"+request.getParameter("txtcemail")+"','"+request.getParameter("txtcuname")+"','"+request.getParameter("txtccpassword")+"','"+request.getParameter("ddlPlace")+"') ";
            int r=dm.ForInsert(sql);
              if(r>0)
                {
                    out.print("<script type='text/javascript'>alert('Customer Account has been created'); window.location='index.jsp'; </script>");
                    
                
                    
                }
                  
                
                
                
                
                }
           }
            } catch (SQLException ex) {
                Logger.getLogger(LoginAction.class.getName()).log(Level.SEVERE, null, ex);
            }
            
            
            
          
            
            
            
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
