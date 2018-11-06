<%@include file="header.jsp" %>
    <div class="app-content content">
      <div class="content-wrapper">
        <div class="content-wrapper-before"></div>
        <div class="content-header row">
          <div class="content-header-left col-md-4 col-12 mb-2">
            <h3 class="content-header-title">Update Event</h3>
          </div>
          <div class="content-header-right col-md-8 col-12">
            <div class="breadcrumbs-top float-md-right">
              <div class="breadcrumb-wrapper mr-1">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="index.html">Home</a>
                  </li>
                  <li class="breadcrumb-item active">Update event
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
                <h4 class="card-title" style="color: red">Required fields *</h4>
                <a class="heading-elements-toggle"><i class="la la-ellipsis-v font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="expand"><i class="ft-maximize"></i></a></li>
                    </ul>
                </div>
            </div>
              <form >
              
                
            <form method="GET" class="form" >
            	<div class="form-body">
            <div class="card-content">
                <div class="card-body">
                    <div class="card-text">
                        <dl class="row">
                            <dt class="col-sm-3">Event Name</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="name" class="form-control" placeholder="Event Name" name="name">
                </div></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3">Event Title</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="title" class="form-control" placeholder="Title" name="title">
                </div></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3">Event Date</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="Date" class="form-control" placeholder="Date" name="Date">
                </div></dd>
                        </dl>
                        
                        
                        <dl class="row">
                            <dt class="col-sm-3 text-truncate">Baner Image</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="file" id="image" class="form-control" placeholder="Image" name="image">
                </div></dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3">Event Descreption</dt>
                            <dd class="col-sm-9"><div class="form-group">
                  <input type="text" id="descreption" class="form-control" placeholder="Descreption" name="Descreption">
                </div></dd>
                        </dl>
                       
                            </dd>
                        </dl>
                    </div>
                       <input class="btn btn-primary btn-min-width mr-1 mb-1" type="submit" value="Update">
                </div>
            </div>
        </div>
        </form>
        </div>
    </div>
    <!--/ Description lists horizontal-->
</div>
</section>
        </div>
      </div>
    </div>
<%@include file="footer.jsp" %>