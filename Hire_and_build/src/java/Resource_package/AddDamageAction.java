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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Integos
 */
public class AddDamageAction extends HttpServlet {

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
            out.println("<title>Servlet AddDamageAction</title>");            
            out.println("</head>");
            out.println("<body>");
           
             HttpSession mySess=request.getSession();    
            
             String damage_id=dm.GenID("adddamage_details_tb","damage_id","DMG");
             
             String s="select * from adddamage_details_tb where order_id='"+request.getParameter("order_id")+"'  ";
            ResultSet rs=dm.ForSelect(s);            
            try {
                if(rs.next())
                {
                   out.print("<script type='text/javascript'>alert('Damage details already added...'); window.location='Supplier/ViewMyReturnedOrders.jsp'; </script>");
             
            
                                        
                }
                else
                {
                    
        String sql="insert into adddamage_details_tb values('"+damage_id+"','"+request.getParameter("txtdetails")+"','"+request.getParameter("txtamount")+"','"+request.getParameter("txtldate")+"',CURDATE(),'Pending','"+request.getParameter("order_id")+"')";
        int r=dm.ForInsert(sql);
        
                
            
                         
        String sqlUpdate="update  resourceorder_tb set status='Damaged' where order_id='"+request.getParameter("order_id")+"'";
        r=dm.ForInsert(sqlUpdate);
       if(r>0)
        { 
                
            
            out.print("<script type='text/javascript'>alert('Details has been added...'); window.location='Supplier/ViewMyApprovedOrders.jsp'; </script>");
                
                
                
                
        }
        
                }
            } catch (SQLException ex) {
                Logger.getLogger(AddDamageAction.class.getName()).log(Level.SEVERE, null, ex);
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
