<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Event_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%   
    Getdata getData = new Getdata();
    ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
     eventList = getData.getActiveAndNonActive();
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script>
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip(); 
});
</script>
<%@include file="header.jsp" %>
 <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a>
                  </li>
                  <li class="breadcrumb-item active">All Events
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Basic Tables start -->
<div class="row">
	<div class="col-12">
		<div class="card">
			<div class="card-header">
				<h4 class="card-title">Total Events</h4>
				<a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
				<div class="heading-elements">
					<ul class="list-inline mb-0">
						<li><a data-action="collapse"><i class="ft-minus"></i></a></li>
						<li><a data-action="reload"><i class="ft-rotate-cw"></i></a></li>
						<li><a data-action="expand"><i class="ft-maximize"></i></a></li>
					</ul>
				</div>
			</div>
			<div class="card-content collapse show">
				<div class="card-body">
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>eventName</th>
									<th>Event Date</th>
                                                                
									<th>status</th>
                                                                        <th>Regis.</th>
                                                                        <th>Action</th>
                                                                        <th>Details</th>
								</tr>
							</thead>
							<tbody>
                                                            <%! int j=1; %>
                                                           <%  for(int i = 0; i < eventList.size(); i++) {  %>
								<tr>
                                                                    <th scope="row"><%= j%></th>
                                                                        <td><% out.println(eventList.get(i).getEventName()); %></td>
									<td><% out.println(eventList.get(i).getEventDate()); %></td>
                                                              
									<td><% out.println(eventList.get(i).getStatus()); %></td>
                                                                  
                                                                        <td><%  String status=eventList.get(i).getStatus(); if(status.equals("Active")){ %> <a href="registrations.jsp?id=<% out.println(eventList.get(i).getId()); %>">Regis.</a> <% } %></td> 
                                                                        <td><%   if(status.equals("Active")){ %> <a data-toggle="tooltip" title="Note: if Deactivate this event you will not able to Active again !!!" href="../Request?Deactivate&id=<% out.println(eventList.get(i).getId()); %>">Deactivate</a> <% } %></td> 
                                                        <td> <a href="eventDetails.jsp?id=<% out.println(eventList.get(i).getId()); %>">More</a></td> 
								</tr>
                                                                <% j++;} %>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>

<%@include file="footer.jsp" %>
