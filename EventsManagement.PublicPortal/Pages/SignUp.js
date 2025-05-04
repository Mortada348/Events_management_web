

$(document).ready(function (e) {
	GetGender()
})



function GetGender() {
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
				$('#gender').append(html);
			}


		}
	})
}












$("#SignUp").click(function (e) {
	e.preventDefault();

	var UserFullName = $("#UserFullName").val();
	var UserEmail = $("#UserEmail").val();
	var UserNationality = $("#UserNationality").val();
	var UserPassword = $("#UserPass").val();
	var DateOfBirth = $("#UserBirthDate").val();
	var Gender = $("#gender").val();
	var MobileNumber = $("#UserMobileNb").val();

	var User = new Object()

	
		
		User.FullName = UserFullName;
		User.Email = UserEmail;
		User.Nationality = UserNationality;
		User.DateOfBirth = DateOfBirth;
		User.UserPassword = UserPassword;
		User.Gender = Gender;
		User.MobileNumber = MobileNumber;
	    User.UserType = 1005;
	    User.JoiningDate = new Date();
	   User.IsDeleted = false;
	
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
					clean()
					window.open("/Login.aspx")
					
				});

			}
		})


	






})


function clean() {
  $("#UserFullName").val('');
$("#UserEmail").val('');
$("#UserNationality").val('');
  $("#UserPass").val('');
$("#UserBirthDate").val('');
$("#gender").val('');
$("#UserMobileNb").val('');
}