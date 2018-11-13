<%@page import="java.util.ArrayList"%>
<%@page import="Functions.Event_Table"%>
<%@page import="Functions.Getdata" %>
<%@page import="java.sql.ResultSet"%>
<%   
    Getdata getData = new Getdata();
    ArrayList<Event_Table> eventList = new ArrayList<Event_Table>();
     eventList = getData.AllEvents();
    
%>
<%@include file="header.jsp" %>
<div class="icon_menu menu_list">
    <ul class="nav ">
        <li>
            <a class="nav-link active" href="#home"><i class="ion-ios-home"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#about"><i class="ion-ios-heart"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#services"><i class="ion-logo-buffer"></i></a>
        </li>

        <li>
            <a class="nav-link" href="#work"><i class="ion-ios-images"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#price"><i class="ion-ios-pricetags"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#team"><i class="ion-ios-people"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#blog"><i class="ion-ios-paper-outline"></i></a>
        </li>
        <li>
            <a class="nav-link" href="#contact"><i class="ion-ios-chatbubbles"></i></a>
        </li>
    </ul>
</div>
<!--icon_menu end-->

<!--COVER section -->
<section id="home" class="cover parallax-window vh100" data-parallax="scroll" data-image-src="assets/img/bg/bg4.jpg">
    <div class="bg-overlay"></div>
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-md-8">
                <div class="cover_content">
                    <h1 class="cover_title  fadeInDown  wow  animated" data-wow-delay=".2s">
                     EVENTSHALA
                    </h1>
                    <p class="cover_text fadeInDown  wow  animated" data-wow-delay=".3s">
                        EVENTSHALA is an online portal for campus festivals and events happening in India.
                    </p>
                    <a href="about.jsp" class="btn btn-primary btn-rounded fadeInDown  wow  animated" data-wow-delay=".4s">more about Us</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--COVER section END -->


<!--Welcome Section -->
<section id="about" class="pt120 pb120 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="section_title text-center mb50">
                    <i class="icon ion-ios-flower-outline"></i>
                    <h3 class="title">
                        Our Story
                        <span class="heading_line"></span>
                    </h3>
                    <p>
                      Eventshala is an online event promotion website in India, based on Dwarka, Newe Delhi  to operate our business and fulfill the clients need.
                    </p>
                </div>
            </div>
        </div>
        <div>
            <div class="row text-center justify-content-center">
                <div class="col-md-4 col-12">
                    <div class="icon_box_one text-center">
                        <i class="ion-ios-rose-outline"></i>
                        <div class="content">
                            <h5 class="title">
                               Find Problems 
                            </h5>
                            <p class="text">
                               If any event posted on Eventshala and doesn't got any registration then Eventshala study the problem and try to make it suceesful  next time.
                            </p>
                          
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-12">
                    <div class="icon_box_one text-center ">
                        <i class="ion-ios-construct-outline "></i>
                        <div class="content">
                            <h5 class="title">
                               Provide Solutions
                            </h5>
                            <p class="text">
                               Eventshala try to provide the best solutions to make a event succesful .
                            </p>
                           
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-12">
                    <div class="icon_box_one text-center ">
                        <i class="ion-ios-contacts-outline"></i>
                        <div class="content">
                            <h5 class="title">
                              Be Happy
                            </h5>
                            <p class="text">
                            when event successfully completed with the help of more number of registrations Eventshala feel HAPPY. 
                            </p>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Welcome Section end -->

<!--counter section-->
<div class="bg-fixed-img pt120 pb120" style="background-image: url('assets/img/bg/bg7.jpg');">
    <div class="overlay_dark"></div>
    <div class="container">
        <div class="row text-center justify-content-center">
            <div class="col-md-3 col-12">
                <div class="counter_box_one ">
                    <i class="ion-ios-contract-outline color-light"></i>
                    <span class="counter">550</span>
                    <h5 class="color-light">
                        Total Events
                    </h5>
                </div>
            </div>
            <div class="col-md-3 col-12">
                <div class="counter_box_one ">
                    <i class="ion-ios-bowtie-outline color-light"></i>
                    <span class="counter">350</span>
                    <h5 class="color-light">
                        Today's Events
                    </h5>
                </div>
            </div>
            <div class="col-md-3 col-12">
                <div class="counter_box_one ">
                    <i class="ion-ios-stopwatch-outline color-light"></i>
                    <span class="counter">400</span>
                    <h5 class="color-light">
                        Active Events
                    </h5>
                </div>
            </div>

            <div class="col-md-3 col-12">
                <div class="counter_box_one ">
                    <i class="ion-ios-color-palette-outline color-light"></i>
                    <span class="counter">+300</span>
                    <h5 class="color-light">
                        Successfull Events
                    </h5>
                </div>
            </div>

        </div>
    </div>
