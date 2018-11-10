<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="Functions.Getdata"%>
<%  String eventid = request.getParameter("eventid");
 Getdata getData = new Getdata();
    ResultSet resultset= getData.getoneEvent(eventid);
%>
<%@include file="header.jsp" %>

<section class="page_heading">
    <div id="particles"></div>
     <% while (resultset.next()) {  %>
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
                        
                        <%  out.println(resultset.getString("eventName")); %>
                    </h2>
                    <h3>  <%  out.println(resultset.getString("eventTitle")); %></h3>
                     <h4>Event Date :   <%  out.println(resultset.getString("eventDate")); %></h4>
                      <h5>




</h5>
                    <p>
                       Event Description :  <%  out.println(resultset.getString("eventDec")); %>
                    </p>
                </div>
            </div>
        
                    <div class="col-md-4 col-12">
                        <div class="img_box_two">
                            <div class="img_container"  style="background-image: url('assets/img/bg/bl3.jpg')" >
                                	<!--<img src="assets/img/bg/<% out.println(resultset.getString("eventPhoto"));%>"> -->
                            </div>
                            <div class="content">
                                <h5 class="title">
                                    
                                </h5>
                                <p style="margin-top:80px;" class="text">
                                    If you have time to attend the event then click on register button otherwise enjoy yourself
                                </p>
                                <a style="color: white" href="register.jsp?id=<%  out.println(resultset.getString("id")); %>&user=<%  out.println(resultset.getString("userName")); %>" class="btn btn-primary header_btn" >Register Now</a>
              
                </div>
                           
            </div>
        </div>
                                 <% } %>
    </div>
</section>


<%@include file="footer.jsp" %>