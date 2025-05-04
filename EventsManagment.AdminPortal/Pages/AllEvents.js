
var ImageUrl = ''

$(document).ready(function (e) {
    GetAllEvents();
    GetLookUpByParentId();
    GetLookUpByParentIdd();
    FilterByStatus();
    GetAllGuides();

})


var allEvents = [];
var EditedId = 0;
function GetAllEvents() {

    $.ajax({
        url: APIUrl + "Events/GetAllEvents",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {
            html = '';
            allEvents = result;
            bindEventsData(result);
          
        }
    })
}

function GetAllGuides() {

    $.ajax({
        url: APIUrl + "Users/GetAllUsers?TypeId=3002",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {
            if (result != null) {

                var html = '';
                $.map(result, function (val, i) {

                    html += `
                        <option value = "${val.id}" > ${val.fullName}</option >
                    `;


                })
                $('#Guide').append(html);
            }
        },


    });




}





function handleEditModal(eventId) {

    var CurrentEventData = allEvents.find(x => x.id == eventId)

    EditedId = CurrentEventData.id;
    $('#EventTitle').val(CurrentEventData.eventTitle)
    $('#Description').val(CurrentEventData.eventDescription)
    $('#FromDate').val(CurrentEventData.fromDate.split('T')[0])
    $('#ToDate').val(CurrentEventData.toDate.split('T')[0])
    $('#Cost').val(CurrentEventData.eventCost)
    $('#Destination').val(CurrentEventData.eventDestination)
    $('#Status').val(CurrentEventData.eventStatusId).trigger("change")
    $('#Category').val(CurrentEventData.eventCategoryId).trigger("change")
    $('#Guide').val(CurrentEventData.guideId).trigger("change")
    $('#AddEventModal').modal("show")
    ImageUrl = CurrentEventData.image
 
}

function cleanModal() {

    $('#EventTitle').val('')
    $('#Description').val('')
    $('#FromDate').val('')
    $('#ToDate').val('')
    $('#Cost').val('')
    $('#Destination').val('')
    $('#Status').val('-1').trigger("change")
    $('#Category').val('-1').trigger("change")

}

$('#eventModalbtn').click(function (e) {
    $('#AddEventModal').modal("show")
    cleanModal()
})
   
function GetLookUpByParentId() {
    $.ajax({
        url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=1007",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {

            if (result != null) {

                var html = '';
                $.map(result, function (val, i) {

                    html += `
                        <option value = "${val.id}" > ${val.lookUpName}</option >
                    `;


                })
                $('#Category').append(html);
            }


        }
    })
}










function GetLookUpByParentIdd() {
    $.ajax({
        url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=1010",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {

            if (result != null) {

                var html = '';
                $.map(result, function (val, i) {

                    html += `
                        <option value = "${val.id}" > ${val.lookUpName}</option >
                    `;


                })
                $('#Status').append(html);
            }


        }
    })
}

function FilterByStatus() {
    $.ajax({
        url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=1010",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {

            if (result != null) {

                var html = '';
                $.map(result, function (val, i) {

                    html += `
                        <option value = "${val.id}" > ${val.lookUpName}</option >
                    `;


                })
                $('#Filter').append(html);
            }


        }
    })
}
 

