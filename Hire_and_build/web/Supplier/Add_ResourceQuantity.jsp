<%-- 
    Document   : Add_ResourceQuantity
    Created on : Apr 6, 2019, 2:48:13 PM
    Author     : Integos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Construction Resource Scheduler</title>
    </head>
    <body>
        <form method="post" action="../SupplierResourceQuantityAction">
            <div class="info-product-price">

                <span class="item_price">Add Quanitity and Rate  </span> <br><br>
										
									</div>
            <div class="snipcart-details top_brand_home_details item_add single-item hvr-outline-out">
                <fieldset>
            <table>
                <thead>
                    
                <input type="hidden" name="hdnResourceid" id="hdnResourceid" value="<%=request.getParameter("id")%>" />
                     <tr>
                    
                         <th>Add Quantity</th>
                         <td><input type="text" name="txtqty" id="txtqty" /> </td>
                    
                    
                </tr>
                <tr>
                    
                         <th>Add Rent Amount(per day)</th>
                         <td><input type="text" name="txtamt" id="txtamt" /> </td>
                    
                    
                </tr>
                    <tr>
                    
                         <th>Add Travelling Cost(per KM)</th>
                         <td><input type="text" name="txt_travelcost" id="txt_travelcost" /> </td>
                    
                    
                </tr>
                    
                </thead>
                <tbody>
                    
                      <tr>
                    
                         <th></th>
                         <td><input type="submit" name="btnAdd" value="Save" /> </td>
                    
                    
                </tr>
                
                    
                    
                </tbody>
               
                
            </table>
                </fieldset>
            </div>
            
            
            
            
            
        </form>
    </body>
</html>
