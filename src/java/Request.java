/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author 4
 */
public class Request extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Request Page</title>");
            out.println("</head>");
            out.println("<body>");
      
            if (request.getParameterMap().containsKey("Register")) {
                
                String name = request.getParameter("userName");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                int result = Event.Register(name, email, password);
                if (result > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Registered Successfully')");
                    out.println("location='http://localhost:8080/eventshala/';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Somthing Went Wrong';");
                    out.println("</script>");
                }
            }else if (request.getParameterMap().containsKey("adminLogin")) {
              
                String name = request.getParameter("userName");
                String password = request.getParameter("password");
                boolean loginResult = Event.Login(name, password);
                HttpSession session = request.getSession();
                if (loginResult == true) {
                    session.setAttribute("userName", name);
                    // out.println("<script type=\"text/javascript\">");
                    // out.println("location='http://localhost:8080/eventshala/Admin/';");
                    // out.println("</script>");
                   // RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/index.jsp");
                   // dispatcher.forward(request, response);
                   out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/Admin/index.jsp'");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Invalid Cradentials';");
                    out.println("</script>");
                }

            }else if (request.getParameterMap().containsKey("Message")) {
              
                String name = request.getParameter("name");
                String email = request.getParameter("email");
                String msg = request.getParameter("massage");
                int result = Event.Query(name,email,msg);
             
                if (result > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Your Message has been successfully send we will contact you soon thankyou';");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Somthing Went Wrong';");
                    out.println("</script>");
                }

            }else if (request.getParameterMap().containsKey("Login")) {
              
                String name = request.getParameter("userName");
                String password = request.getParameter("password");
                boolean loginResult = Event.Login(name, password);
                HttpSession session = request.getSession();
                if (loginResult == true) {
                    session.setAttribute("userName", name);
                    // out.println("<script type=\"text/javascript\">");
                    // out.println("location='http://localhost:8080/eventshala/Admin/';");
                    // out.println("</script>");
                   // RequestDispatcher dispatcher = request.getRequestDispatcher("Admin/index.jsp");
                   // dispatcher.forward(request, response);
                   out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/userPanel/index.jsp'");
                    out.println("</script>");
                } else {
                    out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Invalid Cradentials';");
                    out.println("</script>");
                }

            }else if (request.getParameterMap().containsKey("Approve")) {
              
                String id = request.getParameter("id");
                int result = Event.ApproveEvent(id);
                if (result > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Event Approved Successfully')");
                    out.println("location='http://localhost:8080/eventshala/Admin/pendingEvent.jsp';");
                    out.println("</script>");
                }
            }else if (request.getParameterMap().containsKey("Deactivate")) {
              
                String id = request.getParameter("id");
                int result = Event.DeactivateEvent(id);
                if (result > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Event Deactivate Successfully')");
                    out.println("location='http://localhost:8080/eventshala/Admin/allEvent.jsp';");
                    out.println("</script>");
                }
            }else if (request.getParameterMap().containsKey("PostEvent")) {
                HttpSession session = request.getSession();
                String eventName = request.getParameter("eventName");
                String eventDate = request.getParameter("eventDate");
                String eventDec = request.getParameter("eventDec");
                String userName = (String) session.getAttribute("userName");
                String eventPhoto = "bl.jpg"; //request.getParameter("eventPhoto");
                String title = request.getParameter("title");
              //  out.println(eventName + " " + eventDate + " " + eventDec + " " + eventPhoto + " " + url);
                int result = Event.PostEvent(userName, eventName, eventDate, eventDec, eventPhoto, title);
                if (result > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Event Posted Successfully')");
                    out.println("location='http://localhost:8080/eventshala/userPanel/';");
                    out.println("</script>");
                }

            } else if (request.getParameterMap().containsKey("Logout")) {
                HttpSession session = request.getSession();
                //  out.print(session.getAttribute("userName"));
//                session = request.getSession(false);
                session.removeAttribute("userName");
                out.println("<script type=\"text/javascript\">");
                out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Logout SuccessFully';");
                out.println("</script>");
            }else if (request.getParameterMap().containsKey("RegisterforEvent")) {
                String Name = request.getParameter("name");
                String Mobile = request.getParameter("number");
                String Email = request.getParameter("Descreption");
                String Parent = request.getParameter("parent");
                String eventId = request.getParameter("eventName");
                out.println(Name+","+Mobile+","+Email+","+Parent+","+eventId);
                int result=Event.RegisterforEvent( Name, Mobile, Email, Parent, eventId);
                if(result>0){
                 out.println("<script type=\"text/javascript\">");
                    out.println("location='http://localhost:8080/eventshala/error.jsp?msg=Registered Successfully';");
                    out.println("</script>");
                
                }
            }else if (request.getParameterMap().containsKey("updateEvent")) {
                 String id = request.getParameter("id");
                String updateName = request.getParameter("name");
                String Dated = request.getParameter("Date");
                String Dec = request.getParameter("dec");
                String Photo = "bl.jpg"; //request.getParameter("eventPhoto");
                String Title = request.getParameter("title");
              //  out.println(updateName + " " + Dated + " " + Dec + " " + Photo + " " + Title+ " " + id);
                int res = Event.updateEvent(updateName, Dated, Dec, Photo, Title,id);
                  out.println(res);
                if (res > 0) {
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Event Updated Successfully')");
                    out.println("location='http://localhost:8080/eventshala/userPanel/';");
                    out.println("</script>");
                }

            }
             

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Request.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Request.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
