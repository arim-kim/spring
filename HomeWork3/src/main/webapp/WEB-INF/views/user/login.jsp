<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="rica" />
<meta name="keywords" content="rica" />
<meta name="author" content="rica" />
<title>Rica</title>

<!--Google font-->
<link
	href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap"
	rel="stylesheet" />

<!-- Icons -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/font-awesome.css" />

<!-- Animation -->
<link rel="stylesheet" type="text/css" href="../assets/css/animate.css" />

<!--Slick slider css-->
<link rel="stylesheet" type="text/css" href="../assets/css/slick.css" />
<link rel="stylesheet" type="text/css"
	href="../assets/css/slick-theme.css" />

<!-- Bootstrap css -->
<link rel="stylesheet" type="text/css"
	href="../assets/css/bootstrap.css" />

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
							<a href="/index"> home </a>
						</div>
						<nav>
							<div class="main-navbar"></div>
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
							<li class="setting"><a href="#"> <i class="fas fa-cog"></i>
							</a>
								<ul class="setting-open">
									<li class="front-setting"><select>
											<option value="volvo">USD</option>
											<option value="saab">EUR</option>
											<option value="opel">INR</option>
											<option value="audi">AUD</option>
									</select></li>
									<li class="front-setting"><select>
											<option value="volvo">ENG</option>
											<option value="saab">FRE</option>
											<option value="opel">SPA</option>
											<option value="audi">DUT</option>
									</select></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!--  header end -->

	<!-- breadcrumb start -->
	<section class="breadcrumb-section pt-0">
		<img src="../assets/images/main_img.jpg"
			class="bg-img img-fluid blur-up lazyload" alt="" />
		<div class="breadcrumb-content">
			<div>
				<h2>login</h2>
				<nav aria-label="breadcrumb" class="theme-breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.html">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Login</li>
					</ol>
				</nav>
			</div>
		</div>
		<div class="title-breadcrumb">Rica</div>
	</section>
	<!-- breadcrumb end -->

	<!-- section start -->
	<section class="section-b-space dark-cls animated-section">
		<img src="../assets/images/cab/grey-bg.jpg" alt=""
			class="img-fluid blur-up lazyload bg-img" />
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
							<h3>로그인</h3>
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
						<form action="user/login" method="post">

							<div class="form-group">
								<label for="exampleInputEmail1">아이디</label> <input type="text"
									class="form-control" id="userId" name="userId"
									aria-describedby="emailHelp" placeholder="아이디를 입력하세요" /> <small
									id="emailHelp" class="form-text text-muted">아이디는 공유되지
									않습니다</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">비밀번호</label> <input
									type="password" name="userPassword" class="form-control"
									id="userPassword" placeholder="비밀번호" />
							</div>

							<!-- <div class="form-group form-check">
                  <input type="checkbox" class="form-check-input" id="exampleCheck1" />
                  <label class="form-check-label" for="exampleCheck1">아이디 저장</label>
                </div> -->
							<!-- <div class="button-bottom">
                  <input
                    id="loginButton"
                    type="button"
                    value = "로그인"
                    class="w-100 btn btn-solid"
                  >
          
                  <div class="divider">
                    <h6>or</h6>
                  </div>
                  <button
                    type="button"
                    class="w-100 btn btn-solid btn-outline"
                    onclick="location.href = '../users/createAccount.jsp'"
                  >
                    계정 생성
                  </button>
                </div>  -->
							<input id="loginButton" type="submit" value="로그인"
								class="w-100 btn btn-solid">
						</form>


						<div class="divider">
							<h6>or</h6>
						</div>
						<button type="button" class="w-100 btn btn-solid btn-outline"
							onclick="location.href = '../users/createAccount.jsp'">
							계정 생성</button>
						<script>
						
							window.onload = function() {
								document.querySelector("#loginButton").onclick = login;
							}
							
							async function login() {
								// 사용자 입력 parameter 준비
								// 백엔드 url 요청 - fetch
								// response가 json으로 내려옴 
								// 성공 or 실패 처리 
								
								let userId = document.querySelector("#userId").value;
								let userPassword = document.querySelector("#userPassword").value;
								
								// 파라미터 이름(프로퍼티) : 값(value) 
								let urlParams = new URLSearchParams({
									job : 'login',
									userId : userId, 
									userPassword : userPassword
								});
								
								let fetchOptions = {
										method : "POST",
										body : urlParams
								};
								
								let response = await fetch("/loginout", fetchOptions);
								let data = await response.json();
								console.log(data);
								
								if(data.result == "success"){
									window.location.href = "/index";
								}else if(data.result == "fail"){
									swal("어머나", "아이디 혹은 비밀번호가 틀렸습니다.", "error");
									//alert("아이디 혹은 비밀번호가 틀렸습니다.");
									document.querySelector("#userId").value = "";
									document.querySelector("#userPassword").value = "";
								}
							};
							
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