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
public class Registration_Table {
     private String id;
    private String name;
    private String mobile;
    private String email;
    private String eventId;
    private String parent;
    
    public Registration_Table(String id, String name, String mobile, String email, String eventId, String parent) {
        this.id = id;
        this.name = name;
        this.mobile = mobile;
        this.email = email;
        this.eventId = eventId;
        this.parent = parent;
    }
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getMobile() {
        return mobile;
    }

    public String getEmail() {
        return email;
    }

    public String getEventId() {
        return eventId;
    }

    public String getParent() {
        return parent;
    }

    
}
