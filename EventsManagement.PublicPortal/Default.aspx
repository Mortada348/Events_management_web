<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EventsManagement.PublicPortal._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

            <!--========== SLIDER ==========-->
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
            <div class="container">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                </ol>
            </div>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
             
            
                <div class="item active">
                    <img class="img-responsive"   src="img/tasmania-hiking-climber-mountain-xn6d2qmtp8arxp5g.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h1 class="carousel-title">Welcome to Events Zone</h1>
                                <p>we believe in connecting people through shared passions. Whether you're an adventurer looking<br> for your next hiking challenge, an eager learner seeking educational workshops,<br> or a sports enthusiast ready for your next game, our platform is designed just for you.</p>
                            </div>
                            
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="img-responsive" src="img/img1.jpg" alt="Slider Image">
                    <div class="container">
                        <div class="carousel-centered">
                            <div class="margin-b-40">
                                <h2 class="carousel-title">Your Gateway to Exciting Events</h2>
                               
                            </div>
                           
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--========== SLIDER ==========-->

         <!--========== PAGE LAYOUT ==========-->
        <!-- Service -->
        <div class="bg-color-sky-light" data-auto-height="true">
            <div class="content-lg container">
                <div class="row row-space-1 margin-b-2">
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".3s">
                        <div class="service" data-height="height" style="border: 1px solid #ddd; padding: 10px;">
                            <div class="service-element">
                                <i class="service-icon icon-chemistry"></i>
                            </div>
                            <div class="service-info">
                                <h3>Event Creation</h3>
                                <p class="margin-b-5">Easily create and customize events with our user-friendly tools. Add details, set dates, and manage registrations all in one place.</p>
                            </div>
                            <a href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" class="content-wrapper-link"></a>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-4 sm-margin-b-2">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="service" data-height="height" style="border: 1px solid #ddd; padding: 10px;">
                            <div class="service-element">
                                <i class="service-icon icon-screen-tablet"></i>
                            </div>
                            <div class="service-info">
                                <h3>Event Discovery</h3>
                                <p class="margin-b-5">Browse and discover a wide range of events, from outdoor adventures and educational workshops to sports competitions. Find events that match your interests and location.</p>
                            </div>
                            <a href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" class="content-wrapper-link"></a>
                        </div>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="wow fadeInLeft" data-wow-duration=".3" data-wow-delay=".1s">
                           <div class="service" data-height="height" style="border: 1px solid #ddd; padding: 10px;">
                            <div class="service-element">
                                <i class="service-icon icon-badge"></i>
                            </div>
                            <div class="service-info">
                                <h3>Community Engagement</h3>
                                <p class="margin-b-5">Connect with like-minded individuals through our community features. Share experiences, exchange tips, and participate in discussions related to your favorite events.</p>
                            </div>
                            <a href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes" class="content-wrapper-link"></a>
                        </div>
                        </div>
                    </div>
                </div>
                <!--// end row -->

                
                <!--// end row -->
            </div>
        </div>
        <!-- End Service -->

        <!-- Latest Products -->
        <div class="content-lg container">
            <div class="row margin-b-40">
                <div class="col-sm-6">
                    <h2>Latest Events</h2>
                </div>
            </div>
            <!--// end row -->

            <div id="LatestEvents" class="row" >
                <!-- Latest Products -->
               
                <!-- End Latest Products -->
            </div>
            <!--// end row -->
        </div>
        <!-- End Latest Products -->

        <!-- Clients -->
      
        <!-- End Clients -->

        <!-- Testimonials -->
        <div class="content-lg container">
            <div class="row">
                <div class="col-sm-9">
                    <h2>Customer Reviews</h2>

                    <!-- Swiper Testimonials -->
                    <div class="swiper-slider swiper-testimonials">
                        <!-- Swiper Wrapper -->
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <blockquote class="blockquote">
                                    <div class="margin-b-20">
                                         "The events management website has been fantastic! I was able to easily find and enroll in a hiking event that matched my interests. The interface is user-friendly, and the event details were clear and informative. Highly recommend!"
                                    </div>
                                 
                                    <p><span class="fweight-700 color-link">Ali Tohmeh</span>, adventurer</p>
                                </blockquote>
                            </div>
                            <div class="swiper-slide">
                            <blockquote class="blockquote">
                                <div class="margin-b-20">
                                     "The events management website has been fantastic! I was able to easily find and enroll in a hiking event that matched my interests. The interface is user-friendly, and the event details were clear and informative. Highly recommend!"
                                </div>
                             
                                <p><span class="fweight-700 color-link">Mohammad Tohmeh</span>, adventurer</p>
                            </blockquote>
                        </div>
                        </div>
                        <!-- End Swiper Wrapper -->

                        <!-- Pagination -->
                        <div class="swiper-testimonials-pagination"></div>
                    </div>
                    <!-- End Swiper Testimonials -->
                </div>
            </div>
            <!--// end row -->
        </div>
        <!-- End Testimonials -->

        <!-- Pricing -->
       
        <!-- Promo Section -->
        <div class="promo-section overflow-h">
            <div class="container">
                <div class="clearfix">
                    <div class="ver-center">
                        <div class="ver-center-aligned">
                        <div class="promo-section-col">
                            <h2>Our Clients</h2>
                            <p>At EventZone, we pride ourselves on serving a diverse and esteemed clientele. Our clients span various industries, each bringing unique needs and expectations. We are committed to providing exceptional service, tailored solutions, and innovative approaches to meet their specific requirements.</p>
                            <p>Our dedication to client satisfaction is reflected in the trust and long-term relationships we build. We work closely with each client to understand their goals and deliver results that exceed their expectations. Your success is our success, and we look forward to continuing to support and grow with our valued clients.</p>
                        </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="promo-section-img-right">
                <img class="img-responsive" src="img/img1.jpg" alt="Content Image">
            </div>
        </div>
        <!-- End Promo Section -->

        <!-- Work -->
        <div class="bg-color-sky-light overflow-h">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Showcase</h2>
                        <%--<p>Lorem ipsum dolor sit amet consectetur adipiscing elit sed tempor incididunt ut laboret dolore magna aliqua enim minim veniam exercitation</p>--%>
                    </div>
                </div>
                <!--// end row -->

                <!-- Masonry Grid -->
                <div class="masonry-grid">
                    <div class="masonry-grid-sizer col-xs-6 col-sm-6 col-md-1"></div>
                    <div class="masonry-grid-item col-xs-12 col-sm-6 col-md-8">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".1s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="img/img2.png" alt="Portfolio Image">
                            </div>
                            <div class="work-content">
                                <h3 class="color-white margin-b-5">Natural Events</h3>
                                
                            </div>
                            <a class="content-wrapper-link" href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"></a>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".2s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="img/img4.png" alt="Portfolio Image">
                            </div>
                            <div class="work-content">
                                <h3 class="color-white margin-b-5">Educational Events</h3>
                               
                            </div>
                            <a class="content-wrapper-link" href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"></a>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".3s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="img/img6.jpg" alt="Portfolio Image">
                            </div>
                            <div class="work-content">
                                <h3 class="color-white margin-b-5">Corporate Events</h3>
                               
                            </div>
                            <a class="content-wrapper-link" href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"></a>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".4s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="img/img3.jpg" alt="Portfolio Image">
                            </div>
                            <div class="work-content">
                                <h3 class="color-white margin-b-5">Big Events</h3>
                                
                            </div>
                            <a class="content-wrapper-link" href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"></a>
                        </div>
                        <!-- End Work -->
                    </div>
                    <div class="masonry-grid-item col-xs-6 col-sm-6 col-md-4">
                        <!-- Work -->
                        <div class="work wow fadeInUp" data-wow-duration=".3" data-wow-delay=".5s">
                            <div class="work-overlay">
                                <img class="full-width img-responsive" src="img/img8.jpg" alt="Portfolio Image">
                            </div>
                            <div class="work-content">
                                <h3 class="color-white margin-b-5">Sport Events</h3>
                               
                            </div>
                            <a class="content-wrapper-link" href="https://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes"></a>
                        </div>
                        <!-- End Work -->
                    </div>
                </div>
                <!-- End Masonry Grid -->
            </div>
        </div>
        <!-- End Work -->
        <!--========== END PAGE LAYOUT ==========-->

    <script src="Pages/HomePage.js"></script>

</asp:Content>
