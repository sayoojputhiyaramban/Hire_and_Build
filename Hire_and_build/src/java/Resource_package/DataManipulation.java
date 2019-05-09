/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Resource_package;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Integos
 */
public class DataManipulation {
    Connection con;
    public DataManipulation(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                con= DriverManager.getConnection("jdbc:mysql://localhost:3307/constructionresourcescheduler_db","root","root");
            } catch (SQLException ex) {
                Logger.getLogger(DataManipulation.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataManipulation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }
    
    public int ForInsert(String sql)
    {
        int r=0;
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            r=ps.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(DataManipulation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return r;
        
        
    }
     public ResultSet ForSelect(String sql)
    {
        ResultSet rs=null;
        try {
            PreparedStatement ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            
        } catch (SQLException ex) {
            Logger.getLogger(DataManipulation.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
        
        
    }
     
      public String GenID(String tbname,String colname,String format)
	{
		DataManipulation dm= new DataManipulation();
		String id="",temp="",res="";
		try
		{
		int r=0;
		String s="select "+colname+" from "+tbname;
		ResultSet rs=dm.ForSelect(s);
		if(rs.next())
		{
			s="select max("+colname+") from "+tbname;
			rs=dm.ForSelect(s);
			if(rs.next())
			{
				id=rs.getString(1);
				temp=id.substring(3,7);
				r=Integer.parseInt(temp);
				r++;
				res=format+Integer.toString(r);
			}
		}
		else
		{
		res=format+"1000";
		}
		}
		catch(Exception ee)
		{
		System.out.println("Error in GenID");
		}
		return res;
	}	
    
 
    
    
    
}
