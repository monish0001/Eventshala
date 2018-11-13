<%  String eventid = request.getParameter("eventid"); %>

<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Event_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%   
    Getdata getData = new Getdata();
    ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
     eventList = getData.getoneEvent(eventid);
    
%>
<%@include file="header.jsp" %>

<section class="page_heading">
    <div id="particles"></div>
  <%  for(int i = 0; i < eventList.size(); i++) {  %>
    <div class="container">
        <div class="row">
            <div class="col-7 col-md-7">
                <div class="align-items-center">
                    <ul class="breadcrumbs">
                        <li><span><a href="index.jsp">Home</a></span> <span class="fa fa-angle-right"></span> </li>
                        <li><span><a href="latestEvent.jsp">Events</a></span> <span class="fa fa-angle-right"></span> </li>
                        <li><span>eventDetails</span></li>
                    </ul>
                   
                    <h2>
                        
                        <%  out.println(eventList.get(i).getEventName());%>
                    </h2>
                    <h3>  <%  out.println(eventList.get(i).getEventTitle()); %></h3>
                     <h4>Event Date :   <%  out.println(eventList.get(i).getEventDate()); %></h4>
                      <h5>




</h5>
                    <p>
                       Event Description :  <%  out.println(eventList.get(i).getEventDec()); %>
                    </p>
                </div>
            </div>
        
                    <div class="col-md-4 col-12">
                        <div class="img_box_two">
                          
                                	<img style="height:450px;width:400px;" src="assets/img/blog/<% out.println(eventList.get(i).getEventPhoto());%>"> 
                       
                            <div class="content">
                                <h5 class="title">
                                    
                                </h5>
                                <p style="margin-top:80px;" class="text">
                                    If you have time to attend the event then click on register button otherwise enjoy yourself
                                </p>
                                <a style="color: white" href="register.jsp?id=<%out.println(eventList.get(i).getId()); %>&user=<%  out.println(eventList.get(i).getUserName()); %>" class="btn btn-primary header_btn" >Register Now</a>
              
                </div>
                           
            </div>
        </div>
                                 <% } %>
    </div>
</section>


<%@include file="footer.jsp" %>