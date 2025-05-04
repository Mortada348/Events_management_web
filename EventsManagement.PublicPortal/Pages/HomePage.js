$(document).ready(function (e) {
	
	LatestEvents()
})



function LatestEvents() {
	$.ajax({
		url: APIUrl + "Events/GetLatestEvents",
		contentType: 'application/json',
		type: "GET",

		success: function (result) {
			html = ``
			console.log(result)
			$.each(result, function (key, val) {

				html += `<div class="col-sm-4 sm-margin-b-50">
                    <div class="margin-b-20">
                        <div class="wow zoomIn" data-wow-duration=".3" data-wow-delay=".1s">
                            <img class="img-responsive" src="${BindImageURL(val.image)}" alt="Latest Products Image">
                        </div>
                    </div>
                    <h4>${val.eventTitle} <span class="text-uppercase margin-l-20">Management</span></h4>
                    <p>${val.eventDescription}</p>

                </div>`

			})

			$("#LatestEvents").html(html)

		}
	})
}

function BindImageURL(UserIamegUrlParam) {
	return ("https://localhost:7099/Media/" + UserIamegUrlParam);
}