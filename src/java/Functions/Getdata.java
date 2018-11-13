/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Functions;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author 4
 */
public class Getdata {

    public static ArrayList<Query_Table> getQuerys() throws SQLException {
        String id;
        String name;
        String email;
        String message;
        String status;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM queries WHERE status ='Pending'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Query_Table> eventList = new ArrayList<>();
        while (rs.next()) {
            id = rs.getString("id");
            name = rs.getString("name");
            email = rs.getString("email");
            message = rs.getString("message");
            status = rs.getString("status");
            eventList.add(new Query_Table(id, name, email, message, status));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> getRejected() throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Rejected'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> getActiveAndNonActive() throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> getPendingEvents() throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Pending'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> getAllEvent(String uname) throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent WHERE userName ='" + uname + "'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> getoneEvent(String eventid) throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent WHERE id ='" + eventid + "'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ArrayList<Event_Table> AllEvents() throws SQLException {
        String eventName;
        String eventDate;
        String eventDec;
        String eventPhoto;
        String eventTitle;
        String status;
        String id;
        String userName;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Active'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
        while (rs.next()) {
            id = rs.getString("id");
            eventName = rs.getString("eventName");
            eventDate = rs.getString("eventDate");
            eventDec = rs.getString("eventDec");
            eventPhoto = rs.getString("eventPhoto");
            eventTitle = rs.getString("eventTitle");
            status = rs.getString("status");
            userName = rs.getString("userName");
            eventList.add(new Event_Table(id, eventName, eventDate, eventDec, eventPhoto, eventTitle, status, userName));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

    public static ResultSet getActiveOne() throws SQLException {
        Connection conn = Functions.Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Active' limit 1";
        ResultSet rs = Functions.Database.MyexecuteQuery(conn, sql);
        return rs;
    }

    public static int getAllEventsCount() throws SQLException {
        Connection conn = Functions.Database.getConn();
        String sql = "SELECT * FROM postevent ";
        ResultSet rs = Functions.Database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
        rs.beforeFirst();
        Database.CloseConnection(conn);
        return count;

    }

    public static int getActiveEventsCount() throws SQLException {
        Connection conn = Functions.Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Active'";
        ResultSet rs = Functions.Database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
        rs.beforeFirst();
        Database.CloseConnection(conn);
        return count;

    }

    public static int getPendingEventsCount() throws SQLException {
        Connection conn = Functions.Database.getConn();
        String sql = "SELECT * FROM postevent WHERE status ='Pending'";
        ResultSet rs = Functions.Database.MyexecuteQuery(conn, sql);
        rs.last();
        int count = rs.getRow();
        rs.beforeFirst();
        Database.CloseConnection(conn);
        return count;

    }

    public static ArrayList<Registration_Table> getRegistrations(String eventid) throws SQLException {
        String id;
        String name;
        String mobile;
        String email;
        String eventId;
        String parent;
        Connection conn = Database.getConn();
        String sql = "SELECT * FROM registration WHERE parent ='" + eventid + "'";
        ResultSet rs = Database.MyexecuteQuery(conn, sql);
        ArrayList<Registration_Table> eventList = new ArrayList<Registration_Table>();
        while (rs.next()) {
            id = rs.getString("id");
            name = rs.getString("name");
            mobile = rs.getString("mobile");
            email = rs.getString("email");
            eventId = rs.getString("eventId");
            parent = rs.getString("parent");
            eventList.add(new Registration_Table(id, name, mobile, email, eventId, parent));
        }
        Database.CloseConnection(conn);
        return eventList;
    }

}
