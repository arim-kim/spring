<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.util.*, com.mycom.enjoytrip.user.dto.UserDto,com.mycom.enjoytrip.AttractionInfo.dto.AttractionInfoDto, com.mycom.enjoytrip.Sido.dto.SidoDto  "%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	// DB ACCESS 
// 뿌려줄 데이터를 추출함 
List<SidoDto> sidoList = (List<SidoDto>) request.getAttribute("sidoList");
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="rica" />
<meta name="keywords" content="rica" />
<meta name="author" content="rica" />
<title>RICA</title>

<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Vampiro+One&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&display=swap"
	rel="stylesheet" />

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="resources/css/font-awesome.css" />

<!-- Animation -->
<link rel="stylesheet" type="text/css" href="resources/css/animate.css" />

<!--Slick slider css-->
<link rel="stylesheet" type="text/css" href="resources/css/slick.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/slick-theme.css" />

<!-- Date-time picker css -->
<link rel="stylesheet" type="text/css"
	href="resources/css/datepicker.min.css" />

<!-- magnific popup icon -->
<link rel="stylesheet" type="text/css"
	href="resources/css/magnific-popup.css" />

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="resources/css/bootstrap.css" />

<!-- Themify icon -->
<link rel="stylesheet" type="text/css"
	href="resources/css/themify-icons.css" />

<!-- Theme css -->
<link rel="stylesheet" type="text/css" href="resources/css/color1.css" />


<!-- alert custom -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>

