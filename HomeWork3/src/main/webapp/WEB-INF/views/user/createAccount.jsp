<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="rica" />
    <meta name="keywords" content="rica" />
    <meta name="author" content="rica" />
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>Rica</title>

    <!--Google font-->
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
      rel="stylesheet"
    />

    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css" />

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css" />

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css" />

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css" />

    <!-- alert custom -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </head>

  <body>
    <!-- pre-loader start -->
    <div class="loader-wrapper img-gif">
      <img src="../assets/images/loader.gif" alt="" />
    </div>
    <!-- pre-loader end -->

    <!-- header start -->
    <header class="inner-page">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="menu">
              <div class="brand-logo">
                <a href="../index.html">
                  <img
                    src="../assets/images/icon/footer-logo.png"
                    alt=""
                    class="img-fluid blur-up lazyload"
                  />
                </a>
              </div>
              <nav>
                <div class="main-navbar">
                  <!-- <div id="mainnav">
                    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
                    <div class="menu-overlay"></div>
                    <ul class="nav-menu">
                      <li class="back-btn">
                        <div class="mobile-back text-right">
                          <span>Back</span>
                          <i aria-hidden="true" class="fa fa-angle-right pl-2"></i>
                        </div>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">Home</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Hotel Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="hotel-layout.html">classic</a></li>
                              <li><a href="hotel-layout-2.html">minimal</a></li>
                              <li><a href="hotel-layout-3.html">vector</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">Tour Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="tour-layout.html">modern</a></li>
                              <li><a href="tour-layout-2.html">trending</a></li>
                              <li><a href="tour-layout-3.html">Vector demo</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">cab Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="cab-layout.html">modern</a></li>
                              <li><a href="cab-layout-2.html">classic</a></li>
                              <li><a href="cab-layout-3.html">Map demo</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">flight Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="flight-layout.html">modern</a></li>
                              <li><a href="flight-layout-2.html">minimal</a></li>
                              <li><a href="flight-layout-3.html">left sidebar</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">restaurant Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="restaurant-layout.html">classic</a></li>
                              <li><a href="restaurant-layout-2.html">minimal</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">mix Demo</a>
                            <ul class="nav-sub-childmenu level1">
                              <li><a href="mix-layout.html">classic</a></li>
                              <li><a href="mix-layout-2.html">minimal</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">hotel</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu level1">
                              <li>
                                <a href="javascript:void(0)" class="menu-title">grid view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-2-grid.html">2 Grid</a></li>
                                  <li><a href="hotel-3-grid.html">3 Grid</a></li>
                                  <li><a href="hotel-4-grid.html">4 Grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">sidebar</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-left-sidebar.html">Left Sidebar</a></li>
                                  <li><a href="hotel-right-sidebar.html">Right Sidebar</a></li>
                                  <li><a href="hotel-no-sidebar.html">No Sidebar</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-map.html">google map</a></li>
                                  <li><a href="hotel-map-leaflet.html">leaflet map</a></li>
                                  <li><a href="hotel-map-here.html">here map</a></li>
                                  <li><a href="hotel-map-bing.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">map modal</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-map-modal.html">google map</a></li>
                                  <li><a href="hotel-map-leaflet-modal.html">leaflet map</a></li>
                                  <li><a href="hotel-map-here-modal.html">here map</a></li>
                                  <li><a href="hotel-map-bing-modal.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">onclick map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-clickmap.html">google map</a></li>
                                  <li><a href="hotel-leaflet-clickmap.html">leaflet map</a></li>
                                  <li><a href="hotel-here-clickmap.html">here map</a></li>
                                  <li><a href="hotel-bing-clickmap.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">left side map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-leftmap.html">google map</a></li>
                                  <li><a href="hotel-leaflet-leftmap.html">leaflet map</a></li>
                                  <li><a href="hotel-here-leftmap.html">here map</a></li>
                                  <li><a href="hotel-bing-leftmap.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">list view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="hotel-list.html">List View</a></li>
                                  <li>
                                    <a href="javascript:void(0)" class="menu-title">Map</a>
                                    <ul class="nav-sub-childmenu submenu-content level3">
                                      <li><a href="hotel-list-map.html">google map</a></li>
                                      <li><a href="hotel-leaflet-list-map.html">leaflet map</a></li>
                                      <li><a href="hotel-here-list-map.html">here map</a></li>
                                      <li><a href="hotel-bing-list-map.html">bing map</a></li>
                                    </ul>
                                  </li>
                                  <li><a href="hotel-list-slider.html">Slider</a></li>
                                  <li><a href="hotel-list-images.html">multiple Image</a></li>
                                  <li><a href="hotel-list-video.html">Video</a></li>
                                </ul>
                              </li>
                              <li><a href="hotel-slider.html">Hotel with Slider</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="hotel-single-1.html">classic</a></li>
                              <li><a href="hotel-single-9.html">360 view</a></li>
                              <li><a href="hotel-single-2.html">without top</a></li>
                              <li><a href="hotel-single-3.html">left sidebar</a></li>
                              <li><a href="hotel-single-4.html">info tab</a></li>
                              <li><a href="hotel-single-5.html">image slider</a></li>
                              <li><a href="hotel-single-6.html">thumbnail image</a></li>
                              <li><a href="hotel-single-7.html">image box</a></li>
                              <li><a href="hotel-single-8.html">theme breadcrumb</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="hotel-booking.html">booking page</a></li>
                              <li><a href="hotel-checkout.html">checkout</a></li>
                              <li><a href="hotel-booking-failed.html">booking failed</a></li>
                              <li><a href="hotel-booking-success.html">booking success</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">tour</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li>
                                <a href="javascript:void(0)" class="menu-title">grid view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="tour-2-grid.html">2 Grid</a></li>
                                  <li><a href="tour-3-grid.html">3 Grid</a></li>
                                  <li><a href="tour-4-grid.html">4 Grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">sidebar</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="tour-left-sidebar.html">left sidebar</a></li>
                                  <li><a href="tour-right-sidebar.html">right sidebar</a></li>
                                  <li><a href="tour-no-sidebar.html">no sidebar</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">list view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="tour-list.html">list view</a></li>
                                  <li><a href="tour-list-slider.html">slider</a></li>
                                  <li><a href="tour-list-images.html">multiple images</a></li>
                                  <li><a href="tour-list-video.html">video</a></li>
                                </ul>
                              </li>
                              <li><a href="tour-slider.html">with slider</a></li>
                              <li><a href="tour-minimal.html">minimal</a></li>
                              <li><a href="tour-classic.html">classic</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="tour-single-1.html">tab</a></li>
                              <li><a href="tour-single-2.html">full page detail</a></li>
                              <li><a href="tour-single-3.html">slider</a></li>
                              <li><a href="tour-single-4.html">360 view</a></li>
                              <li><a href="tour-single-5.html">Full page slider</a></li>
                              <li><a href="tour-single-6.html">classic design</a></li>
                              <li><a href="tour-single-7.html">video </a></li>
                              <li><a href="tour-single-8.html">left-sidebar </a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="tour-booking.html">booking page</a></li>
                              <li><a href="tour-checkout.html">checkout</a></li>
                              <li><a href="tour-booking-failed.html">booking failed</a></li>
                              <li><a href="tour-booking-success.html">booking success</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">flight</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="flight-left-sidebar.html">left sidebar</a></li>
                              <li><a href="flight-right-sidebar.html">right sidebar</a></li>
                              <li><a href="flight-top-filter.html">top filter</a></li>
                              <li><a href="flight-round-trip.html">round trip</a></li>
                              <li><a href="flight-not-found.html">not found</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="flight-booking.html">book now</a></li>
                              <li><a href="flight-booking-addons.html">booking add-ons</a></li>
                              <li><a href="flight-booking-payment.html">booking payment</a></li>
                              <li><a href="flight-booking-success.html">booking success</a></li>
                              <li><a href="flight-booking-failed.html">booking failed</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">cab</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li>
                                <a href="javascript:void(0)" class="menu-title">list view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="cab-list-leftsidebar.html">left sidebar</a></li>
                                  <li><a href="cab-list-rightsidebar.html">right sidebar</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">grid view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="cab-3-grid.html">3 grid</a></li>
                                  <li><a href="cab-4-grid.html">4 grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">sidebar</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="cab-left-sidebar.html">left sidebar</a></li>
                                  <li><a href="cab-right-sidebar.html">right sidebar</a></li>
                                  <li><a href="cab-no-sidebar.html">no sidebar</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">with map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="cab-google-map.html">google map</a></li>
                                  <li><a href="cab-here-map.html">here map</a></li>
                                  <li><a href="cab-bing-map.html">bing map</a></li>
                                </ul>
                              </li>
                              <li><a href="cab-slider.html">slider</a></li>
                              <li><a href="cab-not-found.html">not found</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="cab-booking.html">booking</a></li>
                              <li><a href="cab-booking-payment.html">booking payment</a></li>
                              <li><a href="cab-booking-success.html">booking success</a></li>
                              <li><a href="cab-booking-failed.html">booking failed</a></li>
                            </ul>
                          </li>
                          <li><a href="cab-single-detail.html">single detail</a></li>
                        </ul>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="nav-link menu-title">restaurant</a>
                        <ul class="nav-submenu menu-content">
                          <li>
                            <a href="#" class="menu-title">Listing</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li>
                                <a href="javascript:void(0)" class="menu-title">grid view</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-2-grid.html">2 Grid</a></li>
                                  <li><a href="restaurant-3-grid.html">3 Grid</a></li>
                                  <li><a href="restaurant-4-grid.html">4 Grid</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">sidebar</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-left-sidebar.html">left sidebar</a></li>
                                  <li><a href="restaurant-right-sidebar.html">right sidebar</a></li>
                                  <li><a href="restaurant-no-sidebar.html">no sidebar</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-map.html">google map</a></li>
                                  <li><a href="restaurant-leaflet-map.html">leaflet map</a></li>
                                  <li><a href="restaurant-here-map.html">here map</a></li>
                                  <li><a href="restaurant-bing-map.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">map modal</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-map-modal.html">google map</a></li>
                                  <li>
                                    <a href="restaurant-map-leaflet-modal.html">leaflet map</a>
                                  </li>
                                  <li><a href="restaurant-map-here-modal.html">here map</a></li>
                                  <li><a href="restaurant-map-bing-modal.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">onclick map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-clickmap.html">google map</a></li>
                                  <li>
                                    <a href="restaurant-clickmap-leaflet.html">leaflet map</a>
                                  </li>
                                  <li><a href="restaurant-clickmap-here.html">here map</a></li>
                                  <li><a href="restaurant-clickmap-bing.html">bing map</a></li>
                                </ul>
                              </li>
                              <li>
                                <a href="javascript:void(0)" class="menu-title">left side map</a>
                                <ul class="nav-sub-childmenu submenu-content level2">
                                  <li><a href="restaurant-leftmap.html">google map</a></li>
                                  <li><a href="restaurant-leftmap-leaflet.html">leaflet map</a></li>
                                  <li><a href="restaurant-leftmap-here.html">here map</a></li>
                                  <li><a href="restaurant-leftmap-bing.html">bing map</a></li>
                                </ul>
                              </li>
                              <li><a href="restaurant-fullwidth.html">full width</a></li>
                              <li><a href="restaurant-slider.html">image slider</a></li>
                              <li><a href="restaurant-not-found.html">not found</a></li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">single page</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li>
                                <a href="restaurant-single-1.html" target="_blank">classic</a>
                              </li>
                              <li>
                                <a href="restaurant-single-2.html" target="_blank">360 view</a>
                              </li>
                              <li>
                                <a href="restaurant-single-3.html" target="_blank">image slider</a>
                              </li>
                              <li>
                                <a href="restaurant-single-4.html" target="_blank">left cart</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="#" class="menu-title">booking</a>
                            <ul class="nav-sub-childmenu submenu-content level1">
                              <li><a href="restaurant-checkout.html">checkout</a></li>
                              <li><a href="restaurant-order-failed.html">order failed</a></li>
                              <li><a href="restaurant-order-success.html">order sucess</a></li>
                            </ul>
                          </li>
                        </ul>
                      </li>
                      <li class="mega-menu">
                        <a href="#" class="nav-link menu-title"> pages</a>
                        <div class="mega-menu-container menu-content">
                          <div class="container">
                            <div class="row">
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>portfolio</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li><a href="portfolio-grid-2.html">2 grid</a></li>
                                      <li><a href="portfolio-grid-3.html">3 grid</a></li>
                                      <li><a href="portfolio-grid-4.html">4 grid</a></li>
                                      <li><a href="portfolio-title-2.html">2 grid title</a></li>
                                      <li><a href="portfolio-title-3.html">3 grid title</a></li>
                                      <li><a href="portfolio-title-4.html">4 grid title</a></li>
                                      <li><a href="masonry-3-grid.html">3 masonry</a></li>
                                      <li><a href="masonry-4-grid.html">4 masonry</a></li>
                                      <li><a href="portfolio-parallax.html">parallax</a></li>
                                      <li>
                                        <a href="portfolio-center-slide.html">center slides</a>
                                      </li>
                                      <li><a href="portfolio-creative-1.html">creative 1</a></li>
                                      <li><a href="portfolio-creative-2.html">creative 2</a></li>
                                      <li><a href="portfolio-creative-3.html">creative 3</a></li>
                                      <li><a href="portfolio-creative-4.html">creative 4</a></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>blog page</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li><a href="blog-left-sidebar.html">left sidebar</a></li>
                                      <li><a href="blog-right-sidebar.html">right sidebar</a></li>
                                      <li><a href="blog-no-sidebar.html">no sidebar</a></li>
                                      <li>
                                        <a href="blog-creative-left-sidebar.html"
                                          >creative left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-creative-right-sidebar.html"
                                          >creative right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-creative-no-sidebar.html"
                                          >creative no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-left-sidebar.html">list left sidebar</a>
                                      </li>
                                      <li>
                                        <a href="blog-list-right-sidebar.html"
                                          >list right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-no-sidebar.html">list no sidebar</a>
                                      </li>
                                      <li>
                                        <a href="blog-masonry-left-sidebar.html"
                                          >masonry left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-masonry-right-sidebar.html"
                                          >masonry right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-masonry-no-sidebar.html"
                                          >masonry no sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-mix-left-sidebar.html"
                                          >mix list left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-list-mix-right-sidebar.html"
                                          >mix list right sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-grid-mix-left-sidebar.html"
                                          >mix grid left sidebar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="blog-grid-mix-right-sidebar.html"
                                          >mix grid right sidebar</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>blog detail pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="blog-detail-left-sidebar.html">left sidebar</a>
                                      </li>
                                      <li>
                                        <a href="blog-detail-right-sidebar.html">right sidebar</a>
                                      </li>
                                      <li><a href="blog-detail-no-sidebar.html">no sidebar</a></li>
                                      <li>
                                        <a href="blog-detail-gallery.html">detail with gallery</a>
                                      </li>
                                      <li>
                                        <a href="blog-detail-video.html">detail with video</a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>elements - filter</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="tour-left-sidebar.html" target="_blank">sidebar</a>
                                      </li>
                                      <li><a href="hotel-map.html" target="_blank">popup</a></li>
                                      <li>
                                        <a href="tour-4-grid.html" target="_blank">slide down</a>
                                      </li>
                                      <li>
                                        <a href="flight-top-filter.html" target="_blank"
                                          >top filter</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>elements - breadcrumb</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li><a href="hotel-2-grid.html" target="_blank">basic</a></li>
                                      <li>
                                        <a href="portfolio-grid-2.html" target="_blank"
                                          >image with effect</a
                                        >
                                      </li>
                                      <li>
                                        <a href="cab-list-leftsidebar.html" target="_blank"
                                          >right content</a
                                        >
                                      </li>
                                      <li>
                                        <a href="flight-right-sidebar.html" target="_blank"
                                          >only image</a
                                        >
                                      </li>
                                      <li>
                                        <a href="restaurant-3-grid.html" target="_blank"
                                          >with searchbar</a
                                        >
                                      </li>
                                      <li>
                                        <a href="tour-2-grid.html" target="_blank">bird flying</a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>other pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li><a href="about-us.html">About us 1</a></li>
                                      <li><a href="about-us-2.html">About us 2</a></li>
                                      <li><a href="contact-1.html">contact us 1</a></li>
                                      <li><a href="contact-2.html">contact us 2</a></li>
                                      <li><a href="contact-3.html">contact us 3</a></li>
                                      <li><a href="coming-soon-1.html">coming soon 1</a></li>
                                      <li><a href="coming-soon-2.html">coming soon 2</a></li>
                                      <li><a href="coming-soon-3.html">coming soon 3</a></li>
                                      <li><a href="404.html">404</a></li>
                                      <li><a href="faq.html">FAQ</a></li>
                                      <li><a href="login.html">login</a></li>
                                      <li><a href="signup.html">register</a></li>
                                      <li class="highlight-link">
                                        <a href="user-dashboard.html"
                                          >user dashboard
                                          <i class="fa fa-bolt icon-trend" aria-hidden="true"></i
                                        ></a>
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>Email Template</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li>
                                        <a href="../email-template/offer.html" target="_blank"
                                          >offer</a
                                        >
                                      </li>
                                      <li>
                                        <a
                                          href="../email-template/confirmation.html"
                                          target="_blank"
                                          >confirmation</a
                                        >
                                      </li>
                                      <li>
                                        <a href="../email-template/thankyou.html" target="_blank"
                                          >thank you</a
                                        >
                                      </li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                              <div class="col mega-box">
                                <div class="link-section">
                                  <div class="submenu-title">
                                    <h5>element pages</h5>
                                  </div>
                                  <div class="submenu-content opensubmegamenu">
                                    <ul class="list">
                                      <li class="highlight-link">
                                        <a href="element-image-ratio.html"
                                          >image ratio
                                          <i class="fa fa-bolt icon-trend" aria-hidden="true"></i
                                        ></a>
                                      </li>
                                      <li><a href="element-about.html">about</a></li>
                                      <li><a href="element-app.html">application</a></li>
                                      <li><a href="element-blog.html">blog</a></li>
                                      <li><a href="element-button.html">button</a></li>
                                      <li><a href="element-category.html">category</a></li>
                                      <li>
                                        <a href="element-date-time.html">date & time picker</a>
                                      </li>
                                      <li><a href="element-full-banner.html">full banner</a></li>
                                      <li><a href="element-gallery.html">gallery</a></li>
                                      <li><a href="element-others.html">other element</a></li>
                                      <li><a href="element-service.html">service</a></li>
                                      <li><a href="element-subscribe.html">subscribe</a></li>
                                      <li><a href="element-testimonial.html">testimonial</a></li>
                                      <li><a href="element-title.html">title</a></li>
                                      <li><a href="element-video.html">video</a></li>
                                    </ul>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </li>
                    </ul>
                  </div> -->
                </div>
              </nav>
              <ul class="header-right">
                <!-- <li class="front-setting">
                                <select>
                                    <option value="volvo">USD</option>
                                    <option value="saab">EUR</option>
                                    <option value="opel">INR</option>
                                    <option value="audi">AUD</option>
                                </select>
                            </li>
                            <li class="front-setting">
                                <select>
                                    <option value="volvo">ENG</option>
                                    <option value="saab">FRE</option>
                                    <option value="opel">SPA</option>
                                    <option value="audi">DUT</option>
                                </select>
                            </li> -->
                <!-- <li class="user user-light">
                <a href="#">
                  <i class="fas fa-user"></i>
                </a>
              </li> -->
                <li class="setting">
                  <a href="#"> <i class="fas fa-cog"></i> </a>
                  <ul class="setting-open">
                    <li class="front-setting">
                      <select>
                        <option value="volvo">USD</option>
                        <option value="saab">EUR</option>
                        <option value="opel">INR</option>
                        <option value="audi">AUD</option>
                      </select>
                    </li>
                    <li class="front-setting">
                      <select>
                        <option value="volvo">ENG</option>
                        <option value="saab">FRE</option>
                        <option value="opel">SPA</option>
                        <option value="audi">DUT</option>
                      </select>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!--  header end -->

    <!-- breadcrumb start -->
    <section class="breadcrumb-section pt-0">
      <img src="../assets/images/main_img2.jpg" class="bg-img img-fluid blur-up lazyload" alt="" />
      <div class="breadcrumb-content">
        <div>
          <h2>Create Account</h2>
          <nav aria-label="breadcrumb" class="theme-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="/index">Home</a></li>
              <li class="breadcrumb-item active" aria-current="page">Create Account</li>
            </ol>
          </nav>
        </div>
      </div>
      <div class="title-breadcrumb">Rica</div>
    </section>
    <!-- breadcrumb end -->

    <!-- section start -->
    <section class="section-b-space dark-cls animated-section">
      <img
        src="../assets/images/cab/grey-bg.jpg"
        alt=""
        class="img-fluid blur-up lazyload bg-img"
      />
      <div class="animation-section">
        <div class="cross po-1"></div>
        <div class="cross po-2"></div>
        <div class="round po-4"></div>
        <div class="round po-5"></div>
        <div class="round r-y po-8"></div>
        <div class="square po-10"></div>
        <div class="square po-11"></div>
      </div>
      <div class="container">
        <div class="row">
          <div class="offset-lg-3 col-lg-6 offset-sm-2 col-sm-8 col-12">
            <div class="account-sign-in">
              <div class="title">
                <h3>계정 생성하기</h3>
              </div>
              <!-- <div class="login-with">
                <h6>log in with</h6>
                <div class="login-social row">
                  <div class="col">
                    <a class="boxes">
                      <img
                        src="../assets/images/icon/social/facebook.png"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <h6>facebook</h6>
                    </a>
                  </div>
                  <div class="col">
                    <a class="boxes">
                      <img
                        src="../assets/images/icon/social/google.png"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <h6>google</h6>
                    </a>
                  </div>
                </div>
                <div class="divider">
                  <h6>OR</h6>
                </div>
              </div> -->
              <form action="createAccount" method="post">
                <div class="form-group">
                  <input type="hidden" value="A" name="job" />
                  <label for="userName">이름</label>
                  <input
                    type="text"
                    class="form-control"
                    id="userName"
                    name="userName"
                    placeholder="이름을 입력하세요"
                  />
                  <label for="userName">아이디</label>
                  <input
                    type="text"
                    class="form-control"
                    id="userId"
                    name="userId"
                    placeholder="아이디 입력하세요"
                  />
                  <label for="exampleInputEmail1" style="margin-top: 20px">이메일</label>
                  <input
                    type="email"
                    class="form-control"
                    id="userEmail"
                    name="userEmail"
                    aria-describedby="emailHelp"
                    placeholder="이메일을 입력하세요"
                  />
                  <small id="emailHelp" class="form-text text-muted"
                    >이메일은 공유되지 않습니다</small
                  >
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">비밀번호</label>
                  <input
                    type="password"
                    class="form-control"
                    name="userPassword"
                    id="userPassword"
                    placeholder="비밀번호"
                  />
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">비밀번호 확인</label>
                  <input
                    type="password"
                    class="form-control"
                    name="isuserPassword"
                    id="checkpassword"
                    placeholder="비밀번호 확인"
                  />
                </div>
                 <div class="form-group">
                  <label for="exampleInputPassword1">SALT</label>
                  <input
                    type="password"
                    class="form-control"
                    name="SALT"
                    id="checkpassword"
                    value = "1234"
                  />
                </div>
                <!-- <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                  <label class="form-check-label" for="exampleCheck1">아이디 저장</label>
                </div> -->
                <input
                  id="createAccountButton"
                  type="submit"
                  value="계정 생성"
                  class="w-100 btn btn-solid btn-outline"
                />
              </form>
              <div class="button-bottom">
                <!-- <button type="submit" class="w-100 btn btn-solid">로그인</button>
                  <div class="divider">
                    <h6>or</h6>
                  </div> -->
                
              </div>
              <script>
               /* 
                window.onload = function () {
                  document.querySelector("#createAccountButton").onclick = register;
                };

                function checkPassword() {
                  let inputpassword1 = document.querySelector("#userPassword").value;
                  let checkpassword = document.querySelector("#checkpassword");

                  console.log(inputpassword1);
                  if (inputpassword1 != checkpassword.value) {
                    // 만일 두 인풋 필드값이 같지 않을 경우
                    // setCustomValidity의 값을 지정해 무조건 경고 표시가 나게 하고
                    swal("어머나", "비밀번호를 한번 더 체크해주세요", "error");
                    console.log("Passwords Don't Match");
                    checkpassword.value = "";
                    checkpassword.focus();
                    return false;
                  } else {
                    // 만일 두 인풋 필드값이 같을 경우
                    // 오류가 없으면 메시지를 빈 문자열로 설정해야한다. 오류 메시지가 비어 있지 않은 한 양식은 유효성 검사를 통과하지 않고 제출되지 않는다.
                    // 따라서 빈값을 주어 submit 처리되게 한다
                    checkpassword.setCustomValidity("");
                    return true;
                  }
                }

                async function register() {
                  // 사용자 입력 parameter 준비
                  // 백엔드 url 요청 - fetch
                  // response가 json으로 내려옴
                  // 성공 or 실패 처리

                  let userId = document.querySelector("#userId").value;
                  let userPassword = document.querySelector("#userPassword").value;
                  let userName = document.querySelector("#userName").value;
                  let userEmail = document.querySelector("#userEmail").value;

                  if (checkPassword() == false) {
                    checkpassword.focus();
                    return;
                  }

                  if (userId == "" || userPassword == "" || userName == "" || userEmail == "") {
                    swal(
                      "모두 입력하셨나요?",
                      "이름, 비밀번호, 아이디, 이메일을 모두 확인해주세요",
                      "error"
                    );
                  } else {
                    // 파라미터 이름(프로퍼티) : 값(value)
                    let urlParams = new URLSearchParams({
                      job: "A",
                      userId: userId,
                      userEmail: userEmail,
                      userName: userName,
                      userPassword: userPassword,
                    });

                    let fetchOptions = {
                      method: "POST",
                      body: urlParams,
                    };

                    //let response = await fetch("/users", fetchOptions);
                    //let data = await response.json();
                    //console.log(data);

                    if (data.result == "success") {
                      console.log("success");
                      window.location.href = "/login/login.jsp";
                    } else if (data.result == "fail") {
                      swal("어머나", "해당 아이디는 사용할 수 없습니다.", "error");
                      document.querySelector("#userId").value = "";
                    }
                  }
                }
                */
              </script> 
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- section end -->

    <!-- footer start -->
    <!-- <footer>
      <div class="footer section-b-space section-t-space">
        <div class="container">
          <div class="row order-row">
            <div class="col-xl-2 col-md-6 order-cls">
              <div class="footer-title mobile-title">
                <h5>contact us</h5>
              </div>
              <div class="footer-content">
                <div class="contact-detail">
                  <div class="footer-logo">
                    <img
                      src="../assets/images/icon/footer-logo.png"
                      alt=""
                      class="img-fluid blur-up lazyload"
                    />
                  </div>
                  <p>
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                    Ipsum has been the industry's standard dummy text ever since the 1500s, when an
                    unknown printer took a galley of type and scrambled it to make a type specimen
                    book. It has survived not only five centuries
                  </p>
                  <ul class="contact-list">
                    <li><i class="fas fa-map-marker-alt"></i> A-32, Albany, Newyork.</li>
                    <li><i class="fas fa-phone-alt"></i> 518 - 457 - 5181</li>
                    <li><i class="fas fa-envelope"></i> contact@gmail.com</li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-xl-2 col-md-3">
              <div class="footer-space">
                <div class="footer-title">
                  <h5>about</h5>
                </div>
                <div class="footer-content">
                  <div class="footer-links">
                    <ul>
                      <li><a href="#">about us</a></li>
                      <li><a href="#">FAQ</a></li>
                      <li><a href="#">login</a></li>
                      <li><a href="#">register</a></li>
                      <li><a href="#">terms & co.</a></li>
                      <li><a href="#">privacy</a></li>
                      <li><a href="#">support</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6">
              <div class="footer-title">
                <h5>our location</h5>
              </div>
              <div class="footer-content">
                <div class="footer-map">
                  <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.1583091352!2d-74.11976373946229!3d40.69766374859258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sin!4v1563449626439!5m2!1sen!2sin"
                    allowfullscreen
                  ></iframe>
                </div>
              </div>
            </div>
            <div class="col-xl-2 col-md-3 order-cls">
              <div class="footer-space">
                <div class="footer-title">
                  <h5>useful links</h5>
                </div>
                <div class="footer-content">
                  <div class="footer-links">
                    <ul>
                      <li><a href="#">home</a></li>
                      <li><a href="#">our vehical</a></li>
                      <li><a href="#">latest video</a></li>
                      <li><a href="#">services</a></li>
                      <li><a href="#">booking deal</a></li>
                      <li><a href="#">emergency call</a></li>
                      <li><a href="#">mobile app</a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-md-6">
              <div class="footer-title">
                <h5>new topics</h5>
              </div>
              <div class="footer-content">
                <div class="footer-blog">
                  <div class="media">
                    <div class="img-part">
                      <a href="#"
                        ><img
                          src="../assets/images/cab/blog-footer/1.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>recent news</h5>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum has been the industry's standard dummy text ever since the
                        1500s, when an unknown printer took a galley of type and scrambled it to
                        make a type specimen book. It has survived not only five centuries
                      </p>
                    </div>
                  </div>
                  <div class="media">
                    <div class="img-part">
                      <a href=""
                        ><img
                          src="../assets/images/cab/blog-footer/2.jpg"
                          class="img-fluid blur-up lazyload"
                          alt=""
                      /></a>
                    </div>
                    <div class="media-body">
                      <h5>recent news</h5>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                        Lorem Ipsum has been the industry's standard dummy text ever since the
                        1500s, when an unknown printer took a galley of type and scrambled it to
                        make a type specimen book. It has survived not only five centuries
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="sub-footer">
        <div class="container">
          <div class="row">
            <div class="col-xl-6 col-md-6 col-sm-12">
              <div class="footer-social">
                <ul>
                  <li>
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                  </li>
                  <li>
                    <a href="#"><i class="fab fa-google"></i></a>
                  </li>
                </ul>
              </div>
            </div>
            <div class="col-xl-6 col-md-6 col-sm-12">
              <div class="copy-right">
                <p>copyright 2019 rica by <i class="fas fa-heart"></i> pixelstrap</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer> -->
    <!-- footer end -->

    <!-- tap to top -->
    <div class="tap-top">
      <div>
        <i class="fas fa-angle-up"></i>
      </div>
    </div>
    <!-- tap to top end -->

    <!-- setting start -->
    <div class="theme-setting">
      <div class="dark">
        <input class="tgl tgl-skewed" id="dark" type="checkbox" />
        <label class="tgl-btn" data-tg-off="Dark" data-tg-on="Light" for="dark"></label>
      </div>
      <div class="rtl">
        <input class="tgl tgl-skewed" id="rtl" type="checkbox" />
        <label class="tgl-btn" data-tg-off="RTL" data-tg-on="LTR" for="rtl"></label>
      </div>
    </div>
    <!-- setting end -->

    <!-- latest jquery-->
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- popper js-->
    <script src="../assets/js/popper.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>
  </body>
</html>
