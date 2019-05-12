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
public class AddDistanceAction extends HttpServlet {

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
            out.println("<title>Servlet AddDistanceAction</title>");            
            out.println("</head>");
            out.println("<body>");
           
            
            
             String s="select * from distance_tb where source='"+request.getParameter("ddlsource")+"' and destination='"+request.getParameter("ddldestination")+"' ";
            ResultSet rs=dm.ForSelect(s);            
                try {                
                    if(rs.next())
                    {
                       out.print("<script type='text/javascript'>alert('Place already exists...'); window.location='admin/AddPlace.jsp'; </script>");
                
                                            
                    }
                    else
                    {
                                 
            if(request.getParameter("ddlsource").equals(request.getParameter("ddldestination")))
            {
                 out.print("<script type='text/javascript'>alert('Invalid Details'); window.location='admin/AddDistance.jsp'; </script>");
            }
            else
            {
            
            
            
            String distance_id=dm.GenID("distance_tb","distance_id","DIS");
            String sql="insert into distance_tb values('"+distance_id+"','"+request.getParameter("ddlsource")+"','"+request.getParameter("ddldestination")+"','"+request.getParameter("txtdist")+"') ";
            int r=dm.ForInsert(sql);
             if(r>0)
            {
               
                  //distance_id=dm.GenID("distance_tb","distance_id","DIS");
          //String  sql_="insert into distance_tb values('"+distance_id+"','"+request.getParameter("ddldestination")+"','"+request.getParameter("ddlsource")+"','"+request.getParameter("txtdist")+"') ";
           //int r1  =dm.ForInsert(sql_);
            //if(r1>0)
            {
                
                  out.print("<script type='text/javascript'>alert('Distance has been added'); window.location='admin/AddDistance.jsp'; </script>");
                           
            }
            }
           }
          }
                } catch (SQLException ex) {
                    Logger.getLogger(AddDistanceAction.class.getName()).log(Level.SEVERE, null, ex);
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
