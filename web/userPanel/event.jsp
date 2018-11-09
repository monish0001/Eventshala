<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%  String userName=(String)session.getAttribute("userName");
    Getdata getData = new Getdata();
    ResultSet rs= getData.getAllEvent(userName);
    
  %>
<%@include file="header.jsp" %>
<div class="app-content content">

      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Total Events <% out.println(session.getAttribute("userName")); %> </h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a>
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
       <%    while (rs.next()) { %>
		<div class="col-lg-4 col-md-12">
			<div class="card">
				<div class="card-body">
                             
					<h4 class="card-title"><% out.println(rs.getString("eventName")); %></h4>
					<h6 class="card-subtitle text-muted">             <% out.println(rs.getString("status")); %></h6>
				</div>
				<img class="" src="theme-assets/images/carousel/22.jpg" alt="Card image cap">
				<div class="card-body">
					<p class="card-text">   <% String str=rs.getString("eventDec");
                                           out.println( str.substring(0,100));
                                      
                                       %></p>
				</div>
				<div class="card-footer border-top-blue-grey border-top-lighten-5 text-muted">
                                <%  String s1=rs.getString("status"); if (s1.equals("Active")) { %>
                                            <span class="float-left"><a 
					 href="registrationDetails.jsp?id=<% out.println(rs.getString("id")); %>" class="card-link">Get Registration
							<i class="la la-angle-right"></i>
						</a></span>
                                <%   }%>
					<span class="float-right">
						<a href="eventDetails.jsp?id=<% out.println(rs.getString("id")); %>" class="card-link">Read More
							<i class="la la-angle-right"></i>
						</a>
					</span>
				</div>
			</div>
		</div>
	<% } %>
	</div>
</section>
<!-- Header footer section End -->




        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <%@include file="footer.jsp" %>