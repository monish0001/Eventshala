<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%  String id=request.getParameter("id");
    Getdata getData = new Getdata();
    ResultSet rs= getData.getoneEvent(id);
    
    
  %>
<%@include file="header.jsp" %>
    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Event Details</h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item active">Event Details
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <div class="content-body"><!--native-font-stack -->
<div class="row match-height">
    <!-- Description lists horizontal -->
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                    </ul>
                </div>
            </div>
            <% while (rs.next()) {  %>
            <div class="card-content">
                <div class="card-body">
                    <div class="card-text">
                        <dl class="row">
                            <dt class="col-sm-3"><h1 >Name</h1></dt>
                            <dd class="col-sm-9">  <%  out.println(rs.getString("eventName")); %></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3"><h1 >Title</h1></dt>
                            <dd class="col-sm-9">  <%  out.println(rs.getString("eventTitle")); %></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3"><h1 >Date</h1></dt>
                            <dd class="col-sm-9">  <%  out.println(rs.getString("eventDate")); %></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3 text-truncate"><h1 >Desc..</h1></dt>
                            <dd class="col-sm-9">  <%  out.println(rs.getString("eventDec")); %></dd>
                        </dl>
                            </dd>
                        </dl>
                    </div>
                   <div>
                    </div>
                </div>
            </div>
        </div>
    </div>
                        <% } %>
    <!--/ Description lists horizontal-->
</div>
</section>
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
<%@include file="footer.jsp" %>