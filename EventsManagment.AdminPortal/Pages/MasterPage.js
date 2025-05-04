$(document).ready(function (e) {

    var fullName = ReadCookie("FullName");
    var Email = ReadCookie("Email");


    $("#usrfullname").html(fullName)
    $("#usrEmail").html(Email)


})


$("#SignOut").click(function (e) {

    SetCookie("Id", null, 100);
    SetCookie("Email", null, 100);
    SetCookie("Token", null, 100);
    SetCookie("FullName", null, 100);

    window.open("/Login.aspx", "_self")


})