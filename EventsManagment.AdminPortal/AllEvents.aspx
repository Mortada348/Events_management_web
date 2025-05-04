<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllEvents.aspx.cs" Inherits="EventsManagment.AdminPortal.AllEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 
	        <!--begin::Wrapper-->
        <div class="app-wrapper flex-column flex-row-fluid" id="kt_app_wrapper">
          <!--begin::Wrapper container-->
          <div
            class="app-container container-xxl d-flex flex-row flex-column-fluid"
          >
            <!--begin::Main-->
            <div class="app-main flex-column flex-row-fluid" id="kt_app_main">
              <!--begin::Content wrapper-->
              <div class="d-flex flex-column flex-column-fluid">
                <!--begin::Toolbar-->
                <div  id="kt_app_toolbar" class="app-toolbar pt-lg-9 pt-6">
                  <!--begin::Toolbar container-->
                  <div
                    id="kt_app_toolbar_container"
                    class="app-container container-fluid d-flex flex-stack flex-wrap"
                  >
                    <!--begin::Toolbar wrapper-->
                    <div class="d-flex flex-stack flex-wrap gap-4 w-100">
                      <!--begin::Page title-->
                      <div class="page-title d-flex flex-column gap-3 me-3">
                        <!--begin::Title-->
                        <h1
                          class="page-heading d-flex flex-column justify-content-center text-dark fw-bolder fs-2x my-0"
                        >
                          All Events
                        </h1>
                        <!--end::Title-->
                        <!--begin::Breadcrumb-->
                        <ul
                          class="breadcrumb breadcrumb-separatorless fw-semibold"
                        >
                          <!--begin::Item-->
                          <li
                            class="breadcrumb-item text-gray-700 fw-bold lh-1"
                          >
                            <a href="../dist/index.html" class="text-gray-500">
                              <i
                                class="ki-duotone ki-home fs-3 text-gray-400 me-n1"
                              ></i>
                            </a>
                          </li>
                          <!--end::Item-->
                          <!--begin::Item-->
                          <li class="breadcrumb-item">
                            <i
                              class="ki-duotone ki-right fs-4 text-gray-700 mx-n1"
                            ></i>
                          </li>
                          <!--end::Item-->
                          <!--begin::Item-->
                          <li
                            class="breadcrumb-item text-gray-700 fw-bold lh-1"
                          >
                            Events
                          </li>
                          <!--end::Item-->
                          <!--begin::Item-->
                          <li class="breadcrumb-item">
                            <i
                              class="ki-duotone ki-right fs-4 text-gray-700 mx-n1"
                            ></i>
                          </li>
                          <!--end::Item-->
                          <!--begin::Item-->
                          <li class="breadcrumb-item text-gray-500">
                            All Events
                          </li>
                          <!--end::Item-->
                        </ul>
                        <!--end::Breadcrumb-->
                      </div>
                      <!--end::Page title-->
                      <!--begin::Actions-->
                      <div class="d-flex align-items-center gap-3 gap-lg-5">
                        <!--begin::Secondary button-->
                        <div class="m-0">
                          <a
                             id="eventModalbtn"
                            class="btn btn-flex btn-sm btn-color-gray-700 bg-body fw-bold px-4"
                            data-bs-toggle="modal"
                             
                            >Add New Event</a
                          >
                        </div>
                        <!--end::Secondary button-->
                         
                      </div>
                      <!--end::Actions-->
                    </div>
                    <!--end::Toolbar wrapper-->
                  </div>
                  <!--end::Toolbar container-->
                </div>
                <!--end::Toolbar-->
                <!--begin::Content-->
                <div id="kt_app_content" class="app-content pb-0">
 
                  <!--begin::Toolbar-->
                  <div class="d-flex flex-wrap flex-stack my-5">
                    <!--begin::Heading-->
                    <h2 class="fs-2 fw-semibold my-2">
                      Events
                      <span class="fs-6 text-gray-400 ms-1">by Status</span>
                    </h2>
                    <!--end::Heading-->
                    <!--begin::Controls-->
                    <div class="d-flex flex-wrap my-1">
                      <!--begin::Select wrapper-->
                      <div class="m-0">
                        <!--begin::Select-->
                        <select
                          id="Filter"
                          data-control="select2"
                          data-hide-search="true"
                          class="form-select form-select-sm bg-body border-body fw-bold w-125px"
                         onchange="SelectStatus()"
                        >
                          <option value="-1" >
                          All Events
                          </option>
                          
                        </select>
                        <!--end::Select-->
                      </div>
                      <!--end::Select wrapper-->
                    </div>
                    <!--end::Controls-->
                  </div>
                  <!--end::Toolbar-->
                  <!--begin::Row-->
                  <div class="row g-6 g-xl-9" id="AllEvents">

 
                     
                  </div>
                  <!--end::Row-->
 
                  <!--begin::Modals-->
                  <!--begin::Modal - View Users-->
                  <div
                    class="modal fade"
                    id="kt_modal_view_users"
                    tabindex="-1"
                    aria-hidden="true"
                  >
                    <!--begin::Modal dialog-->
                    <div class="modal-dialog mw-650px">
                      <!--begin::Modal content-->
                      <div class="modal-content">
                        <!--begin::Modal header-->
                        <div
                          class="modal-header pb-0 border-0 justify-content-end"
                        >
                          <!--begin::Close-->
                          <div
                            class="btn btn-sm btn-icon btn-active-color-primary"
                            data-bs-dismiss="modal"
                          >
                            <i class="ki-duotone ki-cross fs-1">
                              <span class="path1"></span>
                              <span class="path2"></span>
                            </i>
                          </div>
                          <!--end::Close-->
                        </div>
                        <!--begin::Modal header-->
                        <!--begin::Modal body-->
                        <div
                          class="modal-body scroll-y mx-5 mx-xl-18 pt-0 pb-15"
                        >
                          <!--begin::Heading-->
                          <div class="text-center mb-13">
                            <!--begin::Title-->
                            <h1 class="mb-3">Browse Users</h1>
                            <!--end::Title-->
                            <!--begin::Description-->
                            <div class="text-muted fw-semibold fs-5">
                              If you need more info, please check out our
                              <a href="#" class="link-primary fw-bold"
                                >Users Directory</a
                              >.
                            </div>
                            <!--end::Description-->
                          </div>
                          <!--end::Heading-->
                          <!--begin::Users-->
                          <div class="mb-15">
                            <!--begin::List-->
                            <div class="mh-375px scroll-y me-n7 pe-7">
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-6.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Emma Smith
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Art Director</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      smith@kpmg.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $23,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-danger text-danger fw-semibold"
                                      >M</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Melody Macy
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Marketing Analytic</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      melody@altbox.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $50,500
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-1.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Max Smith
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Software Enginer</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      max@kt.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $75,900
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-5.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Sean Bean
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Web Developer</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      sean@dellito.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $10,500
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-25.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Brian Cox
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >UI/UX Designer</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      brian@exchange.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $20,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-warning text-warning fw-semibold"
                                      >C</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Mikaela Collins
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Head Of Marketing</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      mik@pex.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $9,300
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-9.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Francis Mitcham
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Software Arcitect</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      f.mit@kpmg.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $15,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-danger text-danger fw-semibold"
                                      >O</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Olivia Wild
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >System Admin</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      olivia@corpmail.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $23,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-primary text-primary fw-semibold"
                                      >N</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Neil Owen
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Account Manager</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      owen.neil@gmail.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $45,800
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-23.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Dan Wilson
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Web Desinger</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      dam@consilting.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $90,500
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-danger text-danger fw-semibold"
                                      >E</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Emma Bold
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Corporate Finance</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      emma@intenso.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $5,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div
                                class="d-flex flex-stack py-5 border-bottom border-gray-300 border-bottom-dashed"
                              >
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <img
                                      alt="Pic"
                                      src="assets/media/avatars/300-12.jpg"
                                    />
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Ana Crown
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Customer Relationship</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      ana.cf@limtel.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $70,000
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                              <!--begin::User-->
                              <div class="d-flex flex-stack py-5">
                                <!--begin::Details-->
                                <div class="d-flex align-items-center">
                                  <!--begin::Avatar-->
                                  <div class="symbol symbol-35px symbol-circle">
                                    <span
                                      class="symbol-label bg-light-info text-info fw-semibold"
                                      >A</span
                                    >
                                  </div>
                                  <!--end::Avatar-->
                                  <!--begin::Details-->
                                  <div class="ms-6">
                                    <!--begin::Name-->
                                    <a
                                      href="#"
                                      class="d-flex align-items-center fs-5 fw-bold text-dark text-hover-primary"
                                      >Robert Doe
                                      <span
                                        class="badge badge-light fs-8 fw-semibold ms-2"
                                        >Marketing Executive</span
                                      ></a
                                    >
                                    <!--end::Name-->
                                    <!--begin::Email-->
                                    <div class="fw-semibold text-muted">
                                      robert@benko.com
                                    </div>
                                    <!--end::Email-->
                                  </div>
                                  <!--end::Details-->
                                </div>
                                <!--end::Details-->
                                <!--begin::Stats-->
                                <div class="d-flex">
                                  <!--begin::Sales-->
                                  <div class="text-end">
                                    <div class="fs-5 fw-bold text-dark">
                                      $45,500
                                    </div>
                                    <div class="fs-7 text-muted">Sales</div>
                                  </div>
                                  <!--end::Sales-->
                                </div>
                                <!--end::Stats-->
                              </div>
                              <!--end::User-->
                            </div>
                            <!--end::List-->
                          </div>
                          <!--end::Users-->
                          <!--begin::Notice-->
                          <div class="d-flex justify-content-between">
                            <!--begin::Label-->
                            <div class="fw-semibold">
                              <label class="fs-6"
                                >Adding Users by Team Members</label
                              >
                              <div class="fs-7 text-muted">
                                If you need more info, please check budget
                                planning
                              </div>
                            </div>
                            <!--end::Label-->
                            <!--begin::Switch-->
                            <label
                              class="form-check form-switch form-check-custom form-check-solid"
                            >
                              <input
                                class="form-check-input"
                                type="checkbox"
                                value=""
                                checked="checked"
                              />
                              <span
                                class="form-check-label fw-semibold text-muted"
                                >Allowed</span
                              >
                            </label>
                            <!--end::Switch-->
                          </div>
                          <!--end::Notice-->
                        </div>
                        <!--end::Modal body-->
                      </div>
                      <!--end::Modal content-->
                    </div>
                    <!--end::Modal dialog-->
                  </div>
                  <!--end::Modal - View Users-->
                  <!--begin::Modal - Users Search-->
                  <div
                    class="modal fade"
                    id="kt_modal_users_search"
                    tabindex="-1"
                    aria-hidden="true"
                  >
                    <!--begin::Modal dialog-->
                    <div class="modal-dialog modal-dialog-centered mw-650px">
                      <!--begin::Modal content-->
                      <div class="modal-content">
                        <!--begin::Modal header-->
                        <div
                          class="modal-header pb-0 border-0 justify-content-end"
                        >
                          <!--begin::Close-->
                          <div
                            class="btn btn-sm btn-icon btn-active-color-primary"
                            data-bs-dismiss="modal"
                          >
                            <i class="ki-duotone ki-cross fs-1">
                              <span class="path1"></span>
                              <span class="path2"></span>
                            </i>
                          </div>
                          <!--end::Close-->
                        </div>
                        <!--begin::Modal header-->
                        <!--begin::Modal body-->
                        <div
                          class="modal-body scroll-y mx-5 mx-xl-18 pt-0 pb-15"
                        >
                          <!--begin::Content-->
                          <div class="text-center mb-13">
                            <h1 class="mb-3">Search Users</h1>
                            <div class="text-muted fw-semibold fs-5">
                              Invite Collaborators To Your Project
                            </div>
                          </div>
                          <!--end::Content-->
                          <!--begin::Search-->
                          <div
                            id="kt_modal_users_search_handler"
                            data-kt-search-keypress="true"
                            data-kt-search-min-length="2"
                            data-kt-search-enter="enter"
                            data-kt-search-layout="inline"
                          >
                            <!--begin::Form-->
                            <form
                              data-kt-search-element="form"
                              class="w-100 position-relative mb-5"
                              autocomplete="off"
                            >
                              <!--begin::Hidden input(Added to disable form autocomplete)-->
                              <input type="hidden" />
                              <!--end::Hidden input-->
                              <!--begin::Icon-->
                              <i
                                class="ki-duotone ki-magnifier fs-2 fs-lg-1 text-gray-500 position-absolute top-50 ms-5 translate-middle-y"
                              >
                                <span class="path1"></span>
                                <span class="path2"></span>
                              </i>
                              <!--end::Icon-->
                              <!--begin::Input-->
                              <input
                                type="text"
                                class="form-control form-control-lg form-control-solid px-15"
                                name="search"
                                value=""
                                placeholder="Search by username, full name or email..."
                                data-kt-search-element="input"
                              />
                              <!--end::Input-->
                              <!--begin::Spinner-->
                              <span
                                class="position-absolute top-50 end-0 translate-middle-y lh-0 d-none me-5"
                                data-kt-search-element="spinner"
                              >
                                <span
                                  class="spinner-border h-15px w-15px align-middle text-muted"
                                ></span>
                              </span>
                              <!--end::Spinner-->
                              <!--begin::Reset-->
                              <span
                                class="btn btn-flush btn-active-color-primary position-absolute top-50 end-0 translate-middle-y lh-0 me-5 d-none"
                                data-kt-search-element="clear"
                              >
                                <i
                                  class="ki-duotone ki-cross fs-2 fs-lg-1 me-0"
                                >
                                  <span class="path1"></span>
                                  <span class="path2"></span>
                                </i>
                              </span>
                              <!--end::Reset-->
                            </form>
                            <!--end::Form-->
                            <!--begin::Wrapper-->
                            <div class="py-5">
                              <!--begin::Suggestions-->
                              <div data-kt-search-element="suggestions">
                                <!--begin::Heading-->
                                <h3 class="fw-semibold mb-5">
                                  Recently searched:
                                </h3>
                                <!--end::Heading-->
                                <!--begin::Users-->
                                <div class="mh-375px scroll-y me-n7 pe-7">
                                  <!--begin::User-->
                                  <a
                                    href="#"
                                    class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1"
                                  >
                                    <!--begin::Avatar-->
                                    <div
                                      class="symbol symbol-35px symbol-circle me-5"
                                    >
                                      <img
                                        alt="Pic"
                                        src="assets/media/avatars/300-6.jpg"
                                      />
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Info-->
                                    <div class="fw-semibold">
                                      <span class="fs-6 text-gray-800 me-2"
                                        >Emma Smith</span
                                      >
                                      <span class="badge badge-light"
                                        >Art Director</span
                                      >
                                    </div>
                                    <!--end::Info-->
                                  </a>
                                  <!--end::User-->
                                  <!--begin::User-->
                                  <a
                                    href="#"
                                    class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1"
                                  >
                                    <!--begin::Avatar-->
                                    <div
                                      class="symbol symbol-35px symbol-circle me-5"
                                    >
                                      <span
                                        class="symbol-label bg-light-danger text-danger fw-semibold"
                                        >M</span
                                      >
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Info-->
                                    <div class="fw-semibold">
                                      <span class="fs-6 text-gray-800 me-2"
                                        >Melody Macy</span
                                      >
                                      <span class="badge badge-light"
                                        >Marketing Analytic</span
                                      >
                                    </div>
                                    <!--end::Info-->
                                  </a>
                                  <!--end::User-->
                                  <!--begin::User-->
                                  <a
                                    href="#"
                                    class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1"
                                  >
                                    <!--begin::Avatar-->
                                    <div
                                      class="symbol symbol-35px symbol-circle me-5"
                                    >
                                      <img
                                        alt="Pic"
                                        src="assets/media/avatars/300-1.jpg"
                                      />
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Info-->
                                    <div class="fw-semibold">
                                      <span class="fs-6 text-gray-800 me-2"
                                        >Max Smith</span
                                      >
                                      <span class="badge badge-light"
                                        >Software Enginer</span
                                      >
                                    </div>
                                    <!--end::Info-->
                                  </a>
                                  <!--end::User-->
                                  <!--begin::User-->
                                  <a
                                    href="#"
                                    class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1"
                                  >
                                    <!--begin::Avatar-->
                                    <div
                                      class="symbol symbol-35px symbol-circle me-5"
                                    >
                                      <img
                                        alt="Pic"
                                        src="assets/media/avatars/300-5.jpg"
                                      />
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Info-->
                                    <div class="fw-semibold">
                                      <span class="fs-6 text-gray-800 me-2"
                                        >Sean Bean</span
                                      >
                                      <span class="badge badge-light"
                                        >Web Developer</span
                                      >
                                    </div>
                                    <!--end::Info-->
                                  </a>
                                  <!--end::User-->
                                  <!--begin::User-->
                                  <a
                                    href="#"
                                    class="d-flex align-items-center p-3 rounded bg-state-light bg-state-opacity-50 mb-1"
                                  >
                                    <!--begin::Avatar-->
                                    <div
                                      class="symbol symbol-35px symbol-circle me-5"
                                    >
                                      <img
                                        alt="Pic"
                                        src="assets/media/avatars/300-25.jpg"
                                      />
                                    </div>
                                    <!--end::Avatar-->
                                    <!--begin::Info-->
                                    <div class="fw-semibold">
                                      <span class="fs-6 text-gray-800 me-2"
                                        >Brian Cox</span
                                      >
                                      <span class="badge badge-light"
                                        >UI/UX Designer</span
                                      >
                                    </div>
                                    <!--end::Info-->
                                  </a>
                                  <!--end::User-->
                                </div>
                                <!--end::Users-->
                              </div>
                              <!--end::Suggestions-->
                              <!--begin::Results(add d-none to below element to hide the users list by default)-->
                              <div
                                data-kt-search-element="results"
                                class="d-none"
                              >
                                <!--begin::Users-->
                                <div class="mh-375px scroll-y me-n7 pe-7">
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="0"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='0']"
                                          value="0"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-6.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Emma Smith</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          smith@kpmg.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="1"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='1']"
                                          value="1"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-danger text-danger fw-semibold"
                                          >M</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Melody Macy</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          melody@altbox.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1" selected="selected">
                                          Guest
                                        </option>
                                        <option value="2">Owner</option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="2"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='2']"
                                          value="2"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-1.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Max Smith</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          max@kt.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="3"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='3']"
                                          value="3"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-5.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Sean Bean</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          sean@dellito.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="4"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='4']"
                                          value="4"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-25.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Brian Cox</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          brian@exchange.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="5"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='5']"
                                          value="5"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-warning text-warning fw-semibold"
                                          >C</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Mikaela Collins</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          mik@pex.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="6"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='6']"
                                          value="6"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-9.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Francis Mitcham</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          f.mit@kpmg.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="7"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='7']"
                                          value="7"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-danger text-danger fw-semibold"
                                          >O</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Olivia Wild</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          olivia@corpmail.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="8"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='8']"
                                          value="8"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-primary text-primary fw-semibold"
                                          >N</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Neil Owen</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          owen.neil@gmail.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1" selected="selected">
                                          Guest
                                        </option>
                                        <option value="2">Owner</option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="9"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='9']"
                                          value="9"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-23.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Dan Wilson</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          dam@consilting.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="10"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='10']"
                                          value="10"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-danger text-danger fw-semibold"
                                          >E</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Emma Bold</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          emma@intenso.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="11"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='11']"
                                          value="11"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-12.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Ana Crown</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          ana.cf@limtel.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1" selected="selected">
                                          Guest
                                        </option>
                                        <option value="2">Owner</option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="12"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='12']"
                                          value="12"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-info text-info fw-semibold"
                                          >A</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Robert Doe</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          robert@benko.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="13"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='13']"
                                          value="13"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-13.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >John Miller</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          miller@mapple.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="14"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='14']"
                                          value="14"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <span
                                          class="symbol-label bg-light-success text-success fw-semibold"
                                          >L</span
                                        >
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Lucy Kunic</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          lucy.m@fentech.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2" selected="selected">
                                          Owner
                                        </option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="15"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='15']"
                                          value="15"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-21.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Ethan Wilder</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          ethan@loop.com.au
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1" selected="selected">
                                          Guest
                                        </option>
                                        <option value="2">Owner</option>
                                        <option value="3">Can Edit</option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                  <!--begin::Separator-->
                                  <div
                                    class="border-bottom border-gray-300 border-bottom-dashed"
                                  ></div>
                                  <!--end::Separator-->
                                  <!--begin::User-->
                                  <div
                                    class="rounded d-flex flex-stack bg-active-lighten p-4"
                                    data-user-id="16"
                                  >
                                    <!--begin::Details-->
                                    <div class="d-flex align-items-center">
                                      <!--begin::Checkbox-->
                                      <label
                                        class="form-check form-check-custom form-check-solid me-5"
                                      >
                                        <input
                                          class="form-check-input"
                                          type="checkbox"
                                          name="users"
                                          data-kt-check="true"
                                          data-kt-check-target="[data-user-id='16']"
                                          value="16"
                                        />
                                      </label>
                                      <!--end::Checkbox-->
                                      <!--begin::Avatar-->
                                      <div
                                        class="symbol symbol-35px symbol-circle"
                                      >
                                        <img
                                          alt="Pic"
                                          src="assets/media/avatars/300-6.jpg"
                                        />
                                      </div>
                                      <!--end::Avatar-->
                                      <!--begin::Details-->
                                      <div class="ms-5">
                                        <a
                                          href="#"
                                          class="fs-5 fw-bold text-gray-900 text-hover-primary mb-2"
                                          >Emma Smith</a
                                        >
                                        <div class="fw-semibold text-muted">
                                          smith@kpmg.com
                                        </div>
                                      </div>
                                      <!--end::Details-->
                                    </div>
                                    <!--end::Details-->
                                    <!--begin::Access menu-->
                                    <div class="ms-2 w-100px">
                                      <select
                                        class="form-select form-select-solid form-select-sm"
                                        data-control="select2"
                                        data-hide-search="true"
                                      >
                                        <option value="1">Guest</option>
                                        <option value="2">Owner</option>
                                        <option value="3" selected="selected">
                                          Can Edit
                                        </option>
                                      </select>
                                    </div>
                                    <!--end::Access menu-->
                                  </div>
                                  <!--end::User-->
                                </div>
                                <!--end::Users-->
                                <!--begin::Actions-->
                                <div class="d-flex flex-center mt-15">
                                  <button
                                    type="reset"
                                    id="kt_modal_users_search_reset"
                                    data-bs-dismiss="modal"
                                    class="btn btn-active-light me-3"
                                  >
                                    Cancel
                                  </button>
                                  <button
                                    type="submit"
                                    id="kt_modal_users_search_submit"
                                    class="btn btn-primary"
                                  >
                                    Add Selected Users
                                  </button>
                                </div>
                                <!--end::Actions-->
                              </div>
                              <!--end::Results-->
                              <!--begin::Empty-->
                              <div
                                data-kt-search-element="empty"
                                class="text-center d-none"
                              >
                                <!--begin::Message-->
                                <div class="fw-semibold py-10">
                                  <div class="text-gray-600 fs-3 mb-2">
                                    No users found
                                  </div>
                                  <div class="text-muted fs-6">
                                    Try to search by username, full name or
                                    email...
                                  </div>
                                </div>
                                <!--end::Message-->
                                <!--begin::Illustration-->
                                <div class="text-center px-5">
                                  <img
                                    src="assets/media/illustrations/sketchy-1/1.png"
                                    alt=""
                                    class="w-100 h-200px h-sm-325px"
                                  />
                                </div>
                                <!--end::Illustration-->
                              </div>
                              <!--end::Empty-->
                            </div>
                            <!--end::Wrapper-->
                          </div>
                          <!--end::Search-->
                        </div>
                        <!--end::Modal body-->
                      </div>
                      <!--end::Modal content-->
                    </div>
                    <!--end::Modal dialog-->
                  </div>
                  <!--end::Modal - Users Search-->
                  <!--end::Modals-->
                </div>
                <!--end::Content-->
              </div>
              <!--end::Content wrapper-->
    
            </div>
            <!--end:::Main-->
          </div>
          <!--end::Wrapper container-->
        </div>
        <!--honnnnnnnnnnnnnnnnnnnnnnnnnnnnn-->
        <!--end::Wrapper-->


   <div  class="modal fade" id="AddEventModal" tabindex="-1" aria-hidden="true">
				<!--begin::Modal dialog-->
				<div class="modal-dialog modal-dialog-centered mw-650px">
								<!--begin::Modal content-->
								<div class="modal-content">
												<!--begin::Modal header-->
												<div class="modal-header" id="kt_modal_add_user_header">
													<!--begin::Modal title-->
													<h2 class="fw-bold">Add Event</h2>
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
																<label class="required fw-semibold fs-6 mb-2">Event Title</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="text" name="EventTitle" id="EventTitle" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="ex:Hicking"  />
																<!--end::Input-->
															</div>
															<!--end::Input group-->
															<!--begin::Input group-->
															<div class="fv-row mb-7">
																<!--begin::Label-->
																<label class="required fw-semibold fs-6 mb-2">Event Description</label>
																<!--end::Label-->
																<!--begin::Input-->
																<textarea type="text" name="Description" id="Description" class="form-control form-control-solid mb-3 mb-lg-0"   >
                                                                    </textarea>
																<!--end::Input-->
															</div>
															

															<div class="fv-row mb-7">
																<!--begin::Label-->
																<label class="required fw-semibold fs-6 mb-2">From Date</label>
																<!--end::Label-->
																<!--begin::Input-->
																<input type="date" name="FromDate" id="FromDate" class="form-control form-control-solid mb-3 mb-lg-0"  />
																<!--end::Input-->
												            </div>
                                                            	<div class="fv-row mb-7">
								                            <!--begin::Label-->
								                            <label class="required fw-semibold fs-6 mb-2">To Date</label>
								                            <!--end::Label-->
								                            <!--begin::Input-->
								                            <input type="date" name="ToDate" id="ToDate" class="form-control form-control-solid mb-3 mb-lg-0"  />
								                            <!--end::Input-->
                                                             </div>
                                                            <div class="fv-row mb-7">
				                                           <!--begin::Label-->
				                                           <label class="required fw-semibold fs-6 mb-2">Event Cost</label>
				                                           <!--end::Label-->
				                                           <!--begin::Input-->
				                                           <input type="text" name="Cost" id="Cost" class="form-control form-control-solid mb-3 mb-lg-0" placeholder="30$$"  />
				                                           <!--end::Input-->
                                                                </div>
                                                            <div class="fv-row mb-7">
                                                            <label class="required fw-semibold fs-6 mb-2">Destination</label>
                                                            <!--end::Label-->
                                                            <!--begin::Input-->
                                                            <input type="text" name="destination" id="Destination" class="form-control form-control-solid mb-3 mb-lg-0"   />
                                                            <!--end::Input-->
                                                                 </div>
														<div class="mb-10">
															<label class="required fw-semibold fs-6 mb-2">Category</label>
															<select id="Category" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
															<option></option>
																					
															</select>
															</div>
															<div class="mb-10">
																	<label class="required fw-semibold fs-6 mb-2">Status	</label>
																	<select id="Status" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
																	<option></option>
																			
																	</select>
															</div>
                                                            <div class="mb-10">
								                             <label class="required fw-semibold fs-6 mb-2">Guide</label>
								                             <select id="Guide" class="form-select form-select-solid fw-bold" data-kt-select2="true" data-placeholder="Select option" data-allow-clear="true" data-kt-user-table-filter="two-step" data-hide-search="true">
								                             <option></option>
															
								                             </select>
                                                            </div>

                                                                                        <!--begin::Input group-->
                                                           <div class="d-flex flex-column mb-7 fv-row">
                                                                   <!--begin::Label-->
                                                                   <label class=" fs-6 fw-semibold mb-2">Image</label>
                                                                   <!--end::Label-->

                                                                   <!--begin::Input-->
                                                                   <input onchange="UploadMediaFile()" id="modalImage" type="file" name="img" accept="image/*" class="form-control form-control-solid" placeholder=""  value="clear image" />
                                                                   <!--end::Input-->
                                                                  <div class="col-lg-6 bottommargin-sm" id="ATTSEC">
                                                                           <div class="uppy-Root uppy-FileInput-container">
                                                                              <button id="viewImage" class="btn btn-icon btn-bg-light btn-active-color-primary btn-sm me-1 view-notif" ><span class="svg-icon svg-icon-3 icon-view"> <svg enable-background="new 0 0 32 32" height="32px" id="svg2" version="1.1" viewBox="0 0 32 32" width="32px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:cc="http://creativecommons.org/ns#" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd" xmlns:svg="http://www.w3.org/2000/svg"><g id="background"><rect fill="none" height="32" width="32"></rect></g><g id="view"><circle cx="16" cy="16" r="6"></circle><path d="M16,6C6,6,0,15.938,0,15.938S6,26,16,26s16-10,16-10S26,6,16,6z M16,24c-8.75,0-13.5-8-13.5-8S7.25,8,16,8s13.5,8,13.5,8   S24.75,24,16,24z"></path></g></svg></span></button>
                                                                           </div>
                                                                   <label id="fileName2"></label>
                                                              </div>
                                                               </div>
                                                               <!--end::Input group-->


															<!--end::Input group-->
															<!--begin::Input group-->
															
															<!--end::Input group-->
														
														<!--end::Scroll-->
														<!--begin::Actions-->
														<div class="text-center pt-15">
															<button id="discard" class="btn btn-light me-3" data-kt-users-modal-action="cancel">Discard</button>
															<button id="SaveEvent" class="btn btn-primary" data-kt-users-modal-action="submit">
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

       </div>

    <script src="Pages/AllEvents.js"></script>

</asp:Content>
