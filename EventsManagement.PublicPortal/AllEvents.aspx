<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllEvents.aspx.cs" Inherits="EventsManagement.PublicPortal.AllEvents" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!--========== PARALLAX ==========-->
    <div class="parallax-window" style="background-image: url('img/img8.jpg'); background-attachment: fixed; background-size: cover; background-position: center;">
        <div class="parallax-content container">
            <h1 class="carousel-title">All Events</h1>
            <p>Lorem ipsum dolor sit amet consectetur adipiscing elit dolore magna aliqua <br/> enim minim estudiat veniam siad venumus dolore</p>
        </div>
    </div>

    <!--========== PAGE LAYOUT ==========-->
    <div class="content-lg container">
        <!-- Filter Buttons -->
        <div class="row margin-b-40">
            <div class="col-sm-6">
                <h2>Filter Events</h2>
                <button class="btn btn-primary" id="allEventsBtn">All Events</button>
                <button class="btn btn-success" id="enrolledEventsBtn">Enrolled Events</button>
                <button class="btn btn-warning" id="notEnrolledEventsBtn">Not Enrolled Events</button>
            </div>
        </div>

        <!-- Dynamic Events Section -->
        <div id="AllEvents" class="row margin-b-50">
            <!-- Events will be dynamically injected here -->
        </div>
    </div>

    <!-- JS File Link -->
    <script src="Pages/Events.js"></script>
</asp:Content>
