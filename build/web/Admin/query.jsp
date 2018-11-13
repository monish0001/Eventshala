<%@page import="Functions.Query_Table"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Functions.Getdata" %>

<%   
    Getdata getData = new Getdata();
    ArrayList<Query_Table> eventList = new ArrayList<Query_Table>();
     eventList = getData.getQuerys();
    
%>

<%@include file="header.jsp" %>
 <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Query Messages</h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item active">Query's
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
					<p><span class="text-bold-600">Note : need to delete the query if problem solved !</p>
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th> Name</th>
									<th>message</th>
									<th>Email</th>
                                                                        <th>Status</th>
                                                                           <th>Action</th>
								</tr>
							</thead>
							<tbody>
                                                              <%  for(int i = 0; i < eventList.size(); i++) {  %>
								<tr>
									<th scope="row"><%= i %></th>
									<td> <%  out.println(eventList.get(i).getName());%></td>
									<td> <%  out.println(eventList.get(i).getMessage());%></td>
									<td> <%  out.println(eventList.get(i).getEmail());%></td>
                                                                        <td> <%  out.println(eventList.get(i).getStatus());%></td>
                                                                          <td><a href="../Request?deleteQuery&id=<%  out.println(eventList.get(i).getId());%>">Finish</a></td>
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