<body>
	<!-- pre-loader start -->
	<div class="loader-wrapper img-gif">
		<img src="resources/images/loader.gif" alt="" />
	</div>
	<!-- pre-loader end -->

	<!-- header start -->
	<header class="overlay-black">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="menu">
						<div class="brand-logo">
							<a href="#"> </a>
						</div>
						<nav>
							<div class="main-navbar"></div>
						</nav>
						<ul class="header-right">
							<a href="/board/articleList.jsp" class="btn btn-rounded color1"
								style="margin: 5px; cursor: pointer;">게시판</a>
							<%
								UserDto user = (UserDto) session.getAttribute("user");
							if (user != null) {
							%>
							<li style="cursor: pointer;"><a
								class="btn btn-rounded color1"
								style="margin: 5px; cursor: pointer;"
								href="/Bookmark?job=listAllBookmark"> 마이페이지 </a></li>
							<%
								}
							%>
						</ul>
						<%
							if (user != null) {
						%>
						<div onclick="location.href='/loginout?job=logout';"
							id="loginStatus" class="btn btn-rounded color1"
							style="margin: 5px; cursor: pointer;">로그아웃</div>
						<%
							} else {
						%>
						<div onclick="location.href='/login/login.jsp';" id="loginStatus"
							style="margin: 5px; cursor: pointer"
							class="btn btn-rounded color1">로그인</div>
						<%
							}
						%>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--  header end -->


	<!-- home section start -->
	<section class="home_section p-0">
		<div class="classic-slider no-arrow">
			<div>
				<div class="home ripple-effect">
					<img src="resources/images/main_img.jpg"
						class="img-fluid blur-up lazyload bg-img" alt="" />
				</div>
			</div>
			<div>
				<div class="home ripple-effect">
					<img src="resources/images/main_img2.jpg"
						class="img-fluid blur-up lazyload bg-img" alt="" />
				</div>
			</div>
			<div>
				<div class="home ripple-effect">
					<img src="resources/images/main_img3.jpg"
						class="img-fluid blur-up lazyload bg-img" alt="" />
				</div>
			</div>
		</div>
		<div class="offer-text">
			<h6>
				<span>s</span> <span>t</span> <span>a</span> <span>r</span> <span>t</span>
				<span></span> <span>y</span> <span>o</span> <span>u</span> <span>r</span>
				<span></span> <span>j</span> <span>o</span> <span>u</span> <span>n</span>
				<span>e</span> <span>y</span>
			</h6>
		</div>
	</section>
	<div class="error"></div>
	<!-- home section end -->

	<section class="book-table section-b-space p-0 single-table">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="table-form">
						<form>
							<!--  -->
							<form class="d-flex my-3" onsubmit="return false;" role="search">
								<select id="search-area" class="form-control me-2">
									<option value="0" selected>검색 할 지역 선택</option>
									<%
										for (SidoDto sido : sidoList) {
									%>

									<option value=<%=sido.getSidoCode()%> selected><%=sido.getSidoName()%></option>

									<%
										}
									%>
								</select> <select id="search-content-id" class="form-control me-2">
									<option value="0" selected>관광지 유형 선택</option>
									<option value="12">관광지</option>
									<option value="14">문화시설</option>
									<option value="15">축제공연행사</option>
									<option value="25">여행코스</option>
									<option value="28">레포츠</option>
									<option value="32">숙박</option>
									<option value="38">쇼핑</option>
									<option value="39">음식점</option>
								</select> <input id="search-keyword" class="form-control me-2"
									type="search" placeholder="검색어" aria-label="검색어" />
								<!--  -->
								<input id="btn-search" type="button" value="search"
									class="btn btn-rounded color1">

							</form>

							<div id="map" class="container mt-5"
								style="max-width: 1000px; height: 400px"></div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- book table section end -->

	<!-- tours section start -->
	<section class="category-sec ratio3_2 section-b-space">
		<div class="container">
			<div class="title-1 title-5">
				<span id="search_target_area" class="title-label">new offer</span>
				<h2>most popular tours</h2>
				<p>원하시는 관광장소를 검색해보세요!</p>
			</div>
			<div class="row" id="tourist_slide_container">
				<div class="col">
					<div id="tourist_slide_container" class="slide-3 arrow-classic">

					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- tours section end -->

	<!-- video section start -->
	<!-- <section class="video_section parallax-img">
      <img
        src="../assets/images/mix/video-bg.jpg"
        alt=""
        class="img-fluid blur-up lazyload bg-img"
      />
      <div class="container">
        <div class="row">
          <div class="col-xl-5 col-lg-6">
            <div class="video-content">
              <div>
                <h5>It's limited seating! <span>Hurry up!!</span></h5>
                <h2>honeymoon <span>$500</span></h2>
                <p>
                  Special honeymoon in May, Discover Thailand for 50 Customers
                  with Discount 30%
                </p>
                <div class="timer">
                  <ul>
                    <li><span id="days"></span>days</li>
                    <li><span id="hours"></span>Hour</li>
                    <li><span id="minutes"></span>min</li>
                    <li><span id="seconds"></span>sec</li>
                  </ul>
                </div>
                <div class="bottom-section">
                  <a href="#" class="btn btn-rounded btn-sm color1"
                    >buy now !!</a
                  >
                  <div class="info-btn">
                    <h6>7 days &nbsp; | &nbsp; 8 nights</h6>
                  </div>
                  <div class="info-btn red-info">
                    <h6>2 person</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-xl-6 offset-xl-1 col-lg-6 order-cls">
            <div class="video-image">
              <div class="side-effect"></div>
              <img
                src="../assets/images/mix/video-image.jpg"
                class="img-fluid blur-up lazyload"
                alt=""
              />
              <div data-toggle="modal" data-target="#video" class="video-icon">
                <span></span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="offer-text">
        <h6>
          <span>l</span>
          <span>i</span>
          <span>m</span>
          <span>i</span>
          <span>t</span>
          <span>e</span>
          <span>d</span>
          <span></span>
          <span>t</span>
          <span>i</span>
          <span>m</span>
          <span>e</span>
        </h6>
      </div>
    </section> -->
	<!-- <div
      class="modal fade video-modal"
      id="video"
      role="dialog"
      aria-hidden="true"
    >
      <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-body">
            <button
              type="button"
              class="close"
              data-dismiss="modal"
              aria-label="Close"
            >
              <span aria-hidden="true">×</span>
            </button>
            <iframe
              src="https://www.youtube.com/embed/ezuKIzXJuz8"
              allowfullscreen
            ></iframe>
          </div>
        </div>
      </div>
    </div> -->
	<!-- video section end -->

	<!-- home section start -->


	<!-- tours section start -->
	<!-- <section class="category-sec ratio3_2 section-b-space">
    <div class="container">
      <div class="title-1 title-5">
        <span id="search_target_area" class="title-label">new offer</span>
        <h2>most popular tours</h2>
        <p>Trips, experiences, and places. All in one service.</p>
      </div>
      <div class="row">
        <div class="col">
          <div id="tourist_slide_container" class="slide-3 arrow-classic">
            <a href="#">
              <div class="category-box">
                <div class="img-category">
                  <div class="side-effect"></div>
                  <div>
                    <img id="slide-tour-content-1-img" src="../assets/images/tour/tour/1.jpg" alt=""
                      class="img-fluid blur-up lazyload bg-img" />
                  </div>
                  <div class="top-bar">
                    <span class="offer">HOT</span>
                  </div>
                  <div class="like-cls">
                    <i class="fas fa-heart"><span class="effect"></span></i>
                  </div>
                </div>
                <div class="content-category">
                  <div class="top">
                    <h3 id="slide-tour-content-1-title">로 딩 중</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <p id="slide-tour-content-1-addr">로 딩 중</p>
                </div>
              </div>
            </a>
            <a href="#">
              <div class="category-box">
                <div class="img-category">
                  <div class="side-effect"></div>
                  <div>
                    <img id="slide-tour-content-2-img" src="../assets/images/tour/tour/2.jpg" alt=""
                      class="img-fluid blur-up lazyload bg-img" />
                  </div>
                  <div class="top-bar">
                    <span class="offer">HOT</span>
                  </div>
                  <div class="like-cls">
                    <i class="fas fa-heart"><span class="effect"></span></i>
                  </div>
                </div>
                <div class="content-category">
                  <div class="top">
                    <h3 id="slide-tour-content-2-title">로 딩 중</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <p id="slide-tour-content-2-addr">로 딩 중</p>
                </div>
              </div>
            </a>
            <a href="#">
              <div class="category-box">
                <div class="img-category">
                  <div class="side-effect"></div>
                  <div>
                    <img id="slide-tour-content-3-img" src="../assets/images/tour/tour/2.jpg" alt=""
                      class="img-fluid blur-up lazyload bg-img" />
                  </div>
                  <div class="top-bar">
                    <span class="offer">HOT</span>
                  </div>
                  <div class="like-cls">
                    <i class="fas fa-heart"><span class="effect"></span></i>
                  </div>
                </div>
                <div class="content-category">
                  <div class="top">
                    <h3 id="slide-tour-content-3-title">로 딩 중</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <p id="slide-tour-content-3-addr">로 딩 중</p>
                </div>
              </div>
            </a>
            <a href="#">
              <div class="category-box">
                <div class="img-category">
                  <div class="side-effect"></div>
                  <div>
                    <img id="slide-tour-content-4-img" src="../assets/images/tour/tour/3.jpg" alt=""
                      class="img-fluid blur-up lazyload bg-img" />
                  </div>
                  <div class="top-bar">
                    <span class="offer">HOT</span>
                  </div>
                  <div class="like-cls">
                    <i class="fas fa-heart"><span class="effect"></span></i>
                  </div>
                </div>
                <div class="content-category">
                  <div class="top">
                    <h3 id="slide-tour-content-4-title">로 딩 중</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <p id="slide-tour-content-4-addr">로 딩 중</p>
                </div>
              </div>
            </a>
            <a href="">
              <div class="category-box">
                <div class="img-category">
                  <div class="side-effect"></div>
                  <div>
                    <img id="slide-tour-content-5-img" src="../assets/images/tour/tour/2.jpg" alt=""
                      class="img-fluid blur-up lazyload bg-img" />
                  </div>
                  <div class="top-bar">
                    <span class="offer">HOT</span>
                  </div>
                  <div class="like-cls">
                    <i class="fas fa-heart"><span class="effect"></span></i>
                  </div>
                </div>
                <div class="content-category">
                  <div class="top">
                    <h3 id="slide-tour-content-5-title">로 딩 중</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                  </div>
                  <p id="slide-tour-content-5-addr">로 딩 중</p>
                </div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </div>
  </section> -->
	<!-- tours section end -->

	<!-- video section start -->
	<!-- <section class="video_section parallax-img">
    <img src="../assets/images/mix/video-bg.jpg" alt="" class="img-fluid blur-up lazyload bg-img" />
    <div class="container">
      <div class="row">
        <div class="col-xl-5 col-lg-6">
          <div class="video-content">
            <div>
              <h5>It's limited seating! <span>Hurry up!!</span></h5>
              <h2>honeymoon <span>$500</span></h2>
              <p>
                Special honeymoon in May, Discover Thailand for 50 Customers
                with Discount 30%
              </p>
              <div class="timer">
                <ul>
                  <li><span id="days"></span>days</li>
                  <li><span id="hours"></span>Hour</li>
                  <li><span id="minutes"></span>min</li>
                  <li><span id="seconds"></span>sec</li>
                </ul>
              </div>
              <div class="bottom-section">
                <a href="#" class="btn btn-rounded btn-sm color1">buy now !!</a>
                <div class="info-btn">
                  <h6>7 days &nbsp; | &nbsp; 8 nights</h6>
                </div>
                <div class="info-btn red-info">
                  <h6>2 person</h6>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-6 offset-xl-1 col-lg-6 order-cls">
          <div class="video-image">
            <div class="side-effect"></div>
            <img src="../assets/images/mix/video-image.jpg" class="img-fluid blur-up lazyload" alt="" />
            <div data-toggle="modal" data-target="#video" class="video-icon">
              <span></span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="offer-text">
      <h6>
        <span>l</span>
        <span>i</span>
        <span>m</span>
        <span>i</span>
        <span>t</span>
        <span>e</span>
        <span>d</span>
        <span></span>
        <span>t</span>
        <span>i</span>
        <span>m</span>
        <span>e</span>
      </h6>
    </div>
  </section>
  <div class="modal fade video-modal" id="video" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
          <iframe src="https://www.youtube.com/embed/ezuKIzXJuz8" allowfullscreen></iframe>
        </div>
      </div>
    </div>
  </div> -->
	<!-- video section end -->

	<!-- package section start-->
	<!-- <section class="category-wrapper section-b-space">
      <div class="container">
        <div class="title-1 title-5">
          <span class="title-label">new offer</span>
          <h2>awesome package</h2>
          <p>Trips, experiences, and places. All in one service.</p>
        </div>
        <div class="row">
          <div class="col">
            <div class="slide-2 arrow-classic">
              <div>
                <div class="category-wrap">
                  <div class="category-img">
                    <a href="#"
                      ><img
                        src="../assets/images/tour/tour/4.jpg"
                        alt=""
                        class="img-fluid blur-up lazyload"
                    /></a>
                    <div class="side-effect"></div>
                  </div>
                  <div class="category-content">
                    <div>
                      <div class="top">
                        <a href="#">
                          <h3>tour of shimala</h3>
                        </a>
                        <h6>group</h6>
                      </div>
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                      </div>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and
                        setting industry. Lorem Ipsum has been the industry's
                        since....
                      </p>
                      <div class="bottom">
                        <h3><del>$240</del>$200</h3>
                        <h6 class="coupon-code">
                          Coupon code: <span>EDR45</span>
                        </h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="category-wrap">
                  <div class="category-img">
                    <a href="#"
                      ><img
                        src="../assets/images/tour/tour/5.jpg"
                        alt=""
                        class="img-fluid blur-up lazyload"
                    /></a>
                    <div class="side-effect"></div>
                  </div>
                  <div class="category-content">
                    <div>
                      <div class="top">
                        <a href="#">
                          <h3>tour of shimala</h3>
                        </a>
                        <h6>group</h6>
                      </div>
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="far fa-star"></i>
                      </div>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and
                        setting industry. Lorem Ipsum has been the industry's
                        since....
                      </p>
                      <div class="bottom">
                        <h3><del>$240</del>$200</h3>
                        <h6 class="coupon-code">
                          Coupon code: <span>EDR45</span>
                        </h6>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="category-wrap">
                  <div class="category-img">
                    <a href="#"
                      ><img
                        src="../assets/images/tour/tour/6.jpg"
                        alt=""
                        class="img-fluid blur-up lazyload"
                    /></a>
                    <div class="side-effect"></div>
                  </div>
                  <div class="category-content">
                    <div class="top">
                      <a href="#">
                        <h3>tour of shimala</h3>
                      </a>
                      <h6>group</h6>
                      <div class="like-cls">
                        <i class="fas fa-heart"><span class="effect"></span></i>
                      </div>
                    </div>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                    <p>
                      Lorem Ipsum is simply dummy text of the printing and
                      setting industry. Lorem Ipsum has been the industry's ard
                      dummy text ever since the 1500s, when an unkn....
                    </p>
                    <div class="bottom">
                      <h3><del>$240</del>$200</h3>
                      <h6 class="coupon-code">
                        Coupon code: <span>EDR45</span>
                      </h6>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->
	<!-- package section end-->

	<!-- full banner section start -->
	<!-- <section class="full-banner">
    <img src="../assets/images/background.jpg" alt="" class="bg-img" />
    <div class="container">
      <div class="row">
        <div class="offset-xl-7 col-xl-5 col-lg-6 offset-lg-6 col-md-7 offset-md-5">
          <div class="banner-content">
            <div>
              <div class="offer-text">
                <span class="offer">offer</span>
                <h6>
                  <span>l</span>
                  <span>i</span>
                  <span>m</span>
                  <span>i</span>
                  <span>t</span>
                  <span>e</span>
                  <span>d</span>
                  <span></span>
                  <span>t</span>
                  <span>i</span>
                  <span>m</span>
                  <span>e</span>
                </h6>
              </div>
              <h5>special <span>nature</span> tour offer</h5>
              <h2>discount <span>20-30%</span></h2>
              <p>
                Lorem Ipsum is simply dummy text of the printing and type
                setti ng industry. Lorem Ipsum has been the of industry
                standard dum my text ever since the 1500s,
              </p>
              <h2 class="price"><del>$600</del> $420</h2>
              <div class="bottom-section">
                <a href="#" class="btn btn-rounded btn-sm color1">buy now</a>
                <div class="info-btn">
                  <h6>7 days &nbsp; | &nbsp; 8 nights</h6>
    full banner section start -->
	<!-- <section class="full-banner">
      <img src="../assets/images/background.jpg" alt="" class="bg-img" />
      <div class="container">
        <div class="row">
          <div
            class="offset-xl-7 col-xl-5 col-lg-6 offset-lg-6 col-md-7 offset-md-5"
          >
            <div class="banner-content">
              <div>
                <div class="offer-text">
                  <span class="offer">offer</span>
                  <h6>
                    <span>l</span>
                    <span>i</span>
                    <span>m</span>
                    <span>i</span>
                    <span>t</span>
                    <span>e</span>
                    <span>d</span>
                    <span></span>
                    <span>t</span>
                    <span>i</span>
                    <span>m</span>
                    <span>e</span>
                  </h6>
                </div>
                <h5>special <span>nature</span> tour offer</h5>
                <h2>discount <span>20-30%</span></h2>
                <p>
                  Lorem Ipsum is simply dummy text of the printing and type
                  setti ng industry. Lorem Ipsum has been the of industry
                  standard dum my text ever since the 1500s,
                </p>
                <h2 class="price"><del>$600</del> $420</h2>
                <div class="bottom-section">
                  <a href="#" class="btn btn-rounded btn-sm color1">buy now</a>
                  <div class="info-btn">
                    <h6>7 days &nbsp; | &nbsp; 8 nights</h6>
                  </div>
