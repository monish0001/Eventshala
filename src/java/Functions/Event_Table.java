/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Functions;

/**
 *
 * @author 4
 */
public class Event_Table {

    private String eventName;
    private String eventDate;
    private String eventDec;
    private String eventPhoto;
    private String eventTitle;
    private String status;
    private String id;
    private String userName;

    /**
     *
     * @param _name
     * @param _date
     * @param _dec
     * @param _photo
     * @param title
     * @param _status
     */
    public Event_Table(String _id,String _name, String _date, String _dec, String _photo, String title, String _status,String _userName) {
        eventName = _name;
        eventDate = _date;
        eventDec = _dec;
        eventPhoto = _photo;
        eventTitle = title;
        status = _status;
        id=_id;
        userName=_userName;
    }

    public String getUserName() {
        return userName;
    }

    public String getId() {
        return id;
    }

    public String getEventName() {
        return eventName;
    }

    public String getEventDate() {
        return eventDate;
    }

    public String getEventDec() {
        return eventDec;
    }

    public String getEventPhoto() {
        return eventPhoto;
    }

    public String getEventTitle() {
        return eventTitle;
    }

    public String getStatus() {
        return status;
    }

}