</div>
<!--counter section end-->

<!--Our Services  Section -->
<section id="services" class="pt120 pb120 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50">
                    <i class="icon ion-ios-cog"></i>
                    <h3 class="title">
                        Our Services
                        <span class="heading_line"></span>
                    </h3>
                    <p>
                       The world right now is advancing towards a better technology. Thus, we compete with the rapidly changing trends in the world. Hence we conclude to explore the technology even more efficiently.
                    </p>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="container">
                <div class="row text-center justify-content-center">
                    <div class="col-md-4 col-12">
                        <div class="img_box_one ">
                            <img src="assets/img/icon/006-innovation.png" alt="icon">
                            <div class="content">
                                <h5 class="title">
                                 SignUp

                                </h5>
                                <p class="text">
                                    Register yourself and be able to post your events on EVENTSHALA.
                                </p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="img_box_one ">
                            <img src="assets/img/icon/005-increase.png" alt="icon">
                            <div class="content">
                                <h5 class="title">
                                 Post Event
                                </h5>
                                <p class="text">
                                    Post your events here and get registrations.
                                </p>
                               
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4 col-12">
                        <div class="img_box_one">
                            <img src="assets/img/icon/004-computer.png" alt="icon">
                            <div class="content">
                                <h5 class="title">
                                      Get Registration
                                </h5>
                                <p class="text">
                                    Find your favorite event , register and win. 
                                </p>
                               
                            </div>
                        </div>
                    </div>
                   
                </div>
            </div>
        </div>
    </div>
</section>
<!--Our Services Section end -->

<!--call to action section-->
<section class="bg-black pt120 pb120">
    <div id="particles"></div>
    <div class="container">
        <div class="row text-center justify-content-center">
            <div class="call_to_action_two align-items-center ">
                <div class="call_data">
                    <i class="ion-ios-contacts-outline call_icon color-light"></i>
                    <div class="call_text">
                        <h3 class="color-light">
                            Ready to post your event ? Register now!
                        </h3>
                        <p class="color-light">
                           Dont't miss your chance for free promotion register yourself with Eventshala .
                        </p>
                    </div>
                </div>
                <div class="call_btn">
                    <a href="signup.jsp" class="btn btn-primary btn-rounded">REGISTER NOW</a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--call to action end-->

<!--Our Work  Section -->
<section id="work" class="pt120 pb120 bg-gray">
    <div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-7">
                    <div class="section_title text-center mb50 ">
                        <i class="icon ion-ios-images-outline"></i>
                        <h3 class="title">
                      GALLERY IMAGES
                            <span class="heading_line"></span>
                        </h3>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <ul id="filtr-container" class="portfolio-categories">
           
                
                
            </ul>
            <div class="justify-content-center no-gutters filtr-container">
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="6 , 9 , 7">
                    <a href="assets/img/portfolio/p2.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p2.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                      
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="7 , 9 , 10">
                    <a href="assets/img/portfolio/p1.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p1.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                                                                </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="6 , 7 , 10">
                    <a href="assets/img/portfolio/p3.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p3.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                                                       </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="6 , 9 , 7">
                    <a href="assets/img/portfolio/p4.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p4.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                                                               </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="10, 7 , 6">
                    <a href="assets/img/portfolio/p5.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p5.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                                                     </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="filtr-item col-12  col-md-6 col-lg-4" data-category="7 , 9 , 10">
                    <a href="assets/img/portfolio/p6.jpg" title="agency">
                        <div class="project_box_one">
                            <img src="assets/img/portfolio/p6.jpg" alt="agency">
                            <div class="product_info">
                                <div class="product_info_text">
                                    <div class="product_info_text_inner">
                                                                           </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section>
<!--Our work Section end -->

<!--Our Price Section -->
<section id="price" class="pt120 pb120 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50">
                    <i class="icon ion-ios-cash-outline"></i>
                    <h3 class="title">
                        Our Price
                        <span class="heading_line"></span>
                    </h3>
                    <p>
                        Whether you are normal visitors or want to post your event everything is free here.
                    </p>
                </div>
            </div>
        </div>
       <h1 align="center">EVERYTHING IS FREE HERE</h1>
    </div>
</section>
<!--Our Price Section end -->

