<%-- 
    Document   : DeletePlace
    Created on : Apr 6, 2019, 4:08:51 PM
    Author     : Integos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean id="dm" class="Resource_package.DataManipulation" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String sql="delete from place_tb where Place_id='"+request.getParameter("id")+"' ";
            int r=dm.ForInsert(sql);
            if(r>0)
            {
                  out.print("<script type='text/javascript'>alert('Place has been deleted'); window.location='ViewPlace.jsp'; </script>");
                           
            }
            
            %>
    </body>
</html>
