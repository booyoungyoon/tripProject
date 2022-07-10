<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가기 좋은날</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gugi&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
    <link rel="stylesheet" href="css/templatemo-ocean-vibes.css">
     <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
     <script src="https://kit.fontawesome.com/c34800a0df.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
           @font-face {
    font-family: 'yg-jalnan';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
      
   * {font-family: 'yg-jalnan', cursive }

        .gd-container {
  max-width: 1100px;
  position: relative;
  margin: 0 auto;
  padding-left: 15px;
  padding-right: 15px;
}

 ul > li > a {color: #212121;}
#gtco-header { height: 700px; width: 100%; }
#gtco-header > ul {display:inline;}

#gtco-header .bg {position:relative; height: 700px; width: 100%;}
#gtco-header .bg > a> img {height: 700px; width: 100%;}
#gtco-header .bg .text > h1 {
display: inline-block;
   z-index: 999;
   position: absolute;
   top: 200px;
   left: 200px;
   width: 100%;
   margin: 0 auto;
   font-size: 50px;
   height: 70px;
   line-height: 700px; 
}

 
.bg:hover {
  opacity:0.7;
 }
 #slider {width: 1000px; height: 700px; margin: 0 auto;}
        footer {width:1000px; height:50px; margin:0 auto;}
        #gtco-footer,
.gtco-section {
  padding: 6em 0;
  clear: both;
  position: relative;
}
#gtco-footer .gtco-widget {
  margin-bottom: 20px;
}

    </style>
    
    
	<nav class="navbar">
        <div class="navbar_logo">
            <i class="fa-solid fa-map-location-dot"></i>
            <a href="home.jsp">여행가기 좋은날</a>
        </div>
        <ul class="navbar_menu">
           <li><a href="mypage.jsp"><i class="fa-solid fa-magnifying-glass"></i></a></li>  
           <li><a href="destination.jsp">여행지 추천</a></li>  
           <li><a href="course.jsp">코스 추천</a></li>  
           <li><a href="festival.jsp">축제</a></li>  
            <li><a href="login.jsp">로그인</a></li> 
            </ul>
 
        
    </nav>
     
</head>

	<body>
	<a style="display:scroll;position:fixed;bottom:20px;right:60px;font-size: 40px;" href="#" title=”top">
	<i class="fa-solid fa-circle-arrow-up"></i></a>
	
	
	<div id="gtco-header"  role="banner">
		<div class = "bg">
		<a href="mypage.jsp"><img src="img/jejudo.jpg"></a>
		<div class="text">
		 <h1> 올 여름, 해수욕장 어디로 가지? </h1></div>
		  </div>
		<div class="gd-container">
				
		</div>
	</div>
	 <br><br><br>
	 

	<div id = "slider">
		<div class="gd-container">
			<div>
				<div class="text-center">
					<h2>함께 떠나는 힐링 테마여행</h2>
					<p> 설명?</p>
				</div>
			</div>
			<div>
	<br><br><br>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_1.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/seosan.jpg" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>충청도</h2>
							<p>역사와 자연이 조화로운 서산 여행</p>
							<p><span class="btn btn-primary"> 보러가기</span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_2.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/yeongwol.jpg" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>강원도 </h2>
							<p>영월로 떠나는 어느 여름날의 강원도 힐링여행</p>
							<p><span class="btn btn-primary">보러가기</span></p>
						</div>
					</a>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_3.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/pet.jpg"" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>경상도</h2>
							<p>반려견과의 특별한 하루를, 의성펫월드</p>
							<p><span class="btn btn-primary">보러가기</span></p>
						</div>
					</a>
				</div>


				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_4.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/suwon.jpeg" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>경기도</h2>
							<p>하루만에 즐기는
								수원 당일치기 여행코스</p>
							<p><span class="btn btn-primary">보러가기</span></p>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_5.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/yeosu.jpg" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>전라도</h2>
							<p>잠들지 않는 낭만의 도시, 여수를 만끽하다 </p>
							<p><span class="btn btn-primary">보러가기</span></p>
						</div>
					</a>
				</div>

				<div class="col-lg-4 col-md-4 col-sm-6">
					<a href="images/img_6.jpg" class="fh5co-card-item image-popup">
						<figure>
							<div class="overlay"><i class="ti-plus"></i></div>
							<img src="img/jeju.jpeg" alt="Image" class="img-responsive">
						</figure>
						<div class="fh5co-text">
							<h2>제주도</h2>
							<p>섬 안에 섬을 여행하는 방법, 가파도 여행 코스</p>
							<p><span class="btn btn-primary">보러가기</span></p>
						</div>
					</a>
				</div>

			</div>
		</div>
	</div>
	<br><br><br>

	<footer id="gtco-footer" role="contentinfo">
		<div class="gtco-container">
			<div class="row row-p	b-md">

				<div class="col-md-3">
					<div class="gtco-widget">
						<h3>About Us</h3>
						<p> 2022 GoodDayTrip Team</p>
					</div>
				</div>

				<div class="col-md-3">
					<div class="gtco-widget">
						<h4 class="text-uppercase fw-bold mb-4">
            Partners 모집
          </h4>
					<p>파트너와의 ‘열린’ 소통 및 콘텐츠 제휴를 환영합니다.</p>
						
					</div>
				</div>

				<div class="col-md-3">
					<div>
		<h4 class="text-uppercase fw-bold mb-4">POST</h4>
						
							<a href="#"><p>여행지 포스트</p></a>
							<a href="#"><p>코스 포스트</p></a>
							<a href="#"><p>축제 포스트</p></a>
							
						
					</div>
				</div>

			<div class="col-md-3">
          <!-- Links -->
          <h4 class="text-uppercase fw-bold mb-4">
            Contact
          </h4>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            gooddaytip@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 82 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 82 234 567 89</p>
        </div>
				

			</div>

			<div class="row copyright">
				<div class="col-md-12">
					<p class="pull-left">
						<small class="block">&copy; 2022 GoodDayTrip Team</small> 
			
					</p>
					
				</div>
			</div>
		</div>
	
	</footer>
	
	
	<!-- </div> -->

	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.1.3.js"></script>
	<!-- Bootstrap -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Carousel -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- countTo -->
	<script src="js/jquery.countTo.js"></script>

	<!-- Stellar Parallax -->
	<script src="js/jquery.stellar.min.js"></script>

	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/magnific-popup-options.js"></script>
	
	<!-- Datepicker -->
	<script src="js/bootstrap-datepicker.min.js"></script>
	

	<!-- Main -->
	<script src="js/main.js"></script>

	</body>
</html>
