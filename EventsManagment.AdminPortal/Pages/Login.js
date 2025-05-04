
 
$(document).submit(function (e) {

    e.preventDefault();



})
$("#Login").click(function (e) {

    $("#Login").text("please wait...")


    var UserEmail = $("#email").val();
    var UserPassword = $("#password").val();



    console.log("UserEmail", UserEmail)


    if (UserEmail.trim() == "") {

        Swal.fire({
            type: 'error',
            title: "error",
            icon: "error",
            allowEscapeKey: false,
            allowOutsideClick: false,
            text: "Email is Empty",
            confirmButtonText: "Ok",
            customClass: {
                confirmButton: "btn font-weight-bold btn-light-primary"
            }
        })
        $("#Login").text("Login")
        return;
    } else if (UserPassword.trim() == "") {
        Swal.fire({
            type: 'error',
            title: "error",
            icon: "error",
            allowEscapeKey: false,
            allowOutsideClick: false,
            text: "Password is Empty",
            confirmButtonText: "Ok",
            customClass: {
                confirmButton: "btn font-weight-bold btn-light-primary"
            }
        })
        $("#Login").text("Login")
        return;
    }

    var userObject = new Object();

    userObject.Email = UserEmail;
    userObject.Password = UserPassword;
 


    $.ajax({
        url: APIUrl + "Login/AdminLogin",
        contentType: 'application/json',
        type: "POST",
        data: JSON.stringify(userObject),
        success: function (result) {
            if (!result.success) {
                Swal.fire({
                    type: 'error',
                    title: "error",
                    icon: "error",
                    allowEscapeKey: false,
                    allowOutsideClick: false,
                    text: result.message,
                    confirmButtonText: "Ok",
                    customClass: {
                        confirmButton: "btn font-weight-bold btn-light-primary"
                    }
                })
                $("#Login").text("Login")
            } else {
                var response = result.message;

                var obj = $.parseJSON(response);
                SetCookie("Id", obj.Id, 100);
                SetCookie("Email", obj.Email, 100);
                SetCookie("Token", obj.Token, 100);
                SetCookie("FullName", obj.FullName, 100);
                $("#Login").text("Login")
                window.open("AllEvents.aspx", "_self");
            }
        }
    })
    e.preventDefault();

})


//$("#Login").click(function (e) {

//    var UserEmail = $("#Email").val();
//    var UserPassword = $("#Password").val();

//    if (UserEmail.trim() == "") {
//        alert("error")
//        return;
//    } else if (UserPassword == "") {
//        alert("error")
//        return;
//    }

//    var User = new Object();

//    User.Email = UserEmail;
//    User.Password = UserPassword;

//    $.ajax({
//        url: APIUrl + "Login/AdminLogin",
//        contentType: 'application/json',
//        type: "POST",
//        data: JSON.stringify(User),
//        success: function (result) {
//            if (!result.success) {
//                alert("error")
//                return;
//            } 

//        }

//    })

//})

