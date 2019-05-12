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
public class AddToBlackListAction extends HttpServlet {

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
            out.println("<title>Servlet AddToBlackListAction</title>");            
            out.println("</head>");
            out.println("<body>");
           
            String blist_id=dm.GenID("blacklist_tb","list_id","BLT");
            
             HttpSession mySess=request.getSession(); 
             String Supplier_id="";
            
                  
         String sqlOrder="select * from resourceorder_tb where order_id='"+request.getParameter("order_id")+"'";
                                                
       ResultSet rsOrder=dm.ForSelect(sqlOrder);
            try {
                if(rsOrder.next())
                {
                    
Supplier_id=rsOrder.getString("supplier_id");
 String sqlCustomerExists="select * from blacklist_tb where customer_id='"+rsOrder.getString("customer_id")+"' and supplier_id='"+Supplier_id+"'";
                                                
       ResultSet rsCustomerExists=dm.ForSelect(sqlCustomerExists);
                    
           if(rsCustomerExists.next())
                {
                out.print("<script type='text/javascript'>alert('User Already in BlackList '); window.location='Supplier/ViewMyApprovedOrders_ForDamage.jsp'; </script>");
                }        
           else
           {
                    
                    
                    
                    
                    
                    
                    
String sqlBlacklist="insert into blacklist_tb values('"+blist_id+"','"+request.getParameter("order_id")+"','"+rsOrder.getString("customer_id")+"',CURDATE(),'"+mySess.getAttribute("id")+"')";
int r=dm.ForInsert(sqlBlacklist);
if(r>0)
{ 
out.print("<script type='text/javascript'>alert('BlackList has been added...'); window.location='Supplier/ViewMyApprovedOrders_ForDamage.jsp'; </script>");
                    

}
           }



out.println("</body>");
out.println("</html>");
}           } catch (SQLException ex) {
                Logger.getLogger(AddToBlackListAction.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
 finally {            
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

