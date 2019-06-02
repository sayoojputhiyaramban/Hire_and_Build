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
public class ForgotPasswordAction extends HttpServlet {

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
            out.println("<title>Servlet ForgotPasswordAction</title>");            
            out.println("</head>");
            out.println("<body>");
           
             String s="select supplier_id from supplier_tb where username='"+request.getParameter("txtuname")+"' and emailid='"+request.getParameter("txtemail")+"' and (contactno1='"+request.getParameter("txtcontact")+"' or contactno2='"+request.getParameter("txtcontact")+"' )";
             ResultSet  rs=dm.ForSelect(s);
            try {           
                if(rs.next())
                {
                    response.sendRedirect("UpdatePassword.jsp?id="+rs.getString(1)+"&type=Supplier");
                }
                else
                {
                    s="select customer_id from customer_tb where username='"+request.getParameter("txtuname")+"' and emailid='"+request.getParameter("txtemail")+"' and contactnumber='"+request.getParameter("txtcontact")+"' ";
                   rs=dm.ForSelect(s);                     
                  if(rs.next())
                  {
                       response.sendRedirect("UpdatePassword.jsp?id="+rs.getString(1)+"&type=Customer");
                  }
                  else
                  {
                       out.print("<script type='text/javascript'>alert('Invalid Details'); window.location='ForgotPassword.jsp'; </script>");
                  }
                }
            } catch (SQLException ex) {
                Logger.getLogger(ForgotPasswordAction.class.getName()).log(Level.SEVERE, null, ex);
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
