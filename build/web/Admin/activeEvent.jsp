<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Event_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%   
    Getdata getData = new Getdata();
    ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
     eventList = getData.AllEvents();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Total Events</h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Dashboard</a>
                  </li>
                  <li class="breadcrumb-item active">Events
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- ../../../theme-assets/images/carousel/22.jpg -->

<!-- Header footer section start -->
<section id="header-footer">
	<div class="row match-height">
             <%  for(int i = 0; i < eventList.size(); i++) {  %>
		<div class="col-lg-4 col-md-12">
			<div class="card">
				<div class="card-body">
					<h4 class="card-title"> <%  out.println(eventList.get(i).getEventName());%></h4>
					<h6 class="card-subtitle text-muted"> <%  out.println(eventList.get(i).getEventTitle() );%></h6>
				</div>
				<img class="" style="height:300px;" src="../assets/img/blog/<%  out.println(eventList.get(i).getEventPhoto());%>" alt="Card image cap">
				<div class="card-body">
					<p class="card-text">  <% String str=eventList.get(i).getEventDec();
                                           out.println( str.substring(0,100));
                                      
                                       %></p>
				</div>
				<div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
					<span class="float-right">
						<a href="eventDetails.jsp?id=<% out.println(eventList.get(i).getId()); %>" class="card-link">Read More
							<i class="la la-angle-right"></i>
						</a>
					</span>
				</div>
			</div>
		</div>
                <%} %>
		
	</div>
</section>
<!-- Header footer section End -->




        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <%@include file="footer.jsp" %>
