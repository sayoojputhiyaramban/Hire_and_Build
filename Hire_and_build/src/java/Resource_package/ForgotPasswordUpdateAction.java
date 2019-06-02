/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Resource_package;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Integos
 */
public class ForgotPasswordUpdateAction extends HttpServlet {

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
            out.println("<title>Servlet ForgotPasswordUpdateAction</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String cpswd=request.getParameter("txtconfirmpswd");
             if(cpswd.length()>8)
                {
            String type=request.getParameter("type");
            if(type.equals("Supplier"))
            {
                out.print("yes Supp");
                
                 String sql="update supplier_tb set password='"+request.getParameter("txtconfirmpswd")+"' where supplier_id='"+request.getParameter("id")+"' ";
            int r=dm.ForInsert(sql);
            if(r>0)
            {
                
                  out.print("<script type='text/javascript'>alert('Password Updated'); window.location='ForgotPassword.jsp'; </script>");
                  
                           
            }
                
            }
            else  if(type.equals("Customer"))
            {
                  out.print("yes Cust");
                 String sql="update customer_tb set password='"+request.getParameter("txtconfirmpswd")+"' where customer_id='"+request.getParameter("id")+"' ";
            int r=dm.ForInsert(sql);
            if(r>0)
            {
                  out.print("<script type='text/javascript'>alert('Password Updated'); window.location='ForgotPassword.jsp'; </script>");
                           
            }
            }
            }
                 else
                 {
                      out.print("<script type='text/javascript'>alert('Weak Password '); window.location='ForgotPassword.jsp'; </script>");
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
