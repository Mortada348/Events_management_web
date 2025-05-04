<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="EventsManagment.AdminPortal.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    	<!--begin::Wrapper-->
<div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
				<!--begin::Wrapper container-->
				<div class="app-container container-xxl d-flex flex-row flex-column-fluid">
					<!--begin::Main-->
					<div class="app-main flex-column flex-row-fluid" id="kt_app_main">
						<!--begin::Content wrapper-->
						<div class="d-flex flex-column flex-column-fluid">
							<!--begin::Toolbar-->
							<div id="kt_app_toolbar" class="app-toolbar pt-lg-9 pt-6">
								<!--begin::Toolbar container-->
								<div id="kt_app_toolbar_container" class="app-container container-fluid d-flex flex-stack flex-wrap">
									<!--begin::Toolbar wrapper-->
									<div class="d-flex flex-stack flex-wrap gap-4 w-100">
										<!--begin::Page title-->
										<div class="page-title d-flex flex-column gap-3 me-3">
											<!--begin::Title-->
											<h1 class="page-heading d-flex flex-column justify-content-center text-dark fw-bolder fs-2x my-0">Admins List</h1>
											<!--end::Title-->
											<!--begin::Breadcrumb-->
											<ul class="breadcrumb breadcrumb-separatorless fw-semibold">
												<!--begin::Item-->
												<li class="breadcrumb-item text-gray-700 fw-bold lh-1">
													<a href="../dist/index.html" class="text-gray-500">
														<i class="ki-duotone ki-home fs-3 text-gray-400 me-n1"></i>
													</a>
												</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item">
													<i class="ki-duotone ki-right fs-4 text-gray-700 mx-n1"></i>
												</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item text-gray-700 fw-bold lh-1">Admin Management</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item">
													<i class="ki-duotone ki-right fs-4 text-gray-700 mx-n1"></i>
												</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item text-gray-700 fw-bold lh-1">Admins</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item">
													<i class="ki-duotone ki-right fs-4 text-gray-700 mx-n1"></i>
												</li>
												<!--end::Item-->
												<!--begin::Item-->
												<li class="breadcrumb-item text-gray-500">Admins List</li>
												<!--end::Item-->
											</ul>
											<!--end::Breadcrumb-->
										</div>
										<!--end::Page title-->
 
									</div>
									<!--end::Toolbar wrapper-->
								</div>
								<!--end::Toolbar container-->
							</div>
							<!--end::Toolbar-->
							<!--begin::Content-->
							<div id="kt_app_content" class="app-content pb-0">
								<!--begin::Card-->
								<div class="card">
									<!--begin::Card header-->
									<div class="card-header border-0 pt-6">
										<!--begin::Card title-->
										<div class="card-title">
											
										</div>
										<!--begin::Card title-->
										<!--begin::Card toolbar-->
										<div class="card-toolbar">
											<!--begin::Toolbar-->
											<div class="d-flex justify-content-end" data-kt-user-table-toolbar="base">
												<!--begin::Filter-->
												<button type="button" class="btn btn-light-primary me-3" data-kt-menu-trigger="click" data-kt-menu-placement="bottom-end">
												<i class="ki-duotone ki-filter fs-2">
													<span class="path1"></span>
													<span class="path2"></span>
												</i>Filter</button>
												<!--begin::Menu 1-->
												<div class="menu menu-sub menu-sub-dropdown w-300px w-md-325px" data-kt-menu="true">
													<!--begin::Header-->
													<div class="px-7 py-5">
														<div class="fs-5 text-dark fw-bold">Filter Options</div>
													</div>
													<!--end::Header-->
													<!--begin::Separator-->
													<div class="separator border-gray-200"></div>
													<!--end::Separator-->
													<!--begin::Content-->
													<div class="px-7 py-5" data-kt-user-table-filter="form">
														<!--begin::Input group-->
														<div class="mb-10">
															<label class="form-label fs-6 fw-semibold">Role:</label>
															<select id="Roles" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="role" data-hide-search="true">
																<option value="-1">Select</option>
																
															</select>
														</div>
														<!--end::Input group-->
														<!--begin::Input group-->
														<div class="mb-10">
															<label class="form-label fs-6 fw-semibold">Filter By Name:</label>
															<input type="text" name="Admin-Name" id="FilterByName" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Full name"  />
														</div>
														<!--end::Input group-->
														<!--begin::Actions-->
														<div class="d-flex justify-content-end">
															<button type="reset" id="reset" class="btn btn-light btn-active-light-primary fw-semibold me-2 px-6" data-kt-menu-dismiss="true" data-kt-user-table-filter="reset">Reset</button>
															<button id="Apply" class="btn btn-primary fw-semibold px-6" data-kt-menu-dismiss="true" data-kt-user-table-filter="filter">Apply</button>
														</div>
														<!--end::Actions-->
													</div>
													<!--end::Content-->
												</div>
												<!--end::Menu 1-->
												<!--end::Filter-->
 
												<!--begin::Add user-->
												<button type="button" id="adminbtn" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#AddAdminModal">
												<i class="ki-duotone ki-plus fs-2"></i>Add Admin</button>
												<!--end::Add user-->
											</div>
											<!--end::Toolbar-->
											<!--begin::Group actions-->
											<div class="d-flex justify-content-end align-items-center d-none" data-kt-user-table-toolbar="selected">
												<div class="fw-bold me-5">
												<span class="me-2" data-kt-user-table-select="selected_count"></span>Selected</div>
												<button type="button" class="btn btn-danger" data-kt-user-table-select="delete_selected">Delete Selected</button>
											</div>
											<!--end::Group actions-->
											<!--begin::Modal - Adjust Balance-->
											<div class="modal fade"  tabindex="-1" aria-hidden="true">
												<!--begin::Modal dialog-->
												<div class="modal-dialog modal-dialog-centered mw-650px">
													<!--begin::Modal content-->
													<div class="modal-content">
														<!--begin::Modal header-->
														<div class="modal-header">
															<!--begin::Modal title-->
															<h2 class="fw-bold">Export Users</h2>
															<!--end::Modal title-->
															<!--begin::Close-->
															<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
																<i class="ki-duotone ki-cross fs-1">
																	<span class="path1"></span>
																	<span class="path2"></span>
																</i>
															</div>
															<!--end::Close-->
														</div>
														<!--end::Modal header-->
														<!--begin::Modal body-->
														<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
															<!--begin::Form-->
															
																<!--begin::Input group-->
																<div class="fv-row mb-10">
																	<!--begin::Label-->
																	<label class="fs-6 fw-semibold form-label mb-2">Select Roles:</label>
																	<!--end::Label-->
																	<!--begin::Input-->
																	<select name="role" data-control="select2" data-placeholder="Select a role" data-hide-search="true" class="form-select form-select-solid fw-bold">
																		<option></option>
																		<option value="Administrator">Administrator</option>
																		<option value="Analyst">Analyst</option>
																		<option value="Developer">Developer</option>
																		<option value="Support">Support</option>
																		<option value="Trial">Trial</option>
																	</select>
																	<!--end::Input-->
																</div>
																<!--end::Input group-->
																<!--begin::Input group-->
																<div class="fv-row mb-10">
																	<!--begin::Label-->
																	<label class="required fs-6 fw-semibold form-label mb-2">Select Export Format:</label>
																	<!--end::Label-->
																	<!--begin::Input-->
																	<select name="format" data-control="select2" data-placeholder="Select a format" data-hide-search="true" class="form-select form-select-solid fw-bold">
																		<option></option>
																		<option value="excel">Excel</option>
																		<option value="pdf">PDF</option>
																		<option value="cvs">CVS</option>
																		<option value="zip">ZIP</option>
																	</select>
																	<!--end::Input-->
																</div>
																<!--end::Input group-->
																<!--begin::Actions-->
																<div class="text-center">
																	<button type="reset" class="btn btn-light me-3" data-kt-users-modal-action="cancel">Discard</button>
																	<button type="submit" class="btn btn-primary" data-kt-users-modal-action="submit">
																		<span class="indicator-label">Submit</span>
																		<span class="indicator-progress">Please wait...
																		<span class="spinner-border spinner-border-sm align-middle ms-2"></span></span>
																	</button>
																</div>
																<!--end::Actions-->
															
															<!--end::Form-->
														</div>
														<!--end::Modal body-->
													</div>
													<!--end::Modal content-->
												</div>
												<!--end::Modal dialog-->
											</div>
											<!--end::Modal - New Card-->
											<!--begin::Modal - Add task-->
											<div  class="modal fade" id="AddAdminModal" tabindex="-1" aria-hidden="true">
												<!--begin::Modal dialog-->
												<div class="modal-dialog modal-dialog-centered mw-650px">
													<!--begin::Modal content-->
													<div class="modal-content">
														<!--begin::Modal header-->
														<div class="modal-header" id="kt_modal_add_user_header">
															<!--begin::Modal title-->
															<h2 class="fw-bold">Add User</h2>
															<!--end::Modal title-->
															<!--begin::Close-->
															<div class="btn btn-icon btn-sm btn-active-icon-primary" data-kt-users-modal-action="close">
																<i id="close" class="ki-duotone ki-cross fs-1">
																	<span class="path1"></span>
																	<span class="path2"></span>
																</i>
															</div>
															<!--end::Close-->
														</div>
														<!--end::Modal header-->
														<!--begin::Modal body-->
														<div class="modal-body scroll-y mx-5 mx-xl-15 my-7">
															<!--begin::Form-->
															
																<!--begin::Scroll-->
																<div class="d-flex flex-column scroll-y me-n7 pe-7" id="kt_modal_add_user_scroll" data-kt-scroll="true" data-kt-scroll-activate="{default: false, lg: true}" data-kt-scroll-max-height="auto" data-kt-scroll-dependencies="#kt_modal_add_user_header" data-kt-scroll-wrappers="#kt_modal_add_user_scroll" data-kt-scroll-offset="300px">
																	<!--begin::Input group-->
																	
																	<!--end::Input group-->
																	<!--begin::Input group-->
																	<div class="fv-row mb-7">
																		<!--begin::Label-->
																		<label class="required fw-semibold fs-6 mb-2">Full Name</label>
																		<!--end::Label-->
																		<!--begin::Input-->
																		<input type="text" name="Admin-Name" id="adminName" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="Full name"  />
																		<!--end::Input-->
																	</div>
																	<!--end::Input group-->
																	<!--begin::Input group-->
																	<div class="fv-row mb-7">
																		<!--begin::Label-->
																		<label class="required fw-semibold fs-6 mb-2">Email</label>
																		<!--end::Label-->
																		<!--begin::Input-->
																		<input type="email" name="Admin_email" id="AdminEmail" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="example@domain.com"  />
																		<!--end::Input-->
																	</div>
																	<div class="fv-row mb-7">
																	<!--begin::Label-->
																	<label class="required fw-semibold fs-6 mb-2">Password</label>
																	<!--end::Label-->
																	<!--begin::Input-->
																	<input type="password" name="Admin_Password" id="AdminPassword" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="example@domain.com"  />
																	<!--end::Input-->
																	</div>

																	<div class="fv-row mb-7">
																		<!--begin::Label-->
																		<label class="required fw-semibold fs-6 mb-2">Date Of Birth</label>
																		<!--end::Label-->
																		<!--begin::Input-->
																		<input type="date" name="AdminBirthDate" id="AdminBirthDate" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="example@domain.com" value="smith@kpmg.com" />
																		<!--end::Input-->
														            </div>
																	<div class="mb-10">
																	<label class="required fw-semibold fs-6 mb-2">Gender</label>
																	<select id="AdminGender" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
																	<option value="-1">Select</option>
																							
																	</select>
																	</div>
																	<div class="mb-10">
																			<label class="required fw-semibold fs-6 mb-2">Role	</label>
																			<select id="AdminRole" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
																			<option value="-1"> Select </option>
																					
																			</select>
																	</div>
																	<!--end::Input group-->
																	<!--begin::Input group-->
																	
																	<!--end::Input group-->
																</div>
																<!--end::Scroll-->
																<!--begin::Actions-->
																<div class="text-center pt-15">
																	<button id="discard" class="btn btn-light me-3" data-kt-users-modal-action="cancel">Discard</button>
																	<button id="SaveAdmin" type="submit" class="btn btn-primary" data-kt-users-modal-action="submit">
																		<span class="indicator-label">Submit</span>
																	</button>
																</div>
																<!--end::Actions-->
															
															<!--end::Form-->
														</div>
														<!--end::Modal body-->
													</div>
													<!--end::Modal content-->
												</div>
												<!--end::Modal dialog-->
											</div>
											<!--end::Modal - Add task-->
										</div>
										<!--end::Card toolbar-->
									</div>
									<!--end::Card header-->
									<!--begin::Card body-->
									<div class="card-body py-4">
										<!--begin::Table-->
										<table class="table align-middle table-row-dashed fs-6 gy-5" id="kt_table_users">
											<thead>
												<tr class="text-start text-muted fw-bold fs-7 text-uppercase gs-0">
													<th class="w-10px pe-2">
														<div class="form-check form-check-sm form-check-custom form-check-solid me-3">
															<input class="form-check-input" type="checkbox" data-kt-check="true" data-kt-check-target="#kt_table_users .form-check-input" value="1" />
														</div>
													</th>
													<th class="min-w-125px">FullName</th>
													<th class="min-w-125px">Email</th>
													<th class="min-w-125px">Gender</th>
													<th class="min-w-125px">Role</th>
													<th class="min-w-125px">Date Of Birth</th>
													<th class="min-w-125px">Actions</th>
												</tr>
											</thead>
											<tbody id="AllAdmins" class="text-gray-600 fw-semibold">
												
												 
												 
												 
											</tbody>
										</table>
										<!--end::Table-->
									</div>
									<!--end::Card body-->
								</div>
								<!--end::Card-->
							</div>
							<!--end::Content-->
						</div>
						<!--end::Content wrapper-->

					</div>
					<!--end:::Main-->
				</div>
				<!--end::Wrapper container-->
</div>

<!--end::Wrapper-->

	<script src="Pages/Admins.js"></script>


</asp:Content>
