<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OurGuides.aspx.cs" Inherits="EventsManagement.PublicPortal.OurGuides" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     
<!--========== PARALLAX ==========-->
<div class="parallax-window" style="background-image: url('img/pexels-photo-3184432.jpeg'); background-attachment: fixed; background-size: cover; background-position: center;">
    <div class="parallax-content container">
        <h1 class="carousel-title">Our Guides</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipiscing elit dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
    </div>
</div>
     
    <!--========== PAGE LAYOUT ==========-->
 
        <!-- Team -->
        <div class="bg-color-sky-light">
            <div class="content-lg container">
                <div class="row margin-b-40">
                    <div class="col-sm-6">
                        <h2>Meet the Team</h2>
    <p>Our dedicated team is passionate about bringing you the best events and experiences. With a wealth of expertise and a commitment to excellence, we work hard to ensure every event is memorable and meets your expectations. Whether it's organizing, managing, or supporting, we are here to make sure everything runs smoothly.</p>
                    </div>
                </div>
                <!--// end row -->

 <div class="row">
    <!-- Event Guide -->
    <div class="col-sm-4 sm-margin-b-50">
        <div class="bg-color-white margin-b-20">
            <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                <img class="img-responsive" src="img/770x860/01.jpg" alt="Guide Image">
            </div>
        </div>
        <h4><a href="#">Alicia Keys</a> <span class="text-uppercase margin-l-20">Event Guide</span></h4>
        <p>Alicia is your guide for outdoor events, ensuring every experience is safe and fun. From hiking to exploring nature, she brings energy and expertise.</p>
        <a class="link" href="#">Read More</a>
    </div>
    <!-- End Event Guide -->

    <!-- Event Guide -->
    <div class="col-sm-4 sm-margin-b-50">
        <div class="bg-color-white margin-b-20">
            <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                <img class="img-responsive" src="img/770x860/02.jpg" alt="Guide Image">
            </div>
        </div>
        <h4><a href="#">James Millner</a> <span class="text-uppercase margin-l-20">Tech Workshop Guide</span></h4>
        <p>James leads our tech-focused events, from coding bootcamps to software workshops. His passion for technology and teaching makes him a perfect guide for learners.</p>
        <a class="link" href="#">Read More</a>
    </div>
    <!-- End Event Guide -->

    <!-- Event Guide -->
    <div class="col-sm-4 sm-margin-b-50">
        <div class="bg-color-white margin-b-20">
            <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                <img class="img-responsive" src="img/770x860/03.jpg" alt="Guide Image">
            </div>
        </div>
        <h4><a href="#">Scarlet Johansson</a> <span class="text-uppercase margin-l-20">Creative Workshop Guide</span></h4>
        <p>Scarlet hosts creative workshops, from art classes to design events. Her background in design ensures that participants leave with new skills and inspiration.</p>
        <a class="link" href="#">Read More</a>
    </div>
    <!-- End Event Guide -->
</div>

                <!--// end row -->
            </div>
        </div>
        <!-- End Team -->
        <!--========== END PAGE LAYOUT ==========-->

</asp:Content>
