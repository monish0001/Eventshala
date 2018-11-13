<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Event_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%! ResultSet pending = null;
    ResultSet active = null;
    ResultSet rejected = null;


%>
<% int allCount = Getdata.getAllEventsCount();
    int activeCount = Getdata.getActiveEventsCount();
    int pendingCount = Getdata.getPendingEventsCount();
    
    ArrayList<Event_Table> pending = new ArrayList<Event_Table>();
    ArrayList<Event_Table> active = new ArrayList<Event_Table>();
    ArrayList<Event_Table> rejected = new ArrayList<Event_Table>();
    pending=Getdata.getPendingEvents();
    active=Getdata.AllEvents();
    rejected=Getdata.getRejected();

%>

<%@include file="header.jsp" %>
<!-- eCommerce statistic -->
<div class="app-content content">
    <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- Chart -->
            <div class="row match-height">
                <div class="col-12">
                    <div class="">
                        <div id="gradient-line-chart1" class="height-250 GradientlineShadow1"></div>
                    </div>
                </div>
            </div>
            <!-- Chart -->
            <div class="row">
                <div class="col-xl-4 col-lg-6 col-md-12">
                    <div class="card pull-up ecom-card-1 bg-white">
                        <div class="card-content ecom-card2 height-180">
                            <h5 class="text-muted danger position-absolute p-1">Total Events <%=allCount%></h5>
                            <div>
                                <i class="ft-pie-chart danger font-large-1 float-right p-1"></i>
                            </div>
                            <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3  ">
                                <div id="progress-stats-bar-chart"></div>
                                <div id="progress-stats-line-chart" class="progress-stats-shadow"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-6 col-md-12">
                    <div class="card pull-up ecom-card-1 bg-white">
                        <div class="card-content ecom-card2 height-180">
                            <h5 class="text-muted info position-absolute p-1">Active Events <%=activeCount%></h5>
                            <div>
                                <i class="ft-activity info font-large-1 float-right p-1"></i>
                            </div>
                            <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3">
                                <div id="progress-stats-bar-chart1"></div>
                                <div id="progress-stats-line-chart1" class="progress-stats-shadow"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-12">
                    <div class="card pull-up ecom-card-1 bg-white">
                        <div class="card-content ecom-card2 height-180">
                            <h5 class="text-muted warning position-absolute p-1">Pending Events <%=pendingCount%></h5>
                            <div>
                                <i class="ft-shopping-cart warning font-large-1 float-right p-1"></i>
                            </div>
                            <div class="progress-stats-container ct-golden-section height-75 position-relative pt-3">
                                <div id="progress-stats-bar-chart2"></div>
                                <div id="progress-stats-line-chart2" class="progress-stats-shadow"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/ eCommerce statistic -->

            <!-- Statistics -->
            <div class="row match-height">
 <%  for(int i = 0; i < pending.size(); i++) {  %>
                <div class="col-xl-4 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title"> Pending  Events</h4>
                            <a class="heading-elements-toggle">
                                <i class="fa fa-ellipsis-v font-medium-3"></i>
                            </a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li>
                                        <a data-action="reload">
                                            <i class="ft-rotate-cw"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-content">
                            <div id="recent-buyers" class="media-list">
                                <a href="eventDetails.jsp?id=<%out.println(pending.get(i).getId()); %>"" class="media border-0">
                                    <div class="media-left pr-1">
                                        <span class="avatar avatar-md ">
                                            <img class="media-object rounded-circle" src="../assets/img/blog/<% out.println(pending.get(i).getEventPhoto());%>" alt="Generic placeholder image">
                                            <i></i>
                                        </span>
                                    </div>
                                    <div class="media-body w-100">
                                        <span class="list-group-item-heading">  <%  out.println(pending.get(i).getEventName());%>

                                        </span>
                                        <ul class="list-unstyled users-list m-0 float-right">
                                           <li data-toggle="tooltip" data-popup="tooltip-custom" herf="" data-original-title="More" class="avatar avatar-sm pull-up">
                                                More
                                                </li> 
                                        </ul>
                                        <p class="list-group-item-text mb-0">
                                            <span class="blue-grey lighten-2 font-small-3"> <%  out.println(pending.get(i).getEventDate()); %></span>
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
<% } %>

 <%  for(int i = 0; i < active.size(); i++) {  %>
                <div class="col-xl-4 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title"> Active  Events</h4>
                            <a class="heading-elements-toggle">
                                <i class="fa fa-ellipsis-v font-medium-3"></i>
                            </a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li>
                                        <a data-action="reload">
                                            <i class="ft-rotate-cw"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-content">
                            <div id="recent-buyers" class="media-list">
                                <a href="eventDetails.jsp?id=<%out.println(active.get(i).getId()); %>" class="media border-0">
                                    <div class="media-left pr-1">
                                        <span class="avatar avatar-md avatar-online">
                                            <img class="media-object rounded-circle" src="../assets/img/blog/<% out.println(active.get(i).getEventPhoto());%>" alt="Generic placeholder image">
                                            <i></i>
                                        </span>
                                    </div>
                                    <div class="media-body w-100">
                                        <span class="list-group-item-heading"> <%  out.println(active.get(i).getEventName()); %>

                                        </span>
                                        <ul class="list-unstyled users-list m-0 float-right">
                                           <li data-toggle="tooltip" data-popup="tooltip-custom"  data-original-title="More" class="avatar avatar-sm pull-up">
                                                More
                                                </li> 
                                        </ul>
                                        <p class="list-group-item-text mb-0">
                                            <span class="blue-grey lighten-2 font-small-3"> <%  out.println(active.get(i).getEventDate()); %></span>
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
<% } %>

 <%  for(int i = 0; i < rejected.size(); i++) {  %>
                <div class="col-xl-4 col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title"> Rejected  Events</h4>
                            <a class="heading-elements-toggle">
                                <i class="fa fa-ellipsis-v font-medium-3"></i>
                            </a>
                            <div class="heading-elements">
                                <ul class="list-inline mb-0">
                                    <li>
                                        <a data-action="reload">
                                            <i class="ft-rotate-cw"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="card-content">
                            <div id="recent-buyers" class="media-list">
                                <a href="eventDetails.jsp?id=<%out.println(rejected.get(i).getId()); %>"" class="media border-0">
                                    <div class="media-left pr-1">
                                        <span class="avatar avatar-md ">
                                            <img class="media-object rounded-circle" src="../assets/img/blog/<% out.println(rejected.get(i).getEventPhoto());%>" alt="Generic placeholder image">
                                            <i></i>
                                        </span>
                                    </div>
                                    <div class="media-body w-100">
                                        <span class="list-group-item-heading"> <%  out.println(rejected.get(i).getEventName()); %>

                                        </span>
                                        <ul class="list-unstyled users-list m-0 float-right">
                                           <li data-toggle="tooltip" data-popup="tooltip-custom"  data-original-title="More" class="avatar avatar-sm pull-up">
                                                More
                                                </li> 
                                        </ul>
                                        <p class="list-group-item-text mb-0">
                                            <span class="blue-grey lighten-2 font-small-3"> <%  out.println(rejected.get(i).getEventDate()); %></span>
                                        </p>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
<% } %>
            </div>
            <!--/ Statistics -->
        </div>
    </div>
</div>
<!-- ////////////////////////////////////////////////////////////////////////////-->


<%@include file="footer.jsp" %>