>>>>>>> f6be0627e2d42b17511b0781b8a67fe88cb7f495
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
<<<<<<< HEAD
    </div>
  </section> -->
	<!-- full banner section end -->
	<!--</section> -->
	<!-- full banner section end -->

	<!-- testimonial section start -->
	<!-- <section class="testimonial_section section-b-space">
      <div class="container">
        <div class="title-1 title-5">
          <span class="title-label">latest</span>
          <h2>our guests love us</h2>
          <p class="mb-0">our tourist is satisfied and give best feedback</p>
        </div>
        <div class="row">
          <div class="offset-lg-1 col-lg-10">
            <div class="slide-1 arrow-classic">
              <div>
                <div class="testimonial">
                  <div class="top-part">
                    <div class="img-part">
                      <div class="animation-circle-inverse"><i></i><i></i><i></i></div>
                      <img
                        src="../assets/images/avtar/1.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <i class="fas fa-heart heart-icon"><span class="effect"></span></i>
                    </div>
                  </div>
                  <div class="bottom-part">
                    <p>
                      Architecto aut error explicabo. Voluptatem eaque sequi qui beatae velit vero
                      autautem. Et adipisci perferendis corporis et similique vitae consequatur.
                      Auteveniet quam. Et ut placeat consequatur qui nihil eos quibusdam. Impedit
                      blanditiis delectus.
                    </p>
                    <h3>mark enderess</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                    <div class="quote-icon">
                      <i class="fas fa-quote-right"></i>
                    </div>
                  </div>
                </div>
              </div>
              <div>
                <div class="testimonial">
                  <div class="top-part">
                    <div class="img-part">
                      <div class="animation-circle-inverse"><i></i><i></i><i></i></div>
                      <img
                        src="../assets/images/avtar/2.jpg"
                        class="img-fluid blur-up lazyload"
                        alt=""
                      />
                      <i class="fas fa-heart heart-icon"><span class="effect"></span></i>
                    </div>
                  </div>
                  <div class="bottom-part">
                    <p>
                      Architecto aut error explicabo. Voluptatem eaque sequi qui beatae velit vero
                      autautem. Et adipisci perferendis corporis et similique vitae consequatur.
                      Auteveniet quam. Et ut placeat consequatur qui nihil eos quibusdam. Impedit
                      blanditiis delectus.
                    </p>
                    <h3>mark enderess</h3>
                    <div class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="far fa-star"></i>
                    </div>
                    <div class="quote-icon">
                      <i class="fas fa-quote-right"></i>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->
	<!-- testimonial section end -->

	<!-- gallery section start -->
	<!-- <section class="gallery-section pt-0">
      <div class="container-fluid p-0">
        <div class="row zoom-gallery m-0">
          <div class="col-2 p-0">
            <a href="../assets/images/tour/gallery/2.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/2.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>china town</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
            <a href="../assets/images/tour/gallery/3.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/3.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>garden</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
          </div>
          <div class="col-3 p-0">
            <a href="../assets/images/tour/gallery/4.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/4.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>bangkok night</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
          </div>
          <div class="col-2 p-0">
            <a href="../assets/images/tour/gallery/5.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/5.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>indian zoo</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
            <a href="../assets/images/tour/gallery/6.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/6.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>sunset lake</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
          </div>
          <div class="col-5 p-0">
            <a href="../assets/images/tour/gallery/1.jpg" class="img-box">
              <div class="gallery_box">
                <div class="gallery-img">
                  <div class="overlay"></div>
                  <img
                    src="../assets/images/tour/gallery/1.jpg"
                    alt=""
                    class="img-fluid blur-up lazyload w-100"
                  />
                </div>
                <div class="gallery-content">
                  <h3>span water fall</h3>
                  <div class="rating">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="far fa-star"></i>
                  </div>
                </div>
                <div class="view-cls"><i class="fas fa-plus"></i></div>
              </div>
            </a>
          </div>
        </div>
      </div>
    </section> -->
	<!-- gallery section end -->

	<!-- service section start-->
	<!-- <section class="section-b-space">
    <div class="container">
      <div class="title-1 title-5">
        <span class="title-label">new</span>
        <h2>some good reason</h2>
        <p>Trips, experiences, and places. All in one service.</p>
      </div>
      <div class="row service-part">
        <div class="col-lg-4">
          <div class="service-wrapper">
            <div>
              <h3>
                +120 Premium tours
                <i class="fas fa-heart"><span class="effect"></span></i>
              </h3>
              <h6>120 premium tour</h6>
              <p>
                Lorem Ipsum is simply dummy text of the printing and setting
                industry. Lorem Ipsum has been the industry's ard dummy text
                ever since the 1500s, when an unkn....
              </p>
              <div class="service-btn">
                <a href="#" class="btn btn-rounded btn-sm color1">read more</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="service-wrapper">
            <div>
              <h3>
                +1000 Customers
                <i class="fas fa-heart"><span class="effect"></span></i>
              </h3>
              <h6>1000 customers</h6>
              <p>
                Lorem Ipsum is simply dummy text of the printing and setting
                industry. Lorem Ipsum has been the industry's ard dummy text
                ever since the 1500s, when an unkn....
              </p>
              <div class="service-btn">
                <a href="#" class="btn btn-rounded btn-sm color1">read more</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-lg-4">
          <div class="service-wrapper">
            <div>
              <h3>
                H24 Support
                <i class="fas fa-heart"><span class="effect"></span></i>
              </h3>
              <h6>h24 support</h6>
              <p>
                Lorem Ipsum is simply dummy text of the printing and setting
                industry. Lorem Ipsum has been the industry's ard dummy text
                ever since the 1500s, when an unkn....
              </p>
              <div class="service-btn">
                <a href="#" class="btn btn-rounded btn-sm color1">read more</a>
    service section start-->
	<!-- <section class="section-b-space">
		<div class="container">
			<div class="title-1 title-5">
				<span class="title-label">new</span>
				<h2>추천 관광 명소</h2>
				<p>Trips, experiences, and places. All in one service.</p>
			</div>
			<div class="row service-part">
				<div class="col-lg-4">
					<div class="service-wrapper">
						<div>
							<h3>
								관광지 명 <i class="fas fa-heart"><span class="effect"></span></i>
							</h3>
							<h6>특색 있는 이색 데이트 명소</h6>
							<p>Lorem Ipsum is simply dummy text of the printing and
								setting industry. Lorem Ipsum has been the industry's ard dummy
								text ever since the 1500s, when an unkn....</p>
							<div class="service-btn">
								<a href="#" class="btn btn-rounded btn-sm color1">read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="service-wrapper">
						<div>
							<h3>
								SSAFY 1000인 추천 관광 명소 <i class="fas fa-heart"><span
									class="effect"></span></i>
							</h3>
							<h6>1000 customers</h6>
							<p>Lorem Ipsum is simply dummy text of the printing and
								setting industry. Lorem Ipsum has been the industry's ard dummy
								text ever since the 1500s, when an unkn....</p>
							<div class="service-btn">
								<a href="#" class="btn btn-rounded btn-sm color1">read more</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="service-wrapper">
						<div>
							<h3>
								MZ가 뽑은 대한민국 최고 명소 <i class="fas fa-heart"><span
									class="effect"></span></i>
							</h3>
							<h6>24시간 관람 가능</h6>
							<p>Lorem Ipsum is simply dummy text of the printing and
								setting industry. Lorem Ipsum has been the industry's ard dummy
								text ever since the 1500s, when an unkn....</p>
							<div class="service-btn">
								<a href="#" class="btn btn-rounded btn-sm color1">read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> -->
	<!-- service section end -->

	<!-- app section start-->
	<!-- <section class="app-section medium-section">
      <img
        src="../assets/images/tour/app-bg.jpg"
        alt=""
        class="img-fluid blur-up lazyload bg-img"
      />
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <div class="app-box rounded25">
              <div>
                <h5>special <span>nature</span> tour offer</h5>
                <h2>Download our app</h2>
                <p>
                  Lorem Ipsum is simply dummy text of the printing and type setting industry. Lorem
                  Ipsum has been the of industry standard dum my text ever since the 1500s,
                </p>
                <div class="app-buttons">
                  <a href="#" class="btn btn-rounded color1"
                    ><i class="fab fa-google-play"></i> play store</a
                  >
                  <a href="#" class="btn btn-rounded app-btn"
                    ><i class="fab fa-app-store"></i> app store</a
                  >
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section> -->
	<!-- app section end -->

	<!-- subscribe section start -->
	<!-- <section class="subscribe_section medium-section">
      <div class="container">
        <div class="row">
          <div class="col-xl-5 col-lg-6">
            <div class="subscribe-detail">
              <div>
                <h2>subscribe our news <span>our news</span></h2>
                <p>
                  Subscribe and receive our newsletters to follow the news about our fresh and
                  fantastic products
                </p>
              </div>
            </div>
          </div>
          <div class="col-xl-7 col-lg-6">
            <div class="input-section">
              <input
                type="text"
                class="form-control"
                placeholder="Enter Your Email"
                aria-label="Recipient's username"
              />
              <a href="#" class="btn btn-rounded btn-sm color1">subscribe</a>
            </div>
          </div>
        </div>
      </div>
    </section> -->
	<!-- subscribe section end -->

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
                <h5>top places</h5>
              </div>
              <div class="footer-content">
                <div class="footer-place">
                  <div class="row">
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/1.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>japan</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/2.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>beach</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/3.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>newyork</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/4.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>city</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/5.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>mountain</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                    <div class="col-4">
                      <div class="place rounded5">
                        <a href="#">
                          <img
                            src="../assets/images/tour/footer/6.jpg"
                            class="img-fluid blur-up lazyload"
                            alt=""
                          />
                          <div class="overlay">
                            <h6>wild</h6>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
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
                    <div class="img-part rounded5">
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
                    <div class="img-part rounded5">
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
			<input class="tgl tgl-skewed" id="dark" type="checkbox" /> <label
				class="tgl-btn" data-tg-off="Dark" data-tg-on="Light" for="dark"></label>
		</div>
		<div class="rtl">
			<input class="tgl tgl-skewed" id="rtl" type="checkbox" /> <label
				class="tgl-btn" data-tg-off="RTL" data-tg-on="LTR" for="rtl"></label>
		</div>
	</div>
	<!-- setting end -->

	<!-- latest jquery-->
	<script src="resources/js/jquery-3.5.1.min.js"></script>

	<!-- date-time picker js -->
	<script src="resources/js/date-picker.js"></script>

	<!-- Timer js-->
	<script src="resources/js/timer.js"></script>

	<!-- popper js-->
	<script src="resources/js/popper.min.js"></script>

	<!-- portfolio js -->
	<script src="resources/js/jquery.magnific-popup.js"></script>
	<script src="resources/js/zoom-gallery.js"></script>

	<!-- slick js-->
	<script src="resources/js/slick.js"></script>

	<!-- ripple effect js -->
	<script src="resources/js/jquery.ripples.js"></script>

	<!-- Bootstrap js-->
	<script src="resources/js/bootstrap.js"></script>

	<!-- lazyload js-->
	<script src="resources/js/lazysizes.min.js"></script>

	<!-- Theme js-->
	<script src="resources/js/script.js"></script>

	<!-- kakao map -->
	<!-- kakao map -->
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7809108732e88384d71ff5e5b914a12d"></script>
	<script>

						</script>

	<script>
    let serviceKey =
      "D095eWg8T4Pu3IRttl5nekZUZ1Ohkqhwnl8lm1YczgTiAQNym9U52OhDYpquCaGnoM8M0OyQEzCkNb7rYvXnEQ%3D%3D";
    let bareaUrl =
      "https://apis.data.go.kr/B551011/KorService1/areaCode1?serviceKey=" +
      serviceKey +
      "&numOfRows=20&pageNo=1&MobileOS=ETC&MobileApp=AppTest&_type=json";

    // 검색 지역 선택을 위한 코드 end -----------------------
    
    // 스크롤 하기 위한 area

   var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
    mapOption = { 
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 10 // 지도의 확대 레벨
    };
	var markers = [];
	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
    window.onload = function () {

    	var location = document.querySelector('#search-area').offsetTop;
    	console.log(location);
      // 스크롤 area
      setTimeout(() =>  window.scrollTo({top:location+500, behavior:'smooth'}), 2000);
	 
      //window.location.hash = '#search-area';
      // 검색 지역 선택을 위한 코드 start -----------------------
      
    	
		document.querySelector("#btn-search").onclick = searchFiltered;
		var marker ; 
    };

			
    
   	async function searchFiltered() {
      console.log("filter 선택됨");
   		
				console.log("btn clicekd");
				// 사용자 입력 parameter 준비
				// 백엔드 url 요청 - fetch
				// response가 json으로 내려옴 
				// 성공 or 실패 처리 
				let selected_sidoCode = document.getElementById("search-area").value;
      			let selected_content_type_id = document.getElementById("search-content-id").value;
      			let selected_search_keyword = document.getElementById("search-keyword").value;

				// 여기까지 작업함 
				// 파라미터 이름(프로퍼티) : 값(value) 
				let urlParams = new URLSearchParams({
					job : 'filterList',
					sido_code : selected_sidoCode, 
					content_type_id : selected_content_type_id,
					searchWord: selected_search_keyword
				});
				
				let fetchOptions = {
						method : "POST",
						body : urlParams
				};
				
				let response = await fetch("/AttractionInfo", fetchOptions);
				let data = await response.json();
				// console.log(data.result);
				console.log(data);

        		makeHtml(data);
        		deleteMarkes(markers);
        		displayMarker(data);
        		
            	var location = document.querySelector('#search-area').offsetTop;
            	console.log(location);
              	// 스크롤 area
              	setTimeout(() =>  window.scrollTo({top:location+1300, behavior:'smooth'}), 1000);
              
			};

      function makeHtml(list) {
    	  
    	  let all_item = "";

    	  all_item = '<div class="col"><div class="slide-3 arrow-classic">'
		list.forEach( el => {

          let first_image = el.first_image; 
          let content_id = el.content_id; 
          console.log(content_id);
          if(first_image == ""){
            first_image = "../assets/images/loader.gif"
          }
          
          let item = ' <a class = "detail_btn" href="AttractionDes?job=getOneAttractionDes&content_id=' + content_id+ '">' + 
			'<div class="category-box">'+
				'<div class="img-category">'+ 
				'<div class="side-effect"></div>'+
					'<div>'+ 
						'<img id="slide-tour-content-1-img" style = "width : 100%;"  "object-fit: cover;" src = "'+
  first_image+'" />'+'</div>'+
					'<div class="like-cls">'; 
					
					
			if('<%=user%>'== "null" ) {
				console.log("not login 상태");

			}else {
				if(el.user_id == null) {
					console.log("null");
					item += '<i class="fas fa-heart"><span style="color:black" class = "addBtn effect" data-id = ' + el.content_id+ ' ></span></i>';

				}else {
					console.log(el.user_id);
					item += '<i class="fas fa-heart"><span style="color:black" class = "deleteBtn effect" data-id=' + el.bookmark_id + '>삭제</span></i>';

				}
				
			}
		    item += '</div>'+
				'</div>'+
				'<div class="content-category">'+
					'<div class="top">'+
						'<h3 id="slide-tour-content-1-title">'+ el.title +'</h3>'+
					'</div>'+
					'<p id="slide-tour-content-1-addr">'+ el.addr1+'</p>'+
				'</div>'+
			'</div>'+
		'</a>';

			all_item += item;
            console.log("추가완료");
    
			} );
		
    	  all_item += '</div></div>';
			document.querySelector("#tourist_slide_container").innerHTML = all_item;
		
			deleteBookmarkBtn();
			addBookmarkBtn();
			
		  slide_me();
			
	}


     function deleteBookmarkBtn() {
      	
      	 document.querySelectorAll(".deleteBtn").forEach( el => {
      		 el.onclick = function(e){
      			 e.preventDefault();
      			 deleteBookmark(this.getAttribute("data-id"));
      		 }
      		
      	 });
      		
      	 document.querySelectorAll(".deleteBtn").forEach( el => {
      		 el.onclick = function(e){
      			 e.preventDefault();
      			 deleteBookmark(this.getAttribute("data-id"));
      		 }
      		
      	 });
      }
     
     
     function addBookmarkBtn() {
       	
      	 document.querySelectorAll(".addBtn").forEach( el => {
      		 el.onclick = function(e){
      			 e.preventDefault();
      			 addBookmark(this.getAttribute("data-id"));
      		 }
      		
      	 });
      			 
      }


      	async function deleteBookmark(e) {
      	// 사용자 입력 parameter 준비
      	// 백엔드 url 요청 - fetch
      	// response가 json으로 내려옴 
      	// 성공 or 실패 처리 
      	
      	let bookmark_id = e;
      	
      	// 파라미터 이름(프로퍼티) : 값(value) 
      	let urlParams = new URLSearchParams({
      		job : 'deleteBookmark',
      		bookmark_id : bookmark_id
      	});
      	
      	let fetchOptions = {
      			method : "POST",
      			body : urlParams
      	};
      	
      	let response = await fetch("/Bookmark", fetchOptions);
      	let data = await response.json();
      	console.log(data);
      	
      	if(data.result == "success"){
			swal("삭제  완료", "상세페이지에서 확인 가능합니다.", "success");

      	}else if(data.result == "fail"){
      	}
      };
   
  	async function addBookmark(e) {
      	// 사용자 입력 parameter 준비
      	// 백엔드 url 요청 - fetch
      	// response가 json으로 내려옴 
      	// 성공 or 실패 처리 
      	
      	let content_id = e;
      	
      	// 파라미터 이름(프로퍼티) : 값(value) 
      	let urlParams = new URLSearchParams({
      		job : 'addBookmark',
      		content_id : content_id
      	});
      	
      	let fetchOptions = {
      			method : "POST",
      			body : urlParams
      	};
      	
      	let response = await fetch("/Bookmark", fetchOptions);
      	let data = await response.json();
      	console.log(data);
      	
      	if(data.result == "success"){
      		console.log("addsuccess");
			swal("추가 완료", "상세페이지에서 확인 가능합니다.", "success");

      	}else if(data.result == "fail"){
      	}
      };

    function slide_me(){
    	$('.slide-3').slick({
            infinite: true,
            speed: 300,
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: false,
            autoplaySpeed: 5000,
            responsive: [
                {
                    breakpoint: 1200,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 1
                    }
                },
                {
                    breakpoint: 768,
                    settings: {
                        slidesToShow: 1,
                        slidesToScroll: 1
                    }
                }
            ]
        });
    }
    

    
    function moveCenter(lat, lng) {
        map.setCenter(new kakao.maps.LatLng(lat, lng));
      } 
    
	function deleteMarkes(list) {
    	

    	list.forEach( el => {
    		
    		el.setMap(null);
    	        
      
  			} );
      
    }
    
    function displayMarker(list) {
    	
    	markers = [];
    	list.forEach(el => {
    		
    		// 마커 이미지의 이미지 주소입니다
    	      var imageSrc =
    	    	  "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 

    	        // 마커 이미지의 이미지 크기 입니다
    	        var imageSize = new kakao.maps.Size(24, 35);

    	        // 마커 이미지를 생성합니다
    	        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
    	        
    	        var markerPosition  = new kakao.maps.LatLng(el.latitude, el.logitude); 

    	        // 마커를 생성합니다
    	        var marker = new kakao.maps.Marker({
    	          map: map, // 마커를 표시할 지도
    	          position: markerPosition, // 마커를 표시할 위치
    	          title: el.title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
    	          image: markerImage, // 마커 이미지
    	        });

    	        markers.push(marker);
    	        setCenter(el.latitude, el.logitude);
      
  			} );
      
    }
    
    
    function setCenter(lat, logi) {            
        // 이동할 위도 경도 위치를 생성합니다 
        var moveLatLon = new kakao.maps.LatLng(lat, logi);
        
        // 지도 중심을 이동 시킵니다
        map.setCenter(moveLatLon);
    }
    
  </script>
	<script>


    $(document).ready(function () {
      try {
        $(".ripple-effect").ripples({
          resolution: 256,
          perturbance: 0.005,
        })
      } catch (e) {
        $(".error").show().text(e);
      }
    });
    $("#datepicker").datepicker({
      uiLibrary: "bootstrap4",
    });
  </script>

	<!-- 로그인 글자 클릭하면 로그인 페이지로 이동 -->
	<!-- 밑에 로직 지웠음  -->


</body>

</html>