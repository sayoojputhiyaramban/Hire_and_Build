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
public class SupplierResourceQuantityAction extends HttpServlet {

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
            out.println("<title>Servlet SupplierResourceQuantityAction</title>");            
            out.println("</head>");
            out.println("<body>");
            
            HttpSession mySess=request.getSession();
             String s="select sresource_id from add_supplier_resource_tb where resource_id='"+request.getParameter("hdnResourceid")+"' and supplier_id='"+mySess.getAttribute("id")+"' ";
             
            ResultSet rs=dm.ForSelect(s);
            try {
                if(rs.next())
                {
                  // out.print("<script type='text/javascript'>alert('Username already exists...'); window.location='index.jsp'; </script>");
                
                     String sql="update add_supplier_resource_tb set quantity='"+request.getParameter("txtqty")+"',amount='"+request.getParameter("txtamt")+"',travel_cost='"+request.getParameter("txt_travelcost")+"' where resource_id='"+request.getParameter("hdnResourceid")+"' and supplier_id='"+mySess.getAttribute("id")+"' ";
                     int r=dm.ForInsert(sql);
                     if(r>0)
                     {
                       out.print("<script type='text/javascript'>alert('Supplier has been Approved'); window.location='admin/ApproveSuppliers.jsp'; </script>");
                           
                      }
                }
                else
                {
                    
                     String resourceid=dm.GenID("add_supplier_resource_tb","sresource_id","SRE");
                    String sql="insert into add_supplier_resource_tb values('"+resourceid+"','"+request.getParameter("txtqty")+"','"+request.getParameter("txtamt")+"','"+request.getParameter("txt_travelcost")+"','"+request.getParameter("hdnResourceid")+"','"+mySess.getAttribute("id")+"') ";
            int r=dm.ForInsert(sql);
          
              if(r>0)
                {
                    out.print("<script type='text/javascript'>alert('Resource has been added to your list');  </script>");
                    
                out.println("<script type='text/javascript'> window.close();</script>");
                    
                }
              
                } 
                }
                 catch (SQLException ex) {
                    Logger.getLogger(SupplierResourceQuantityAction.class.getName()).log(Level.SEVERE, null, ex);
                }   
            
            
            out.println("<h1>Servlet SupplierResourceQuantityAction at " + request.getContextPath() + "</h1>");
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
