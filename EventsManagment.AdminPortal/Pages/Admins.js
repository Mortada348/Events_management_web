$(document).ready(function (e) {
	GetAllAdmins();
	GetAllRoles();
	GetLookUpByParentId();
	GetAllRolesForFilter();
})

var AllAdmins = [];
var EditedId = 0;
function GetAllAdmins() {
    $.ajax({
        url: APIUrl + "Admins/GetAdmins",
        contentType: 'application/json',
        type: "GET",
		success: function (result) {

			
			AllAdmins = result;
			bindAdminsData(result)
        
        }

    })
}

function GetLookUpByParentId() {
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
				$('#AdminGender').append(html);
			}


		}
	})
}
function GetAllRoles() {
	$.ajax({
		url: APIUrl + "Roles/GetAllRoles",
		contentType: 'application/json',
		type: "GET",
		success: function (result) {

			if (result != null) {

				var html = '';
				$.map(result, function (val, i) {

					console.log("val", val)

					html += `
                        <option value = "${val.id}" > ${val.roleName}</option >
                    `;

				
				})
				$('#AdminRole').append(html);
			}


		}
	})
}

function GetAllRolesForFilter() {
	$.ajax({
		url: APIUrl + "Roles/GetAllRoles",
		contentType: 'application/json',
		type: "GET",
		success: function (result) {

			if (result != null) {

				var html = '';
				$.map(result, function (val, i) {

					console.log("val", val)

					html += `
                        <option value = "${val.id}" > ${val.roleName}</option >
                    `;


				})
				$('#Roles').append(html);
			}


		}
	})
}






$("#SaveAdmin").click(function (e) {
	e.preventDefault();

	
	var AdminName = $("#adminName").val();
	var AdminEmail = $("#AdminEmail").val();
	var AdminPassword = $("#AdminPassword").val();
	var AdminBirthdate= $("#AdminBirthDate").val();
	var AdminGender = $("#AdminGender").val();
	var Role = $("#AdminRole").val();
	var IsDeleted = false;
	var Admin = new Object()

	if (EditedId != 0) {
		Admin.Id = EditedId;
		Admin.AdminName = AdminName;
		Admin.Email = AdminEmail;
		Admin.DateofBirth = AdminBirthdate;
		Admin.Gender = AdminGender;
		Admin.AdminPassword = AdminPassword;
		Admin.RoleId = Role;
		Admin.IsDeleted = IsDeleted;
	} else {
		Admin.AdminName = AdminName;
		Admin.Email = AdminEmail;
		Admin.DateofBirth = AdminBirthdate;
		Admin.Gender = AdminGender;
		Admin.AdminPassword = AdminPassword;
		Admin.RoleId = Role;
		Admin.IsDeleted = IsDeleted;
	}

	if (EditedId != 0) {
		$.ajax({
			url: APIUrl + "Admins/UpdateAdmin",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(Admin),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "Admin Updated successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllAdmins();
					EditedId = 0;
					$('#AddAdminModal').modal("hide");
				});




			}
		})

	} else {
		$.ajax({
			url: APIUrl + "Admins/CreateAdmins",
			contentType: 'application/json',
			type: "POST",
			data: JSON.stringify(Admin),
			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "Admin saved successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllAdmins();
					$('#AddAdminModal').modal("hide")

				});



			
			}
		})
	}
	






})

function cleanModal() {
	$("#adminName").val('')
	$("#AdminEmail").val('')
	$("#AdminPassword").val('')
	$("#AdminBirthDate").val('')
	$("#AdminGender").val('-1').trigger("change")
	$("#AdminRole").val('-1').trigger("change")
}



$("#adminbtn").click(function (e) {
	$('#AddAdminModal').modal("show")
	cleanModal()
})

function handleEditModal(AdminId) {
	var currentAdmin = AllAdmins.find(x => x.id == AdminId)
	EditedId = currentAdmin.id;
	$("#adminName").val(currentAdmin.adminName)
	$("#AdminEmail").val(currentAdmin.email)
	$("#AdminPassword").val(currentAdmin.adminPassword)
	$("#AdminBirthDate").val(currentAdmin.dateofBirth.split('T')[0])
	$("#AdminGender").val(currentAdmin.genderId).trigger("change")
	$("#AdminRole").val(currentAdmin.roleId).trigger("change")
	$('#AddAdminModal').modal("show")	
}

function handleDelete(AdminId) {
		$.ajax({
			url: APIUrl + "Admins/DeleteAdmin?AdminId=" + AdminId,
			contentType: 'application/json',
			type: "POST",

			success: function (result) {


				Swal.fire({
					type: 'success',
					title: "Success",
					icon: "success",
					allowEscapeKey: false,
					allowOutsideClick: false,
					text: "Admin Deleted successfully",
					confirmButtonText: "Ok",
					customClass: {
						confirmButton: "btn font-weight-bold btn-light-primary"
					}
				}).then(() => {
					GetAllAdmins();
				});
			}
		})
}

function bindAdminsData(AdminsArray) {

	html = '';
	$.each(AdminsArray, function (key, val) {
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
								<a href="#" class="text-gray-800 text-hover-primary mb-1">${val.adminName}</a>
								<span>${val.email}</span>
							</div>
							<!--begin::User details-->
						</td>
						<td>${val.email}</td>
						<td>
							<div class="badge badge-light fw-bold">${val.gender}</div>
						</td>


						<td>
							<div class="badge badge-light fw-bold">${val.adminRole}</div>
						</td>

						<td>
							<div class="badge badge-light fw-bold">${val.dateofBirth.split("T")[0]}</div>
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
	$('#AllAdmins').html(html)
}






 

$("#Apply").click(function (e) {

	var role = $("#Roles").val()
	var name = $("#FilterByName").val().trim().toLowerCase()

	console.log("role", role)
	console.log("name", name)
	filteredArray = AllAdmins;

	if (role !== "-1") {
		filteredArray = filteredArray.filter(x => x.roleId == role);
	}
	if (name.trim() !== "") {
		filteredArray = filteredArray.filter(x => x.adminName.toLowerCase().includes(name.toLowerCase()));
	}
  
	bindAdminsData(filteredArray);

})



$("#reset").click(function (e) {
	bindAdminsData(AllAdmins);
})


$("#discard").click(function (e) {
	$('#AddAdminModal').modal("hide");
})

$("#close").click(function (e) {
	$('#AddAdminModal').modal("hide");
})




