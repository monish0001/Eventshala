<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%@include file="header.jsp" %>
<%   Getdata getData = new Getdata();
    ResultSet rs= getData.getAllEvents();
    
  %>

<!--cover section start -->
<section class="page_heading  parallax-window" data-parallax="scroll" data-image-src="assets/img/bg/bg8.jpg">
    <div class="overlay_dark"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-7">
                <div class="align-items-center text-center">
                    <h2 class="color-light">
                        Latest Events
                    </h2>
                    <p class="color-light">Event happing in all over India you can find here.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--cover section end-->

<!--Welcome Section -->
<section class="pt120 bg-light pb120">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="section_title text-center mb50">
                    <h6 class="small_title">Welcome to Eventshala </h6>
                    <h3 class="title">
                     
                        <span class="heading_line"></span>
                    </h3>
                    <p>
                     The world right now is advancing towards a better technology. Thus, we compete with the rapidly changing trends in the world. Hence we conclude to explore the technology even more efficiently.
                    </p>
                </div>
            </div>
        </div>
        <div class="row text-center justify-content-center">
              
            <div class="col-md-4 col-12">
                <div class=" icon_box_three text-center">
                    <i class="ion-ios-bonfire-outline color-blue"></i>
                    <div class="content">
                        <h5 class="title">
                        REGISTER 
                        </h5>
                        <p class="text">
                       
                        </p>
                  
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="icon_box_three">
                    <i class="ion-ios-compass-outline color-blue"></i>
                    <div class="content">
                        <h5 class="title">
                          ATTEND EVENT 
                        </h5>
                        <p class="text">
                       
                        </p>
                      
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="icon_box_three text-center">
                    <i class="ion-ios-chatbubbles-outline color-blue"></i>
                    <div class="content">
                        <h5 class="title">
                         GET PRIZE
                        </h5>
                        <p class="text">
                        
                        </p>
                      
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!--Welcome Section end -->

<!--video section -->
<section class="bg-fixed-img pb120 pt120" style="background-image: url('assets/img/bg/bg8.jpg');">
    <div class="overlay_dark"></div>
    <div class="container text-center">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <h2 class="color-light bold">
                    Find Your favourite <br/>
                  Event at Evenshala !
                </h2>
                <p class="color-gray">
                    We love what we do and we do it with passion. We value the experimentation, the reformation of the message, and the smart incentives. We offer a variety of services and solutions Worldwide.
                </p>
                <a href="https://www.youtube.com/watch?v=qLp4phGL41s" class="btn popup_video  btn-rounded btn-primary">
                    <i class="fa fa-play"></i>
                    Watch video
                </a>
            </div>
        </div>
    </div>
</section>
<!--video section end-->

<!--Our Services  Section -->
<section class="pt120 pb120 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50">
                    <h6 class="small_title">Help & Advice</h6>
                    <h3 class="title">
                        Letest Events
                        <span class="heading_line"></span>
                    </h3>
                    <p>We understand the importance of approaching each work integrally and believe in the power of simple and easy communication.</p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="container">
                <div class="row text-center justify-content-center">

              <%    while (rs.next()) { %>
                    <div class="col-md-4 col-12">
                        <div class="img_box_two">
                            <div class="img_container" style="background-image: url('assets/img/bg/bl3.jpg')" ></div>
                            <div class="content">
                                <h5 class="title">
                                    
                                    <% out.println(rs.getString("eventName")); %>
     

                                </h5>
                                <p class="text">
                                       <% String str=rs.getString("eventDec");
                                           out.println( str.substring(0,100));
                                      
                                       %>
                                </p>
                                <a href="eventDetails.jsp?eventid=<% out.println(rs.getString("id")); %>" class="link">Read More</a>
                            </div>
                        </div>
                    </div>
                    <% }%>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Our Services Section end -->

<!--brands-->
<div class="pt50 pb50 bg-gray">
    <div class="container-fluid">
        <div class="brand_carousel owl-carousel">
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client1.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client2.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client3.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client4.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client5.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/dark/client6.png" alt="brand">
            </div>
        </div>
    </div>
</div>
<!--brands end-->

<%@include file="footer.jsp" %>