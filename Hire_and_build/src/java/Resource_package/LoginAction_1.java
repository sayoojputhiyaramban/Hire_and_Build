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




public class LoginAction_1 extends HttpServlet {

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
            out.println("<title>Servlet LoginAction</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LoginAction at " + request.getContextPath() + "</h1>");
            
            
          
            
            HttpSession mySess=request.getSession();        
            
            
            
            
            
            
            String s="select id from admin_tb where username='"+request.getParameter("txtuname")+"' and password='"+request.getParameter("txtpassword")+"'";
            ResultSet rs=dm.ForSelect(s);
            try {
                if(rs.next())
                {
                    mySess.setAttribute("id",rs.getString(1));                    
                    response.sendRedirect("admin/addResourcemain.jsp");               
                    
                }
                else
                {
                    
               s="select supplier_id,status from supplier_tb where username='"+request.getParameter("txtuname")+"' and password='"+request.getParameter("txtpassword")+"' ";
               rs=dm.ForSelect(s);           
               if(rs.next())
               {
                    
                   if(rs.getString("status").equals("Approved"))
                   {
                      
                    mySess.setAttribute("id",rs.getString(1));
                    
                    response.sendRedirect("Supplier/View_ResourceMain.jsp");
                   }
                   else if(rs.getString("status").equals("Pending"))
                   {
                      
                        out.print("<script type='text/javascript'>alert('Admin not yet Approved'); window.location='index.jsp'; </script>");
                   }
                
                    
                }
               else
               {
                     s="select customer_id from customer_tb where username='"+request.getParameter("txtuname")+"' and password='"+request.getParameter("txtpassword")+"'";
               rs=dm.ForSelect(s);
           
                if(rs.next())
                {
                        mySess.setAttribute("id",rs.getString(1));
                    response.sendRedirect("Customer/AddRequirements.jsp");
                
                    
                }
                    
                
                else
                {
                out.print("<script type='text/javascript'>alert('Invalid Username or Password'); window.location='index.jsp'; </script>");
                }
                }
           }
            } catch (SQLException ex) {
                Logger.getLogger(LoginAction_1.class.getName()).log(Level.SEVERE, null, ex);
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
