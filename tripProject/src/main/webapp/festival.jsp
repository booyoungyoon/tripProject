<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>축제</title>
  <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
     <link rel="stylesheet" href="css/nav.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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
 #slider {width: 1000px; height: 1500px; margin: 0 auto;}
.card {
   margin-bottom: 1rem;
}


</style>
  <script>
  var xhr = new XMLHttpRequest();
  var url = 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchFestival'; /*URL*/
  var queryParams = '?' + encodeURIComponent('serviceKey') + '='+'sWi23NfHCswD2JLkVzlAjWdx84T9hH%2B4%2BgYdeHg5rakMR397CZtjr1hoq8Mo56LMzSCjxrlMzLEkI0Bi%2FwFQ0Q%3D%3D'; /*Service Key*/
  queryParams += '&' + encodeURIComponent('numOfRows') + '=' + encodeURIComponent('10'); /**/
  queryParams += '&' + encodeURIComponent('pageNo') + '=' + encodeURIComponent('1'); /**/
  queryParams += '&' + encodeURIComponent('MobileOS') + '=' + encodeURIComponent('ETC'); /**/
  queryParams += '&' + encodeURIComponent('MobileApp') + '=' + encodeURIComponent('AppTest'); /**/
  queryParams += '&' + encodeURIComponent('arrange') + '=' + encodeURIComponent('A'); /**/
  queryParams += '&' + encodeURIComponent('listYN') + '=' + encodeURIComponent('Y'); /**/
  queryParams += '&' + encodeURIComponent('areaCode') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('sigunguCode') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('eventStartDate') + '=' + encodeURIComponent('20220701'); /**/
  queryParams += '&' + encodeURIComponent('eventEndDate') + '=' + encodeURIComponent(''); /**/
  queryParams += '&' + encodeURIComponent('modifiedtime') + '=' + encodeURIComponent(''); /**/
  xhr.open('GET', url + queryParams);
  xhr.onreadystatechange = function () {
      if (this.readyState == 4) {
          alert('Status: '+this.status+'nHeaders: '+JSON.stringify(this.getAllResponseHeaders())+'nBody: '+this.responseText);
      }
  };

  xhr.send('');
           
       	
  </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<a style="display:scroll;position:fixed;bottom:20px;z-index: 999;right:60px;font-size: 40px;" href="#" title="âtop">
	<i class="fa-solid fa-circle-arrow-up"></i></a>
	
	<!-- header card -->
	
	<div class="card">
   
	</div>
	<br><br>
	
<div id="slider">
 <!-- 여기에 내용 넣으세요 -->


	<div class="container mb-3 mt-3">

  <button class="btn btn-primary btn-grid" type="button" onclick="location.href='feditor.jsp' ">글등록</button>
</div>
<div class="container grid-container">
  <div class="row">
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">태백 해바라기축제</h5>
          <p class="card-text">제 18회 태백해바라기 축제를 개최한다. 자연스럽고 평화로운 구와우 마을에서 백만송이 해바라기꽃을 피워 놓고 당신을 기다리겠다.</p>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">아침고요수목원 무궁화전시회</h5>
          <p class="card-text">전시회 기간 중에는 45여종의 품종 전시분을 선보이고 60여종의 식재분을 합쳐 약 100여종의 무궁화 품종이 전시된다. </p>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">2012여수세계박람회 10주년 기념행사</h5>
          <p class="card-text">2012년 뜨거웠던 여수의 여름을 다시 만나다. 시민과 관광객이 함께 참여할 수 있는 다양한 프로그램이 구성되어 있다.</p>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">동강국제사진제</h5>
          <p class="card-text">올해로 20회를 맞이하는 동강국제사진제는 국내외 사진작가와 강원도 영월군 지역민, 사진 애호가들이 함께 만들어 가는 대한민국 대표 사진 축제다.</p>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">괴산대학찰옥수수축제</h5>
          <p class="card-text">괴산대학찰옥수수축제는 대학찰의 고향인 충북 괴산군에서 열리는 지역대표축제이다.</p>
        </div>
      </div>
    </div>
    <div class="col-12 col-md-6 col-lg-4">
      <div class="card">
        <img class="card-img-top" src="https://picsum.photos/362/180" alt="Card image cap">
        <div class="card-body">
          <h5 class="card-title">2022년 나의 책, 나의 인문기행 남해지역 탐방</h5>
          <p class="card-text">남해 일대(독일마을, 지족마을, 금산보리암, 남해 유배문학관, 이순신순국공원 등)를 방문하는 현장 탐방 프로그램이다.</p>
        </div>
      </div>
    </div>
  </div>
  
</div>
		<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
	
			

 



 <div id = "map" style="width: 800px; height: 300px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script> 
	


	</div>
        

    
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%-- <%
rs.close();
st.close();
con.close();
%> --%>