<!--Testimonial section-->
<section class="bg-img pt120 pb120" style="background-image: url('assets/img/bg/bg3.jpg')">
    <div class="overlay_dark"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-9 col-md-10 col-12">
                    <h1 align="center" style="color: white">WHAT USERS SAYS ABOUT US?</h1>
                <div class="testimonial_carousel owl-carousel">
                    <div class="item">

                        <div class="testimonial_box_two text-center">

                            <blockquote class="color-light"><p class="color-light">
                                Really this is an amazing platform for online event promotion here you can post your event and get lots of registration for your event by getting registrations you can make your event successful Thank You !!!!
                            </p></blockquote>
                            <h5  class="color-light">
                                Sahil Nishal , <span class="color-gray"> Web Developer (Student at DUCS) </span>
                            </h5>
                        </div>
                    </div>
                <!--    <div class="item">
                        <div class="testimonial_box_two text-center">
                            <blockquote  class="color-light"><p class="color-light">
                               Really this is an amazing platform for online event promotion here you can post your event and get lots of registration for your event by getting registrations you can make your event successful Thank You !!!!
                            </p></blockquote>
                            <h5  class="color-light">
                             , <span class="color-gray"> C++ Coder (Student at DDUC) </span>
                            </h5>
                        </div>
                    </div> -->
                    <div class="item">
                        <div class="testimonial_box_two  text-center">
                            <blockquote  class="color-light"><p class="color-light">
                               Really this is an amazing platform for online event promotion here you can post your event and get lots of registration for your event by getting registrations you can make your event successful Thank You !!!!
                            </p></blockquote>
                            <h5  class="color-light">
                               Ankush Khanna , <span class="color-gray"> Delhi University Topper (Student at DDUC) </span>
                            </h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Testimonial section end-->

<!--Our Team Section -->
<section id="team" class="pt120 pb120 bg-light">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50 ">
                    <i class="icon ion-ios-people-outline"></i>
                    <h3 class="title">
                        Our Team
                        <span class="heading_line"></span>
                    </h3>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-4 col-12">
                        <div class="team_box_two">
                            <div class="team_img">
                                <img src="assets/img/team/mns.jpg" alt="Jena Lambert">
                                <ul class="team_social">
                                    <li>
                                        <a href="https://github.com/dmonishdu">
                                            <i class="fa fa-github"></i>
                                        </a>
                                       
                                    </li>
                                    <li>
                                     <a href="#">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="https://www.instagram.com/m_monish786/">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li>
                                            <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                      
                                    </li>
                                </ul>
                            </div>
                            <div class="team_box_content">
                                <h5>
                               Mohd Monish
                                </h5>
                                <h6>
                                     Co-Founder
                                   
                                </h6>
                                <p>Mohd Monish, the Co-founder of Eventshala completed his degree in B.Tech and higher studies from University of Pennsylvania. He has contributed in renowned international projects. He is currently working in Eventshala and leading the technical department.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-12">
                        <div class="team_box_two active">
                            <div class="team_img">
                                <img src="assets/img/team/snk.jpg" alt="Jena Lambert">
                                <ul class="team_social">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-github"></i>
                                        </a>
                                       
                                    </li>
                                    <li>
                                     <a target="_blank" href="https://www.facebook.com/shashank.kumar.330467">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.instagram.com/kumar_sk_/?hl=en">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li>
                                            <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                      
                                    </li>
                                </ul>
                            </div>
                            <div class="team_box_content">
                                <h5>
                                     Shashank Kumar
                                </h5>
                                <h6>
                            Managing Director
                                </h6>
                                <p>Shashank Kumar, the managing director of Eventshala has achieved his degree in MBA from renowned University of California. He has worked as the management head in various national and international projects. Presently he is devoted to Eventshala and organising various events across India.</p>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-12">
                        <div class="team_box_two">
                            <div class="team_img">
                                <img style="height:400;" src="assets/img/team/ksz.jpg" alt="Jena Lambert">
                                  <ul class="team_social">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-github"></i>
                                        </a>
                                       
                                    </li>
                                    <li>
                                     <a target="_blank" href="
https://www.facebook.com/kshitiz.gupta.7121  ">
                                            <i class="fa fa-facebook"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a target="_blank" href="https://www.instagram.com/kshitiz_tango/?hl=en  ">
                                            <i class="fa fa-instagram"></i>
                                        </a>
                                    </li>
                                    <li>
                                            <a href="#">
                                            <i class="fa fa-twitter"></i>
                                        </a>
                                      
                                    </li>
                                </ul>
                            </div>
                            <div class="team_box_content">
                                <h5>
                                      kshitiz Gupta 
                              
                                </h5>
                                <h6>
                                  CEO & Co-founder 
                                </h6>
                                <p>Kshitiz Gupta, the CEO of Eventshala along with his few classmates has eastablished this platform of online event promotion. Besides his exceptional talent in coding and hard work in organising events he has a keen interest in professional gaming which has bagged him many achievements.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Our Team Section end -->

