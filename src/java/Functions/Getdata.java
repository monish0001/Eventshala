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

    /**
     *
     * @return
     * @throws SQLException
     */
    public static ResultSet getPendingOne() throws SQLException{
        Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Pending' limit 1";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        return rs;
   }
     public static ResultSet getActiveOne() throws SQLException{
        Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Active' limit 1";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        return rs;
   }
      public static ResultSet getRejectedOne() throws SQLException{
        Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Rejected' limit 1";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        return rs;
   }
     public static int getAllEventsCount() throws SQLException{
         Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent ";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
         rs.beforeFirst();
        return count;
        
    }
       public static int getActiveEventsCount() throws SQLException{
         Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Active'";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
         rs.beforeFirst();
        return count;
        
    }
          public static int getPendingEventsCount() throws SQLException{
         Connection conn = Functions.database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Pending'";
        ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
         rs.beforeFirst();
        return count;
        
    }
    
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

