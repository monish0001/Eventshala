import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.http.HttpSession;
import static jdk.nashorn.internal.runtime.Debug.id;
import static org.omg.CORBA.StringValueHelper.id;

public class Event {

    public static int Register(String userName, String email, String password) throws SQLException {
        Connection conn = database.getConn();
        password = database.md5Map(password);
        String sql = "INSERT INTO users(userName,email,password)VALUES ('" + userName + "','" + email + "','" + password + "')";
        int result = database.MyexecuteUpdate(conn, sql);
        return result;
    }

    /**
     *
     * @param userName
     * @param password
     * @return
     * @throws SQLException
     */
    public static boolean Login(String userName, String password) throws SQLException 
{
    String Username = null;
    String Password = null;
    Connection conn = database.getConn();
    password = database.md5Map(password);
    String sql = "SELECT userName, password FROM users WHERE userName='" + userName + "'" + "AND password='" + password + "'";
    ResultSet rs = database.MyexecuteQuery(conn, sql);
    if (rs.next()) {
        Username = rs.getString("userName");
        Password = rs.getString("password");
    }
    if (Username != null && Password != null && userName.equals(Username) && password.equals(Password)) {
        
        return true;
    }else
    {
            return false;
        }

    }
public static int PostEvent(String userName,String eventName, String eventDate,String eventDec,String eventPhoto,String url) throws SQLException
    {           
        Connection conn = database.getConn();
        String sql = "INSERT INTO postevent(userName,eventName,eventDate,eventDec,eventPhoto,eventTitle) VALUES ('"+userName+"','" + eventName + "','" + eventDate + "','" + eventDec + "','"+eventPhoto+"','" + url + "')";
        int result = database.MyexecuteUpdate(conn, sql);
        return result;
        
               
      
        
    }

    public static ResultSet getAllEvents() throws SQLException{
    Connection conn = Functions.database.getConn();
    String sql="SELECT * FROM postevent WHERE status ='Active'";
    ResultSet rs = Functions.database.MyexecuteQuery(conn, sql);

        return rs;
    
}
public static int RegisterforEvent(String Name, String Mobile, String Email, String Parent, String eventId) throws SQLException{
     Connection conn = database.getConn();
        String sql = "INSERT INTO registration(name,mobile,email,eventId,parent)VALUES ('" + Name + "','" + Mobile + "','" + Email + "','" + Parent + "','" + eventId + "')";
        int result = database.MyexecuteUpdate(conn, sql);
        return result;
}
public static int updateEvent(String updateName, String updateDate, String Dec, String Photo, String Title,String id){
    return 0;
} 
}
