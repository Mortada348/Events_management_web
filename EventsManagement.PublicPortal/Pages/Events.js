var UserId = "";
var AllEvents = [];
$(document).ready(function (e) {
 
    UserId = ReadCookie("Id");
    GetAllEvents();
});


 
function GetAllEvents() {
    $.ajax({
        url: APIUrl + "Events/GetAllEvents?UserId=" + UserId,
        contentType: 'application/json',
        type: "GET",
        success: function (result) {
            AllEvents = result.filter(x => x.eventStatusId != 1013 && x.eventStatusId != 1012);
            bindEventsData(AllEvents, "all");
        }
    });
}
 
function EnrollUser(EventId) {
    var EnrolledUser = {
        UserId: UserId,
        EventId: EventId
    };

    $.ajax({
        url: APIUrl + "Events/EnrollUserInEvent",
        contentType: 'application/json',
        type: "POST",
        data: JSON.stringify(EnrolledUser),
        success: function (result) {
             
            var enrolledEvent = AllEvents.find(event => event.id == EventId);
            if (enrolledEvent) {                   
                enrolledEvent.isEnrolled = true;   
                bindEventsData(AllEvents, "all");  
            }
        }
    });
} 
$('#allEventsBtn').click(function () {
    bindEventsData(AllEvents, "all");
});

$('#enrolledEventsBtn').click(function () {
    bindEventsData(AllEvents, "enrolled");
});

$('#notEnrolledEventsBtn').click(function () {
    bindEventsData(AllEvents, "notEnrolled");
});
 
function bindEventsData(EventsArray, filterType) {
    var html = '';
    var filteredEvents = EventsArray;

    if (filterType == "enrolled") {
        filteredEvents = EventsArray.filter(x => x.isEnrolled);
    } else if (filterType == "notEnrolled") {
        filteredEvents = EventsArray.filter(x => !x.isEnrolled);
    }
     
    $.each(filteredEvents, function (key, val) {
        var enrollButtonText = val.isEnrolled ? 'Enrolled' : 'Enroll';
        var enrollButtonDisabled = val.isEnrolled ? 'disabled' : '';

        html += ` <div class="col-sm-4 sm-margin-b-50">
                    <div class="card custom-card">
                        <div class="margin-b-20">
                            <div class="zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                                <img height="200" width="100%" class="img-responsive custom-image" src="${BindImageURL(val.image)}" alt="Event Image">
                            </div>
                        </div>
                        <div class="card-header">
                            <h4>${val.eventTitle}</h4>
                            <p><span class="badge bg-secondary">${val.eventCategory}</span> | <span class="badge bg-info">${val.eventStatus}</span></p>
                        </div>
                        <div class="card-body">
                            <p><strong>Description:</strong> ${val.eventDescription}</p>
                            <p><strong>Guide:</strong> ${val.guideName}</p>
                            <p><strong>From:</strong> ${new Date(val.fromDate).toLocaleDateString()} | <strong>To:</strong> ${new Date(val.toDate).toLocaleDateString()}</p>
                            <p><strong>Destination:</strong> ${val.eventDestination}</p>
                            <p><strong>Cost:</strong> $${val.eventCost}</p>
                        </div>
                        <div class="card-footer text-end">
                            <a class="btn btn-primary enroll-button" href="javascript:void(0);" onclick="EnrollUser(${val.id})" ${enrollButtonDisabled}>${enrollButtonText}</a>
                        </div>
                    </div>
                </div>`;
    });

 
    $('#AllEvents').html(html);
}
 
function BindImageURL(UserImageParam) {
    return "https://localhost:7099/Media/" + UserImageParam;
}
 