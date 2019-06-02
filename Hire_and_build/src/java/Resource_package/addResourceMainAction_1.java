/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Resource_package;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author Integos
 */
public class addResourceMainAction extends HttpServlet {

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
        
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addResourceMainAction</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addResourceMainAction at " + request.getContextPath() + "</h1>");
            
                boolean isMultipart = ServletFileUpload.isMultipartContent(request);
     if (!isMultipart) 
     {
	 
     } 
     else 
     {
	
       FileItemFactory factory = new DiskFileItemFactory();
       ServletFileUpload upload = new ServletFileUpload(factory);
       List items = null;
       try 
       {
               items = upload.parseRequest(request);
       }
       catch (FileUploadException e) 
       {
	   out.print("FileUploadException");
               e.printStackTrace();
       }
       Iterator itr = items.iterator();  
	     
	     String filename="",resource_name="",desc="";
  while (itr.hasNext())
       {
	 
           FileItem item = (FileItem) itr.next();
          
           if (item.isFormField())  
            {
			
                        String name = item.getFieldName();
                      String value = item.getString();
                                           
                       if(name.equals("txtres"))
                       {
                               resource_name=value;
                              
                       }
                     else if(name.equals("txtdesc"))
                        {  
                                  desc=value;                        
                          
                       }  	
                        
	   }
            else                                    
             {
                
                 String path="F:\\JISHItha\\INTEGOS\\nProjectz_Copy\\No\\ReadyMade_JSP\\Construction_Resource_Scheduler\\web\\admin\\ResouceUploads\\";
                   String itemName = item.getName();    
                    //filename=request.getRealPath("") + "/ResouceUploads/";
                   
					
                   filename=path+itemName;
                    out.println("fname"+filename);
                   File savedFile=new File(filename);
                    try {
                        item.write(savedFile);    
                    } catch (Exception ex) {
                        Logger.getLogger(addResourceMainAction.class.getName()).log(Level.SEVERE, null, ex);
                    }
                    out.println("successfull");
			
                   
                 
//           
                
              
            
                String s="select * from addresoucemain_tb where ResourceName='"+request.getParameter("txtres")+"' ";
            ResultSet rs=dm.ForSelect(s);
            try {
                try {
                    if(rs.next())
                    {
                       out.print("<script type='text/javascript'>alert('Resource already exists...'); window.location='index.jsp'; </script>");
                
                    
                        
                    }
                    else
                    {
                String resource_mainid=dm.GenID("addresoucemain_tb","Resource_id","REM");
                     String sql="insert into addresoucemain_tb values('"+resource_mainid+"','"+resource_name+"','"+desc+"','"+itemName+"') ";
            int r=dm.ForInsert(sql);
              if(r>0)
                {
                    out.print("<script type='text/javascript'>alert('Resource has been added'); window.location='admin/addResourcemain.jsp'; </script>");
                    
                
                    
                }
                    }
                } catch (SQLException ex) {
                    Logger.getLogger(addResourceMainAction.class.getName()).log(Level.SEVERE, null, ex);
                }
            
            
            
            
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }
       }
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