$("#SaveEvent").click(function (e) {
    e.preventDefault();

    var EventId = EditedId;
    var EventName = $("#EventTitle").val();
    var EventDescription = $("#Description").val();
    var CategoryId = $("#Category").val();
    var Destination = $("#Destination").val();
    var DateFrom = $("#FromDate").val();
    var DateTo = $("#ToDate").val();
    var StatusId = $("#Status").val()
    var Cost = $("#Cost").val()
    var GuideId = $("#Guide").val()
    console.log(GuideId)
    
    var IsDeleted = false;
    var Event = new Object()
    

    if (EventId != 0) {
        Event.Id = EventId
        Event.EventName = EventName;
        Event.EventDescription = EventDescription;
        Event.CategoryId = CategoryId;
        Event.Destination = Destination;
        Event.DateFrom = DateFrom;
        Event.DateTo = DateTo;
        Event.StatusId = StatusId;
        Event.Cost = Cost;
        Event.IsDeleted = IsDeleted;
        Event.GuideId = GuideId;
        Event.Image = ImageUrl
    } else {
        Event.EventName = EventName;
        Event.EventDescription = EventDescription;
        Event.CategoryId = CategoryId;
        Event.Destination = Destination;
        Event.DateFrom = DateFrom;
        Event.DateTo = DateTo;
        Event.StatusId = StatusId;
        Event.Cost = Cost;
        Event.IsDeleted = IsDeleted;
        Event.GuideId = GuideId;
        Event.Image = ImageUrl
    }


    console.log("Event", Event.GuideId)

    console.log(Event)

    if (EventId != 0) {
        $.ajax({
            url: APIUrl + "Events/UpdateEvent",
            contentType: 'application/json',
            type: "POST",
            data: JSON.stringify(Event),
            success: function (result) {


                Swal.fire({
                    type: 'success',
                    title: "Success",
                    icon: "success",
                    allowEscapeKey: false,
                    allowOutsideClick: false,
                    text: "Event updated successfully",
                    confirmButtonText: "Ok",
                    customClass: {
                        confirmButton: "btn font-weight-bold btn-light-primary"
                    }
                }).then(() => {
                    GetAllEvents();   
                    EventId = 0;
                    $('#AddEventModal').modal("hide");  
                });
                $.ajax({
                    url: APIUrl + "GuideEvent/CreateGuideEvent",
                    contentType: 'application/json',
                    type: "POST",
                    data: JSON.stringify(GuideEvent),
                    success: function (result) {

                        console.log("guide saved successfully")

                    }
                })

            }
        })
    } else {
        $.ajax({
            url: APIUrl + "Events/CreateEvent",
            contentType: 'application/json',
            type: "POST",
            data: JSON.stringify(Event),
            success: function (result) {


                Swal.fire({
                    type: 'success',
                    title: "Success",
                    icon: "success",
                    allowEscapeKey: false,
                    allowOutsideClick: false,
                    text: "Event saved successfully",
                    confirmButtonText: "Ok",
                    customClass: {
                        confirmButton: "btn font-weight-bold btn-light-primary"
                    }
                }).then(() => {
                    GetAllEvents();   
                    $('#AddEventModal').modal("hide");  
                });
            }
        })


    





    }
   
 
})



function handleDelete(EventId) {

    var CurrentEventData = allEvents.find(x => x.id == EventId)

    if (EventId != 0) {
        $.ajax({
            url: APIUrl + "Events/DeleteEvent?EventId=" + EventId,
            contentType: 'application/json',
            type: "POST",
            data: JSON.stringify(Event),
            success: function (result) {


                Swal.fire({
                    type: 'success',
                    title: "Success",
                    icon: "success",
                    allowEscapeKey: false,
                    allowOutsideClick: false,
                    text: "Event Deleted successfully",
                    confirmButtonText: "Ok",
                    customClass: {
                        confirmButton: "btn font-weight-bold btn-light-primary"
                    }
                }).then(() => {
                    GetAllEvents();
                });
            }
            })
    }
}

