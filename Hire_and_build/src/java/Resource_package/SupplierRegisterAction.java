/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Resource_package;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
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
public class SupplierRegisterAction extends HttpServlet {

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
            out.println("<title>Servlet SupplierRegisterAction</title>");            
            out.println("</head>");
            out.println("<body>");
            
            
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
	     
	     String filename="",fname="",lname="",addr="",cn1="",cn2="",uname="",pswd="",cpswd="",type="",Place="",semail="",map_location="";
  while (itr.hasNext())
       {
	 
           FileItem item = (FileItem) itr.next();
          
           if (item.isFormField())  
            {
			
                        String name = item.getFieldName();
                      String value = item.getString();
                                           
                       if(name.equals("txtfname"))
                       {
                               fname=value;
                              
                       }
                     else if(name.equals("txtlname"))
                        {  
                                  lname=value;                        
                          
                       }  	
                         else if(name.equals("txtaddr"))
                        {  
                                  addr=value;                        
                          
                        }  	
                       else if(name.equals("txtcn1"))
                        {  
                                  cn1=value;                        
                          
                        }  	
                        else if(name.equals("txtcn2"))
                        {  
                                  cn2=value;                        
                          
                        }  	
                       else if(name.equals("txtsuname"))
                        {  
                                  uname=value;                        
                          
                        } 
                    else if(name.equals("txtspassword"))
                        {  
                                  pswd=value;                        
                          
                         }                         
                       else if(name.equals("txtscpassword"))
                        {  
                                  cpswd=value;                        
                          
                         }  	
                       //else if(name.equals("ddlType"))
                        //{  
                          //        type=value;                        
                          
                         //}  
                        else if(name.equals("ddlPlace"))
                        {  
                                  Place=value;                        
                          
                         }
                        else if(name.equals("txtsemail"))
                        {  
                                  semail=value;                        
                          
                         } 
                       else if(name.equals("txtmaplocation"))
                        {  
                                  map_location=value;                        
                          
                         } 
                       
                                 
	   }
            else                                    
             {
                try 
                {
	String path="D:\\IM SAY\\Projects\\Construction\\Construction_Updated\\Construction_Updated\\Construction_Resource_Scheduler\\web\\Uploads\\";
                  //String path="F:\\JISHItha\\INTEGOS\\nProjectz_Copy\\No\\ReadyMade_JSP\\Construction_Resource_Scheduler\\web\\Uploads\\";
                   String itemName = item.getName();    
                    //filename=request.getRealPath("") + "/ResouceUploads/";
                   
					
                   filename=path+itemName;
					
                   //filename=filename+itemName;
                    out.println("fname"+filename);
                   File savedFile=new File(filename);
                       
                    item.write(savedFile);    
                    out.println("successfull");
		
                   
                   String sid=dm.GenID("supplier_tb","supplier_id","SUP");
//                  out.print("y"+sid);
                String fullname=fname+" "+lname;
//                out.println("y"+fullname);
//                out.println("y"+addr);
//                out.println("y"+cn1);
//                out.println("y"+cn2);
//                out.println("y"+uname);
//                out.println("y"+cpswd);
//                out.println("y"+type);
//                out.println("y"+itemName);
                
              
		 String sql="insert into supplier_tb values('"+sid+"','"+fullname+"','"+addr+"','"+cn1+"','"+cn2+"','"+uname+"','"+cpswd+"','null','Pending','"+Place+"','"+itemName+"','"+semail+"','"+map_location+"') ";
                 int r=dm.ForInsert(sql);
                 if(r>0)
                  {
                      //if(type.equals("01"))
                      {
                         // out.print("sucess");
                           out.print("<script type='text/javascript'>alert('Supplier Account has been created .... Wait for Approval'); window.location='index.jsp'; </script>");
                      }
                   
                           
                    
                  }
               
              
            
                }
                
                catch(Exception ste)
                {
				  out.print("Exception");
                    out.println(ste);
                }
              }
       
			  }
			  
			  
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
           
             
             
               
           
            
            out.println("<h1>Servlet SupplierRegisterAction at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
        }finally {            
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
