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
import javax.servlet.http.HttpSession;

import java.io.*;
 import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.text.ParseException;
 import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Integos
 */
public class AddRequirementsAction extends HttpServlet {

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
    DataManipulation dm=new  DataManipulation();
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AddRequirementsAction</title>");            
            out.println("</head>");
            out.println("<body>");
           
            
             HttpSession mySess=request.getSession();    
             
             String from_date=request.getParameter("from_date");
              String to_date=request.getParameter("to_date");
              
             // String mydate1="19-09-2018";
              // String mydate2="23-09-2018";
	SimpleDateFormat sdf_BL_Users_DateCheck = new SimpleDateFormat("yyyy-mm-dd");//yyyy-MM-dd(incoming date and SimpleDateFormat should be same)
            Date date1=null,date2=null;
            try {
                date1 = sdf_BL_Users_DateCheck.parse(from_date); //"2017-9-29"
                  date2 = sdf_BL_Users_DateCheck.parse(to_date);//"2017-10-31"
            } catch (ParseException ex) {
                Logger.getLogger(AddRequirementsAction.class.getName()).log(Level.SEVERE, null, ex);
            }
           
			//  Date date1 = myFormat.parse(inputString1);
  if(date1.after(date2))
  {
        out.print("<script type='text/javascript'>alert('From Date Exceed TO Date... Invalid'); window.location='Customer/AddRequirements.jsp'; </script>");
  }
  else
  {
    long diff;
            diff = date2.getTime() - date1.getTime();
    //System.out.println ("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
	//out.println ("Days: " + diff / 1000 / 60 / 60 / 24);
             
             long days=diff / 1000 / 60 / 60 / 24;
             
             String requirement_id=dm.GenID("resourcerequirement_tb","requirement_id","REQ");
            String sql="insert into resourcerequirement_tb values('"+requirement_id+"','"+request.getParameter("ddlres")+"','"+request.getParameter("ddlqty")+"','"+days+"',curdate(),'"+mySess.getAttribute("id")+"','"+request.getParameter("from_date")+"','"+request.getParameter("to_date")+"') ";
            int r=dm.ForInsert(sql);
             if(r>0)
            {
                                      
                  out.print("<script type='text/javascript'>alert('Requirements has been added...Continue adding'); window.location='Customer/AddRequirements.jsp'; </script>");
                          
            }
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
