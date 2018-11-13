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
public class Query_Table {

    private final String name;
    private final String email;
    private final String message;
    private final String status;
    private final String id;

    public Query_Table( String id,String name, String email, String message, String status) {
        this.name = name;
        this.email = email;
        this.message = message;
        this.status = status;
        this.id = id;
    }

    public String getStatus() {
        return status;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getMessage() {
        return message;
    }

}
