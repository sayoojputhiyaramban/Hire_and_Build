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
public class ReturnedResourceAction extends HttpServlet {

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
            out.println("<title>Servlet ReturnedResourceAction</title>");            
            out.println("</head>");
            out.println("<body>");
            
            HttpSession mySess=request.getSession();
            
            
             String sql="update resourceorder_tb  set status='Returned' where order_id='"+request.getParameter("order_id")+"' ";
            int r=dm.ForInsert(sql);
            
                
                
               // out.print("Order id"+request.getParameter("order_id"));
                 String sqlOrder="select * from resourceorder_tb where order_id='"+request.getParameter("order_id")+"'";
                 ResultSet rsOrder=dm.ForSelect(sqlOrder);
                    try {
                        if(rsOrder.next())
                        {
                            out.print(" id" +rsOrder.getString(1));
                            int req_qty=rsOrder.getInt("required_qty");
                            String resource_id=rsOrder.getString("resource_id");
                            int total_qty=0;
                            
                            
                            
          String sqltotal_qty="select * from add_supplier_resource_tb where resource_id='"+resource_id+"' and supplier_id='"+ mySess.getAttribute("id")+"'";
          ResultSet rstotal_qty=dm.ForSelect(sqltotal_qty);
          if(rstotal_qty.next())
          {          
          
           total_qty=rstotal_qty.getInt(2);
           
           //out.println("total_qty"+total_qty);
          
           }
          int updated_qty=total_qty+req_qty;
                            
                            
                             String sqlUpdate="update add_supplier_resource_tb set quantity='"+updated_qty+"'  where resource_id='"+resource_id+"' and supplier_id='"+mySess.getAttribute("id")+"'";
                           r=dm.ForInsert(sqlUpdate);
           if(r>0)
            {
                     out.print("<script type='text/javascript'>alert('Resource has been Returned Successfully'); window.location='Supplier/ViewMyApprovedOrders.jsp'; </script>");       
            }         
                            
                            
                        }
                    } catch (SQLException ex) {
                        
                       
                        Logger.getLogger(ApproveOrderAction.class.getName()).log(Level.SEVERE, null, ex);
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
