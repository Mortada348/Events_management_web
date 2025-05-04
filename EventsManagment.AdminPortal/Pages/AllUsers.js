$(document).ready(function (e) {
	GetLookUpByParentId();
	GetLookUpByParentIdd();
	GetAllUsers();
	FilterByType();
	
})

var AllUsers = [];
var EditedId = 0;

function GetAllUsers() {
 
    $.ajax({
        url: APIUrl + "Users/GetAllUsers?TypeId=1005,3002",
        contentType: 'application/json',
        type: "GET",
        success: function (result) {
			AllUsers = result;
			bindUsersData(result)
        },


    });




}









$("#SaveUser").click(function (e) {
	e.preventDefault();

	var UserFullName = $("#FullName").val();
	var UserEmail = $("#Email").val();
	var UserNationality = $("#Nationality").val();
	var JoinedDate = $("#JoinedDate").val();
	var Type = $("#Type").val();
	var UserPassword = $("#Password").val();
	var DateOfBirth = $("#DateOfBirth").val();
	var Gender = $("#Gender").val();
	var MobileNumber = $("#MobileNumber").val();

	var User = new Object()

	if (EditedId != 0) {
		User.Id = EditedId;
		User.FullName = UserFullName;
		User.Email = UserEmail;
		User.Nationality = UserNationality;
		User.JoiningDate = JoinedDate;
		User.UserType = Type;
		User.DateOfBirth = DateOfBirth;
		User.UserPassword = UserPassword;
		User.Gender = Gender;
		User.MobileNumber = MobileNumber;
	} else {
		User.FullName = UserFullName;
		User.Email = UserEmail;
		User.Nationality = UserNationality;
		User.JoiningDate = JoinedDate;
		User.UserType = Type;
		User.DateOfBirth = DateOfBirth;
		User.UserPassword = UserPassword;
		User.Gender = Gender;
		User.MobileNumber = MobileNumber;
	}


	if (EditedId != 0) {
		$.ajax({
			url: APIUrl + "Users/UpdateUser",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(User),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "User Updated successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllUsers();
					EditedId = 0;
					$('#AddUserModal').modal("hide");
				});


			}
		})


	} else {
		$.ajax({
			url: APIUrl + "Users/CreateUsers",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(User),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "User saved successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllUsers();
					$('#AddUserModal').modal("hide");
				});


			}
		})


	}

	




})
function GetLookUpByParentId() {
	$.ajax({
		url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=4",
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
				$('#Type').append(html);
			}


		}
	})
}
function GetLookUpByParentIdd() {
	$.ajax({
		url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=1",
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
				$('#Gender').append(html);
			}


		}
	})
}

function FilterByType() {
	$.ajax({
		url: APIUrl + "LookUps/GetLookUpByParentId?ParentId=4",
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
				$('#UserType').append(html);
			}


		}
	})
}

$("#DiscardModal").click(function (e) {
	$('#AddUserModal').modal("hide")
})


$("#batikh").click(function (e) {
	$('#AddUserModal').modal("hide")
})

function handleEditModal(UserId) {
	CurrentUser = AllUsers.find(x=>x.id==UserId)
	EditedId = CurrentUser.id;
	$("#FullName").val(CurrentUser.fullName)
	$("#Email").val(CurrentUser.email)
	$("#Nationality").val(CurrentUser.nationality)
	$("#Password").val(CurrentUser.password)
	$("#JoinedDate").val(CurrentUser.joinedDate.split("T")[0])
	$("#MobileNumber").val(CurrentUser.mobileNumber)
	$("#DateOfBirth").val(CurrentUser.dateOfBirth.split("T")[0])
	$("#Type").val(CurrentUser.userTypeId).trigger("change")
	$("#Gender").val(CurrentUser.genderId).trigger("change")
	$('#AddUserModal').modal("show")
}

function cleanModal() {
	$("#FullName").val('')
	$("#Email").val('')
	$("#Nationality").val('')
	$("#Password").val('')
	$("#JoinedDate").val('')
	$("#MobileNumber").val('')
	$("#DateOfBirth").val('')
	$("#Type").val('-1').trigger("change")
	$("#Gender").val('-1').trigger("change")
	
}



$("#userbtn").click(function (e) {
	$('#AddUserModal').modal("show")
	cleanModal()
})


function handleDelete(UserId) {

		$.ajax({
			url: APIUrl + "Users/DeleteUser?UserId=" + UserId,
			contentType: 'application/json',
			type: "POST",

			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "User Deleted successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
				GetAllUsers()
				});
			}
		})
}




function bindUsersData(UsersArray) {
	html = '';

	$.each(UsersArray, function (key, val) {
		html += `<tr>
						<td>
							<div class="form-check form-check-sm form-check-custom form-check-solid">
								<input class="form-check-input" type="checkbox" value="${val.id}" />
							</div>
						</td>
						<td class="d-flex align-items-center">
							<!--begin:: Avatar -->
							<div class="symbol symbol-circle symbol-50px overflow-hidden me-3">
								<a href="#">
									<div class="symbol-label">
										<img src="assets/media/avatars/300-1.jpg" alt="Emma Smith" class="w-100" />
									</div>
								</a>
							</div>
							<!--end::Avatar-->
							<!--begin::User details-->
							<div class="d-flex flex-column">
								<a href="#" class="text-gray-800 text-hover-primary mb-1">${val.fullName}</a>
								<span>${val.email}</span>
							</div>
							<!--begin::User details-->
						</td>
						<td>${val.email}</td>
						<td>
							<div class="badge badge-light fw-bold">${val.nationality}</div>
						</td>

						<td>
							<div class="badge badge-light fw-bold">${val.userType}</div>
						</td>

						<td>
							<div class="badge badge-light fw-bold">${val.joinedDate.split("T")[0]}</div>
						</td>
						<td class="text-end">
							 <div class="card-title m-0">
                           <div class="d-flex justify-content-start align-items-center gap-2">
                            <span onclick="handleEditModal(${val.id})">     <i class="bi bi-pencil-square fs-3"></i></span>
                            <span onclick="handleDelete(${val.id})">     <i class="bi bi-trash fs-3"></i></span>
                            </div>
                          </div>
							</div>
							<!--end::Menu-->
						</td>
			    </tr>`;

	})



	$('#AllUsers').html(html)

}



$("#FilterApply").click(function (e) {

	var type = $("#UserType").val()
	var name = $("#FilterByName").val().trim().toLowerCase()
	console.log("type",type)
	console.log("name",name)
	filteredArray = AllUsers;

	if (type !== "-1") {
		filteredArray = filteredArray.filter(x => x.userTypeId == type);
	}
    if (name.trim() !== "") {
		filteredArray = filteredArray.filter(x => x.fullName.toLowerCase().includes(name.toLowerCase()));
	}

	bindUsersData(filteredArray);


})

$("#reset").click(function (e) {
	bindUsersData(AllUsers);
})



