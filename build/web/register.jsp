<%@include file="header.jsp" %>

<section class="page_heading">
    <div id="particles"></div>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-12">
                <div class="align-items-center">
                    <ul class="breadcrumbs">
                        <li><span><a href="#">Home</a></span> <span class="fa fa-angle-right"></span> </li>
                        <li><span><a href="#">Events</a></span> <span class="fa fa-angle-right"></span> </li>
                         <li><span><a href="#">Event Details</a></span> <span class="fa fa-angle-right"></span> </li>
                        <li><span>Register</span></li>
                    </ul>
                    <h2>
                        Registration  Form
                    </h2>
                    <form action="Request" method="GET" >
                <div class="form-body">
            <div class="card-content">
                <div class="card-body">
                    <div class="card-text">
                        <dl class="row">
                            <dt class="col-sm-3"> Name</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="name" class="form-control" placeholder=" Name" required="" name="name">
                </div></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3">Mobile Number</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="title" class="form-control" required="" placeholder="Mobile Number" name="number">
                </div></dd>
                        </dl>
                    <input type="hidden" name="eventName" value="<% out.print(request.getParameter("id")); %>">
                    <input type="hidden" name="parent" value="<% out.print(request.getParameter("user")); %>">
                        <dl class="row">
                            <dt class="col-sm-3">Email-id</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" required="" id="descreption" class="form-control" placeholder="Email-id" name="Descreption">
                </div></dd>
                        </dl>
                       
                            </dd>
                        </dl>
                    </div>
                    <input class="btn btn-primary btn-min-width mr-1 mb-1" type="submit" name="RegisterforEvent" value="Register">
                </div>
            </div>
        </div>
        </form>
                </div>
            </div>
        </div>
    </div>
</section>

<%@include file="footer.jsp" %>