<!--brands-->
<div class="pt100 pb100 bg-black">
    <div class="container-fluid">
        <div class="brand_carousel owl-carousel">
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-1.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-2.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-3.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-4.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-5.png" alt="brand">
            </div>
            <div class="brand_item text-center">
                <img src="assets/img/brands/client-6.png" alt="brand">
            </div>
        </div>
    </div>
</div>
<!--brands end-->

<!--blog section -->
<div id="blog" class="pt120 pb120 ">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50">
                    <h3 class="title">
                        Latest Events
                        <span class="heading_line"></span>
                    </h3>
                    <p>Register in your favorite event and win it get cash prize or goodies.</p>
                </div>
            </div>
        </div>

        <div class="blog_carousel owl-carousel">
            <%  for(int i = 0; i < eventList.size(); i++) {  %>
            <div class="blog_item">
                <article  class="card_box_one" >
                    <div class="card_box_img" style="">
                          <img src="assets/img/blog/<%  out.println(eventList.get(i).getEventPhoto());%>" alt="post">
                    </div>
                    <div class="card_box_body">
                        <span><% out.println(eventList.get(i).getEventDate()); %></span>
                        <a href="eventDetails.jsp?eventid=<% out.println(eventList.get(i).getId()); %>"><h5><% out.println(eventList.get(i).getEventName()); 
                       %></h5></a>
                        <a href="eventDetails.jsp?eventid=<%  out.print(eventList.get(i).getId());  %>" class="read-more">Continue Reading </a>
                    </div>
                </article>
            </div>
            <% } %>
          
        </div>
        <div class="text-center">
            <a href="latestEvent.jsp" class="btn btn-primary btn-rounded" >More Events</a>
        </div>
    </div>
</div>
<!--blog section end  end-->

<!--contact section -->
<section id="contact" class="bg-light">
    <div class="map">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.821556806634!2d77.03580691455893!3d28.605129592072675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d053340000001%3A0x43728703a210ae01!2sDeen+Dayal+Upadhyaya+College!5e0!3m2!1sen!2sin!4v1538657692779" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
    <div class="container mt-100 mb100 p50 br4 bg-black relative">
        <div class="row justify-content-center">
            <div class="col-md-4 col-12">
                <div class="icon_box_three text-center ">
                    <i class="ion-ios-call-outline color-light"></i>
                    <div class="content">
                        <h5 class="title color-light">
                            Call Us
                        </h5>
                        <p class="text color-gray">
                            +917550687950 <br/>
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="icon_box_three text-center ">
                    <i class="ion-ios-mail-open-outline color-light"></i>
                    <div class="content">
                        <h5 class="title color-light">
                            Email Us
                        </h5>
                        <p class="text color-gray">
                            <a style="color: white" href="mailto:shashankkumar488@gmail.com">  ShashankKumar488@gmail.com</a>
                          
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-12">
                <div class="icon_box_three text-center ">
                    <i class="ion-ios-map-outline color-light"></i>
                    <div class="content">
                        <h5 class="title color-light">
                            Visit Us
                        </h5>
                        <p class="text color-gray">
                            DDUC Dwarka, New Delhi 110078
                            <br/>
                           
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container pb120">
        <div class="row justify-content-center">
            <div class="col-md-7">
                <div class="section_title text-center mb50">
                    <i class="icon ion-ios-contacts-outline"></i>
                    <h3 class="title">
                        Get In Touch
                        <span class="heading_line"></span>

                    </h3>
                    <p>Feel free to message here any time related to Eventshala<br>
                        Compliments , Complaints and Queries.
                    </p>
                </div>
                <form action="Request" method="GET">
                <div class="row">
                    <div class="col-md-6 col-12">
                        <input required="" type="text" name="name" class="form-control" aria-required="true"  placeholder="Your Name">
                    </div>
                    <div class="col-md-6 col-12">
                        <input type="email" name="email" class=" form-control" required="" aria-required="true"  placeholder="Your Email">
                    </div>
                    <div class="col-12">
                        <textarea required="" name="massage" cols="40" rows="10" class=" form-control" placeholder="Your Message"></textarea>
                    </div>
                    <div class="col-12">
                        <input type="submit" name="Message" value="Send Message"
                        class="btn btn-primary btn-rounded btn-block" >
                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</section>
<!--contact section end-->

<%@include file="footer.jsp" %>