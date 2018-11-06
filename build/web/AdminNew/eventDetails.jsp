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
            <div class="card-content">
                <div class="card-body">
                    <div class="card-text">
                        <dl class="row">
                            <dt class="col-sm-3"><h1 class="display-3">Name</h1></dt>
                            <dd class="col-sm-9">A description list is perfect for defining terms.</dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3"><h1 class="display-3">Title</h1></dt>
                            <dd class="col-sm-9">Vestibulum id ligula porta felis euismod semper eget lacinia odio sem nec elit.</dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3"><h1 class="display-3">Date</h1></dt>
                            <dd class="col-sm-9">Etiam porta sem malesuada magna mollis euismod.</dd>
                        </dl>
                        <dl class="row">
                            <dt class="col-sm-3 text-truncate"><h1 class="display-3">Desc..</h1></dt>
                            <dd class="col-sm-9">Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</dd>
                        </dl>
                            </dd>
                        </dl>
                    </div>
                   <div>
                   	<a href="updateEvent.jsp" class="btn btn-primary btn-min-width mr-1 mb-1" >Update Now</a>
                   	</div>
                </div>
            </div>
        </div>
    </div>
    <!--/ Description lists horizontal-->
</div>
</section>
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
<%@include file="footer.jsp" %>