/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Functions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author 4
 */
public class Getdata {
    public static ResultSet getAllEvents() throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent WHERE status ='Active'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);

        return rs;
    
}
        public static ResultSet getPendingEvents() throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent WHERE status ='Pending'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);

        return rs;
    
}
            public static ResultSet getActiveAndNonActive() throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent";
    ResultSet rs = database.MyexecuteQuery(conn, sql);

        return rs;
    
}
       public static ResultSet getoneEvent(String id) throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent WHERE id ='"+id+"'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);
        return rs;
    
}
public static ResultSet getEventsbyUserName(String userName) throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent WHERE userName ='"+userName+"'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);
        return rs;
    
}
public static ResultSet getRegistrations(String id) throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM registration WHERE parent ='"+id+"'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);
        return rs;
    
}
   public static ResultSet getAllEvent(String userName) throws SQLException{
    Connection conn = database.getConn();
    String sql="SELECT * FROM postevent WHERE userName ='"+userName+"'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);
        return rs;
    
}
}

