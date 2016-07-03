package id.posyandu.domain;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

public class UserIdGenerator implements IdentifierGenerator{
	
	@Override
	public Serializable generate(SessionImplementor session, Object object)
	        throws HibernateException {

	    String prefix = "USER";
	    Connection connection = session.connection();

	    try {
	        Statement statement=connection.createStatement();

	        ResultSet rs=statement.executeQuery("select SUBSTRING(MAX(user_Id),5,3) as Id from posyanduantro.user");

	        if(rs.next())
	        {	
	        	 //int id = Integer.parseInt(rs.getString("id"));
	        	 
	        	int id= rs.getInt("id")+1;
	            
	        	String generatedId = prefix + new Integer(id).toString();
	             System.out.println("Generated Id: " + generatedId);
	             return generatedId;
	        }
	    } catch (SQLException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }


	    return null;
	}
}
