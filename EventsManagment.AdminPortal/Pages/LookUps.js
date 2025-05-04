$(document).ready(function (e) {

 
	GetAllParentLookups();
    GetAllLookUps();
 
})


var AllLookUps = [];
var EditedId = 0;
function GetAllLookUps() {
	$.ajax({
		url: APIUrl + "LookUps/GetAllLookUps",
		contentType: 'application/json',
		type: "GET",
		success: function (result) {

			AllLookUps = result;
			bindLookupsData(result)

		},
	})
 
	 
}

function bindLookupsData(LookupsArray) {
	 
	html = '';
	$.each(LookupsArray, function (key, val) {

		html += `<tr>
						<td>
							<div class="form-check form-check-sm form-check-custom form-check-solid">
								<input class="form-check-input" type="checkbox" value="${val.id}" />
							</div>
						</td>
						<td class="d-flex align-items-center">
							<!--begin:: Avatar -->
							
							<!--end::Avatar-->
							<!--begin::User details-->
							<div class="d-flex flex-column">
								<a  class="text-gray-800 text-hover-primary mb-1">${val.lookUpName}</a>
							</div>
							<!--begin::User details-->
						</td>
						
						<td>
							<div class="badge badge-light fw-bold">${val.code}</div>
						</td>

						<td>
							<div class="badge badge-light fw-bold">${val.lookUpOrder}</div>
						</td>

						
						<td class="text-end">
							
							<!--begin::Menu-->
							<div class="card-title m-0">
                           <div class="d-flex justify-content-start align-items-center gap-2">
                            <span onclick="handleEditModal(${val.id})">     <i class="bi bi-pencil-square fs-3"></i></span>
                            <span onclick="handleDelete(${val.id})">     <i class="bi bi-trash fs-3"></i></span>
                            </div>
                          </div>
								<!--end::Menu item-->
							</div>
							<!--end::Menu-->
						</td>
			    </tr>`;

	})

	$('#AllLookUps').html(html)
}









function GetAllParentLookups() {
	$.ajax({
		url: APIUrl + "LookUps/GetParentLookUps",
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
				$('#lookupsParent').append(html);
			} 


		}
	})
}


$("#saveLookup").click(function (e) {

	e.preventDefault();

	var LookupCode = $("#code").val()
	var LookupName = $("#Name").val()
	var LookupOrder = $("#Order").val()
	var LookupParent = $("#lookupsParent").val()


	var lookUpObject = new Object()

	if (EditedId != 0) {
		lookUpObject.Id = EditedId
		lookUpObject.Code = LookupCode
		lookUpObject.LookUpName = LookupName
		lookUpObject.LookUpOrder = LookupOrder
		lookUpObject.ParentId = LookupParent
	} else {
		lookUpObject.Code = LookupCode
		lookUpObject.LookUpName = LookupName
		lookUpObject.LookUpOrder = LookupOrder
		lookUpObject.ParentId = LookupParent
	}


	 
	if (EditedId != 0) {
		$.ajax({
			url: APIUrl + "LookUps/UpdateLookUp",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(lookUpObject),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "Lookup Updated successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllLookUps()
					EditedId = 0;
					$('#AddLookupsModal').modal("hide")
				});

			}
		})
	} else {
		$.ajax({
			url: APIUrl + "LookUps/CreateLookUp",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(lookUpObject),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "Lookup saved successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {

					GetAllLookUps()
					$('#AddLookupsModal').modal("hide")
				});





			}
		})

	}

	})
	
$("#batikh").click(function (e) {
	$('#AddLookupsModal').modal("hide")
})

function cleanModal() {
	$("#code").val('')
	$("#Name").val('')
	$("#Order").val('')
	$("#lookupsParent").val('-1').trigger("change")
}

$("#hideModal").click(function (e) {
	$('#AddLookupsModal').modal("hide")
})

$("#lookupbtn").click(function (e) {
	console.log("hey")
	$('#AddLookupsModal').modal("show")
	cleanModal()
})

function handleEditModal(LookUpId) {

	var CurrentLookUp = AllLookUps.find(x => x.id == LookUpId);

	EditedId = CurrentLookUp.id;
	$("#code").val(CurrentLookUp.code)
	$("#Name").val(CurrentLookUp.lookUpName)
	$("#Order").val(CurrentLookUp.lookUpOrder)
	$("#lookupsParent").val(CurrentLookUp.parentId).trigger("change")
	$('#AddLookupsModal').modal("show")
}



function handleDelete(LookUpId) {
 
		$.ajax({
			url: APIUrl + "LookUps/DeleteLookUp?LookUpId=" + LookUpId,
			contentType: 'application/json',
			type: "POST",
			
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "LookUp Deleted successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllLookUps();
				});
			}
		})
}

function searchUser() {
	var searchValue = $("#searchUser").val().toLowerCase().trim();

	var filteredArray = searchValue === ""
		? AllLookUps
		: AllLookUps.filter(x => x.lookUpName.toLowerCase().includes(searchValue));

	bindLookupsData(filteredArray);
}