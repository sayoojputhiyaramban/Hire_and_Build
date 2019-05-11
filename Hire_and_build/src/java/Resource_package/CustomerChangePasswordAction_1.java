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
public class CustomerChangePasswordAction_1 extends HttpServlet {

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
            out.println("<title>Servlet CustomerChangePasswordAction</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String password_new=request.getParameter("txtnew");
            String password_confirm=request.getParameter("txtconf");
           if(password_new.length()<8)
          {
               out.print("<script type='text/javascript'>alert('Password is weak'); window.location='Customer/ChangePassword.jsp'; </script>");
          }
          else
          {
            if(password_new.equals(password_confirm))
            {
              HttpSession mySess=request.getSession();    
                         out.println("rchdif"+mySess.getAttribute("id"));
               
                
              String sql="select * from customer_tb where customer_id='"+ mySess.getAttribute("id")+"' and password='"+request.getParameter("txtcrnt")+"'";
              ResultSet rs=dm.ForSelect(sql);
           try
           {
                if(rs.next())
                 {
                       out.println("rchdifrs");
               sql="update customer_tb set password='"+request.getParameter("txtnew")+"' where customer_id='"+ mySess.getAttribute("id")+"' ";
            int r=dm.ForInsert(sql);
            if(r>0)
            {
                  out.print("<script type='text/javascript'>alert('Password has been Updated'); window.location='Customer/ChangePassword.jsp'; </script>");
                           
            }
                     
                 }
                else
                {
                       out.print("<script type='text/javascript'>alert('Invalid Details'); window.location='Customer/ChangePassword.jsp'; </script>");
                    
                }
            
            }catch (SQLException ex) {
                Logger.getLogger(CustomerChangePasswordAction_1.class.getName()).log(Level.SEVERE, null, ex);
            }
            }
            
            else
            {
                out.print("<script type='text/javascript'>alert('Password mismatch'); window.location='Customer/ChangePassword.jsp'; </script>");
            }
            }
        }
        finally{
            
        }
            
            
            out.println("</body>");
            out.println("</html>");
        
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