function bindEventsData(EventsArray) {

    html = '';
    $.each(EventsArray, function (key, val) {
        html += `                    <!--begin::Col-->
                    <div class="col-md-6 col-xl-4">
                      <!--begin::Card-->
                      <a href="#" class="card border-hover-primary">
                        <!--begin::Card header-->
                        <div class="card-header border-0 pt-9">
                          <!--begin::Card Title-->
                          <div class="card-title m-0">
                           <div class="d-flex justify-content-start align-items-center gap-2">
                            <span onclick="handleEditModal(${val.id})">     <i class="bi bi-pencil-square fs-3"></i></span>
                            <span onclick="handleDelete(${val.id})">     <i class="bi bi-trash fs-3"></i></span>
                            </div>
                          </div>
                          <!--end::Car Title-->
                          <!--begin::Card toolbar-->
                          <div class="card-toolbar">
                            <span
                              class="badge badge-light-primary fw-bold me-auto px-4 py-3"
                              >${val.eventStatus}</span
                            >
                          </div>
                          <!--end::Card toolbar-->
                        </div>
                        <!--end:: Card header-->
                        <!--begin:: Card body-->
                        <div class="card-body p-9">
                          <!--begin::Name-->
                          <div class="fs-3 fw-bold text-dark">${val.eventTitle}</div>
                          <!--end::Name-->
                          <!--begin::Description-->
                          <p class="text-gray-400 fw-semibold fs-5 mt-1 mb-7">
                            ${val.eventDescription}
                          </p>
                          <!--end::Description-->
                          <!--begin::Info-->
                          <div class="d-flex flex-wrap mb-5">
                            <!--begin::Due-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-7 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                                From Date
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                               ${val.fromDate.split("T")[0]}
                              </div>
                              
                            </div>
                            <!--end::Due-->
                            <!--begin::Budget-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                                To Date
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                                 ${val.toDate.split("T")[0]}
                              </div>
                              
                            </div>
                            <!--end::Budget-->
                          </div>
                          <!--end::Info-->


                                                    <!--begin::Info-->
                          <div class="d-flex flex-wrap mb-5">
                            <!--begin::Due-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-7 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                                Cost
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                              ${val.eventCost}
                              </div>
                              
                            </div>
                            <!--end::Due-->
                            <!--begin::Budget-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                                Number of Users Enrolled
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                              ${val.numberOfEnrolledUsers}
                              </div>
                              
                            </div>
                            <!--end::Budget-->
                          </div>
                          <!--end::Info-->
                           <!--begin::Info-->
                          <div class="d-flex flex-wrap mb-5">
                            <!--begin::Due-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-7 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                               Category
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                               ${val.eventCategory}
                              </div>
                              
                            </div>
                            <!--end::Due-->
                            <!--begin::Budget-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                               Destination
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                                 ${val.eventDestination}
                              </div>
                              
                            </div>
                            <!--end::Budget-->
                          </div>
                          <!--end::Info-->
  <!--begin::Info-->
                          <div class="d-flex flex-wrap mb-5">
                            <!--begin::Due-->
                            <div
                              class="border border-gray-300 border-dashed rounded min-w-125px py-3 px-4 me-7 mb-3"
                            >
                            <div class="fw-semibold text-gray-400">
                             Guide
                              </div>
                              <div class="fs-6 text-gray-800 fw-bold">
                               ${val.guideName}
                              </div>
                              
                            </div>
                            <!--end::Due-->
                            
                          </div>
                          <!--end::Info-->
                           
                           
                        </div>
                        <!--end:: Card body-->
                      </a>
                      <!--end::Card-->
                    </div>
                    <!--end::Col-->`
    })
    $('#AllEvents').html(html)
}






function SelectStatus() {
    var status = $("#Filter").val()
    filteredarray = allEvents
    if (status == "-1") {
        bindEventsData(filteredarray)
    } else {
        filteredarray = allEvents.filter(x => x.eventStatusId == status);
        bindEventsData(filteredarray);
    }
   
}

$("#discard").click(function (e) {
    $('#AddEventModal').modal("hide");
})

$("#close").click(function (e) {
    $('#AddEventModal').modal("hide");
})


function UploadMediaFile() {
    var fileInput = document.getElementById('modalImage');
    var file = fileInput.files[0];
    var formData = new FormData();
    formData.append('file', file);
    $.ajax({
        url: APIUrl + "Events/UploadUserImage",
        type: "POST",
        async: true,
        contentType: false,
        processData: false,
        data: formData,
        success: function (result) {
            ImageUrl = result;
        },
    });
}

function BindImageURL(UserIamegUrlParam) {
    return ("https://localhost:7099/Media" + UserIamegUrlParam);
}




function ViewAttachment(MediaFile) {

    if (MediaFile != "") {
        window.open(BindImageURL("/" + MediaFile), "_blank")
    } else {
        Swal.fire({
            icon: "error",
            type: 'error',
            title: "Error",
            allowEscapeKey: false,
            allowOutsideClick: false,
            text: "No image attached",
            confirmButtonText: "Ok",
            customClass: {
                confirmButton: "btn font-weight-bold btn-light-primary"
            }
        })
        return
    }
}


$('#viewImage').click(function (e) {
    ViewAttachment(ImageUrl)
    e.preventDefault();
})


