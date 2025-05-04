<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="EventsManagement.PublicPortal.SignUp" %>

<!DOCTYPE html>
 
<html lang="en">
	<!--begin::Head-->
	<head><base href="../../"/>
		<title>Oswald HTML Free - Bootstrap 5 HTML Multipurpose Admin Dashboard Theme by Keenthemes</title>
		<meta charset="utf-8" />
		<meta name="description" content="Axel admin dashboard live demo. Check out all the features of the admin panel. A large number of settings, additional services and widgets." />
		<meta name="keywords" content="Axel theme, bootstrap, bootstrap 5, admin themes, free admin themes, bootstrap admin, bootstrap dashboard" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta property="og:locale" content="en_US" />
		<meta property="og:type" content="article" />
		<meta property="og:title" content="Oswald HTML Free - Bootstrap 5 HTML Multipurpose Admin Dashboard Theme" />
		<meta property="og:url" content="https://keenthemes.com/products/oswald-html-pro" />
		<meta property="og:site_name" content="Keenthemes | Oswald HTML Free" />
		<link rel="canonical" href="https://preview.keenthemes.com/axel-html-free" />
		<link rel="shortcut icon" href="assets/media/logos/favicon.ico" />
		<!--begin::Fonts(mandatory for all pages)-->
		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inter:300,400,500,600,700" />
		<!--end::Fonts-->
		<!--begin::Global Stylesheets Bundle(mandatory for all pages)-->
		<link href="assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
		<link href="assets/css/style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Global Stylesheets Bundle-->
		<script>// Frame-busting to prevent site from being loaded within a frame without permission (click-jacking) if (window.top != window.self) { window.top.location.replace(window.self.location.href); }</script>
	</head>
	<!--end::Head-->
	<!--begin::Body-->
	<body id="kt_body" class="app-blank">
		<!--begin::Theme mode setup on page load-->
		<script>var defaultThemeMode = "light"; var themeMode; if ( document.documentElement ) { if ( document.documentElement.hasAttribute("data-bs-theme-mode")) { themeMode = document.documentElement.getAttribute("data-bs-theme-mode"); } else { if ( localStorage.getItem("data-bs-theme") !== null ) { themeMode = localStorage.getItem("data-bs-theme"); } else { themeMode = defaultThemeMode; } } if (themeMode === "system") { themeMode = window.matchMedia("(prefers-color-scheme: dark)").matches ? "dark" : "light"; } document.documentElement.setAttribute("data-bs-theme", themeMode); }</script>
		<!--end::Theme mode setup on page load-->
		<!--begin::Root-->
		<div class="d-flex flex-column flex-root" id="kt_app_root">
			<!--begin::Authentication - Sign-up -->
			<div class="d-flex flex-column flex-lg-row flex-column-fluid">
				<!--begin::Aside-->
				<div class="d-flex flex-column flex-lg-row-auto bg-primary w-xl-600px positon-xl-relative">
					<!--begin::Wrapper-->
					<div class="d-flex flex-column position-xl-fixed top-0 bottom-0 w-xl-600px scroll-y">
						<!--begin::Header-->
						<div class="d-flex flex-row-fluid flex-column text-center p-5 p-lg-10 pt-lg-20">
							<!--begin::Logo-->
							<a href="../dist/index.html" class="py-2 py-lg-20">
								 
							</a>
							<!--end::Logo-->
							<!--begin::Title-->
							<h1 class="d-none d-lg-block fw-bold text-white fs-2qx pb-5 pb-md-10">Welcome to Events Zone</h1>
							<!--end::Title-->
							<!--begin::Description-->
				 
							<!--end::Description-->
						</div>
						<!--end::Header-->
						<!--begin::Illustration-->
						<div class="d-none d-lg-block d-flex flex-row-auto bgi-no-repeat bgi-position-x-center bgi-size-contain bgi-position-y-bottom min-h-100px min-h-lg-350px" style="background-image: url(assets/media/illustrations/sketchy-1/17.png)"></div>
						<!--end::Illustration-->
					</div>
					<!--end::Wrapper-->
				</div>
				<!--begin::Aside-->
				<!--begin::Body-->
				<div class="d-flex flex-column flex-lg-row-fluid py-10">
					<!--begin::Content-->
					<div class="d-flex flex-center flex-column flex-column-fluid">
						<!--begin::Wrapper-->
						<div class="w-lg-600px p-10 p-lg-15 mx-auto">
							<!--begin::Form-->
							<form class="form w-100" novalidate="novalidate" data-kt-redirect-url="../dist/authentication/sign-in/basic.html" id="kt_sign_up_form">
			                     <!--begin::Heading-->
			                    <div class="mb-10 text-center">
			                        <!--begin::Title-->
			                        <h1 class="text-dark mb-3">Create an Account</h1>
			                        <!--end::Title-->
			                        <!--begin::Link-->
			                        <p class="text-gray-500">Already have an account? 
			                            <a href="/PublicLogin" class="link-primary fw-bold">Login here</a>
			                        </p>
			                        <!--end::Link-->
			                    </div>
			                    <!--end::Heading-->
								<!--begin::Action-->
								
								
								<!--end::Action-->
								<!--begin::Separator-->
								<div class="d-flex align-items-center mb-10">
									<div class="border-bottom border-gray-300 mw-50 w-100"></div>
									
									<div class="border-bottom border-gray-300 mw-50 w-100"></div>
								</div>
								<!--end::Separator-->
								<!--begin::Input group-->
								<div class="row fv-row mb-7">
									<!--begin::Col-->
									<div class="col-xl-6">
										<label class="form-label fw-bold text-dark fs-6">Full Name</label>
										<input id="UserFullName" class="form-control form-control-lg form-control-solid" type="text" placeholder="" name="first-name" autocomplete="off" />

									</div>
									<!--end::Col-->
									<!--begin::Col-->
									
									<!--end::Col-->
								</div>
								<!--end::Input group-->
								<!--begin::Input group-->
								<div class="fv-row mb-7">
									<label class="form-label fw-bold text-dark fs-6">Email</label>
									<input id="UserEmail" class="form-control form-control-lg form-control-solid" type="email" placeholder="" name="email" autocomplete="off" />
								</div>
								<!--end::Input group-->
								<!--begin::Input group-->
								<div class="mb-10 fv-row" data-kt-password-meter="true">
									<!--begin::Wrapper-->
									<div class="mb-1">
										<!--begin::Label-->
										<label class="form-label fw-bold text-dark fs-6">Password</label>
										<!--end::Label-->
										<!--begin::Input wrapper-->
										<div class="position-relative mb-3">
											<input id="UserPass" class="form-control form-control-lg form-control-solid" type="password" placeholder="" name="password" autocomplete="off" />
											
										</div>
								     <div class="fv-row mb-7">
													<label class="form-label fw-bold text-dark fs-6">Date Of Birth</label>
													<input id="UserBirthDate" class="form-control form-control-lg form-control-solid" type="date" placeholder="" name="email" autocomplete="off" />
									</div>

										<div class="mb-10">
										<label class=" fw-semibold fs-6 mb-2">Gender</label>
										<select id="gender" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
																	<option value="-1">Select</option>
																	
										</select>
										</div>
										 <div class="fv-row mb-7">
										<label class="form-label fw-bold text-dark fs-6">Mobile Number</label>
										<input id="UserMobileNb" class="form-control form-control-lg form-control-solid" type="text" placeholder="" name="email" autocomplete="off" />
										</div>
											 <div class="fv-row mb-7">
                                         <label class="form-label fw-bold text-dark fs-6">Nationality</label>
                                         <input id="UserNationality" class="form-control form-control-lg form-control-solid" type="text" placeholder="" name="email" autocomplete="off" />
                                         </div>
										<!--end::Input wrapper-->
										<!--begin::Meter-->
										
										<!--end::Meter-->
									</div>
									<!--end::Wrapper-->
									<!--begin::Hint-->
								
									<!--end::Hint-->
								</div>
								<!--end::Input group=-->
								<!--begin::Input group-->
								
								<!--end::Input group-->
								<!--begin::Input group-->
								
								<!--end::Input group-->
								<!--begin::Actions-->
								<div class="text-center">
									<button  id="SignUp" type="button" class="btn btn-lg btn-primary">
										<span class="indicator-label">Submit</span>
									</button>
								</div>
								<!--end::Actions-->
							</form>
							<!--end::Form-->
						</div>
						<!--end::Wrapper-->
					</div>
					<!--end::Content-->
					<!--begin::Footer-->
					<div class="d-flex flex-center flex-wrap fs-6 p-5 pb-0">
						<!--begin::Links-->
						<div class="d-flex flex-center fw-semibold fs-6">
							<a href="https://keenthemes.com" class="text-muted text-hover-primary px-2" target="_blank">About</a>
							<a href="https://devs.keenthemes.com" class="text-muted text-hover-primary px-2" target="_blank">Support</a>
							<a href="https://keenthemes.com/products/oswald-html-pro" class="text-muted text-hover-primary px-2" target="_blank">Purchase</a>
						</div>
						<!--end::Links-->
					</div>
					<!--end::Footer-->
				</div>
				<!--end::Body-->
			</div>
			<!--end::Authentication - Sign-up-->
		</div>
		<!--end::Root-->
		<!--begin::Javascript-->
		<script>var hostUrl = "assets/";</script>
		<!--begin::Global Javascript Bundle(mandatory for all pages)-->
		<script src="assets/plugins/global/plugins.bundle.js"></script>
		<script src="assets/js/scripts.bundle.js"></script>
		<!--end::Global Javascript Bundle-->
		<!--begin::Custom Javascript(used for this page only)-->
		<script src="assets/js/custom/authentication/sign-up/general.js"></script>
		<!--end::Custom Javascript-->
		<!--end::Javascript-->
		<script src="Pages/SignUp.js"></script>
		
     <script>
         var APIUrl = '<%= System.Configuration.ConfigurationManager.AppSettings["APIURL"]%>';
     </script>

	</body>
	<!--end::Body-->
</html>
