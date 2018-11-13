<%  String eventid = request.getParameter("id"); %>
<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Registration_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%   
    Getdata getData = new Getdata();
    ArrayList<Registration_Table> eventList = new ArrayList<Registration_Table>();
     eventList = getData.getRegistrations(eventid);
    
%>


<%@include file="header.jsp" %>
 <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Total Registrations</h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.jsp">Home</a>
                  </li>
                  <li class="breadcrumb-item active">Registrations
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
				<h4 class="card-title"> </h4>
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
					<p><span class="text-bold-600"> </p>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th> Name</th>
									<th>Mobile Number</th>
									<th>Email</th>
								</tr>
							</thead>
							<tbody>
                                                              <%  for(int i = 0; i < eventList.size(); i++) {  %>
								<tr>
									<th scope="row">1</th>
                                                                        <td> <% out.println(eventList.get(i).getName());%></td>
									<td> <%   out.println(eventList.get(i).getMobile()); %></td>
									<td> <%   out.println(eventList.get(i).getEmail()); %></td>
								</tr>
                                                                <% } %>
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