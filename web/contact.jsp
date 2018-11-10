<%@include file="header.jsp" %>

<!--cover section start -->
<section class="page_heading  parallax-window" data-parallax="scroll" data-image-src="assets/img/bg/bg8.jpg">
    <div class="overlay_dark"></div>
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-7">
                <div class="align-items-center text-center">
                    <h2 class="color-light">
                        Contact Us

                    </h2>
                    <p class="color-light">Drop us a line or give us a ring. We love to hear from you and are happy to answer any questions.</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!--cover section end-->


<div class="container pt120 pb120">
    <div class="row justify-content-center">
        <div class="col-md-7">
            <div class="section_title text-center mb50">
                <h3 class="title">
                    Get In Touch
                </h3>
                <p>
               <p>Feel free to message here any time related to Eventshala<br>
                        Compliments , Complaints and Queries.
                    </p>
                </p>
            </div>
               <form action="Request" method="GET">
            <div class="row">
                <div class="col-md-6 col-12">
                    <input type="text"  name="name" class="form-control" aria-required="true"  placeholder="Your Name">
                </div>
                <div class="col-md-6 col-12">
                    <input type="email" name="email" class=" form-control" aria-required="true"  placeholder="Your Email">
                </div>
                <div class="col-12">
                    <textarea  name="massage" cols="40" rows="10" class=" form-control" placeholder="Your Message"></textarea>
                </div>
                <div class="col-12">
                    <input type="submit" name="Message" value="Send Message" class=" btn btn btn-secondary btn-rounded btn-block" >
                </div>
            </div>
                   </form>
        </div>
    </div>
</div>


<div class="map">
    <div class="map_inner">
        <div class="contact-info-card">
            <div class="contact-info-header">
                <h5>Contact Details</h5>
                <address>
                        <span class="address_line">
                            <i class=" ion-ios-pin-outline"></i>
                            <span class="address-overflow">DDUC Dwraka, New Delhi 110078</span>
                        </span>

                    <span class="address_line">
                            <i class=" ion-ios-microphone-outline"></i>
                            <span class="address-overflow">+91-9821446257</span>
                        </span>

                    <span class="address_line">
                            <i class="ion-ios-mail-open-outline"></i>
                            <a href="mailto:contact@sphinx.com">mohd.monish@avilaksh.in</a>
                        </span>
                </address>
            </div>
            <div class="contact-info-schedule">
               

               
            </div>
        </div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3502.821556806634!2d77.03580691455893!3d28.605129592072675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d053340000001%3A0x43728703a210ae01!2sDeen+Dayal+Upadhyaya+College!5e0!3m2!1sen!2sin!4v1538657692779" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
    </div>
</div>


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