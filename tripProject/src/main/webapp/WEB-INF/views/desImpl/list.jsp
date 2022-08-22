<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>호텔/음식점</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/c34800a0df.js"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<style>
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
* {
	font-family: 'yg-jalnan', cursive
}
.gd-container {
	max-width: 1100px;
	position: relative;
	margin: 0 auto;
	padding-left: 15px;
	padding-right: 15px;
}
ul>li>a {
	color: #212121;
}
#slider {
	width: 1000px;
	height: 2000px;
	margin: 0 auto;
}
h1 { text-align: center; }
#menu button { font-size : 1.2em; }
#selectType { height: 60px; }
#selectType button { margin: 2px 100px 0 100px; font-size: 2em}
</style>

</head>
<body>

	<jsp:include page="../includes/header.jsp"></jsp:include>
	<a
		style="display: scroll; position: fixed; bottom: 20px; z-index: 999; right: 60px; font-size: 40px;"
		href="#" title="âtop"> <i class="fa-solid fa-circle-arrow-up"></i></a>

	<!-- header card -->

	<div class="card"></div>
	<br>
	<br>
	<div id="slider">
		<h1>호텔/음식점</h1>

<br>
		<!-- 여기에 내용 넣으세요 -->
<div id="menu" class="card text-center" style="border-radius: 30px;">
  <div class="card-header" style="border-radius: 30px;" >
  	<a href="서울"><button type="button" class="btn btn-light fw-bolder">서울시</button></a>
  	<a href="경기"><button type="button" class="btn btn-light fw-bolder">경기도</button></a>
  	<a href="강원"><button type="button" class="btn btn-light fw-bolder">강원도</button></a>
  	<a href="충청북"><button type="button" class="btn btn-light fw-bolder">충청북도</button></a>
  	<a href="충청남"><button type="button" class="btn btn-light fw-bolder">충청남도</button></a>
  	<a href="경상북"><button type="button" class="btn btn-light fw-bolder">경상북도</button></a>
  	<a href="경상남"><button type="button" class="btn btn-light fw-bolder">경상남도</button></a>
  	<a href="전라북"><button type="button" class="btn btn-light fw-bolder">전라북도</button></a>
  	<a href="전라남"><button type="button" class="btn btn-light fw-bolder">전라남도</button></a>
  	<a href="제주"><button type="button" class="btn btn-light fw-bolder">제주도</button></a>
  </div>
  
  <div id="selectType" style="border-radius: 30px;">
	  <a href="1"><button type="button" class="btn btn-light">호텔</button></a>
	  <a href="2"><button type="button" class="btn btn-light">음식점</button></a>
  </div>

</div>
<br><br>

		<div class="row  justify-content-center">
			<c:forEach items="${list}" var="board">

				<div class="card mb-3 mr-3 p-3"
					style="width: 450px; height: 300px; float: left;">
					<div class="row g-0" style="height: 300px;">
						<div class="col-md-4" style="line-height: 300px;">
							<img src="${board.firstimg}" class="img-fluid rounded-start"
								alt="No Image" style="width: 200px; vertical-align: middle;">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<div class="row pt-5 pb-3">
									<div class="col">
										<h4>${board.title}</h4>
										<span>${board.tel}</span><br /> <span>${board.address}</span>
									</div>

								</div>
								<div class="row pt-5">
									<div class="col">
										 <button type="button" class="btn btn-primary"
                                 id="detailbtn" onclick="location.href='/desImpl/get.do?num='+${board.num}">상세보기</button>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

<!-- 페이지 처리 Start -->
				<div class="pull-right">
					  <ul class="pagination">

					    <c:if test="${pageMaker.prev }">
						    <li class="paginate_button previous"><a  href="${pageMaker.startPage-1}"><</a></li>
					    </c:if>

					  	<c:forEach  var="num"  begin="${pageMaker.startPage }"  end="${pageMaker.endPage }">
						    <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active" : "" }">
						    <a  href="${num }">${num }</a></li>
					  	</c:forEach>

					    <c:if test="${pageMaker.next }">
						    <li class="paginate_button next"><a  href="${pageMaker.endPage+1}">></a></li>
					    </c:if>
					  </ul>
				</div>
				<!-- 페이지 처리 End -->
				<!-- 검색조건 start -->
					<form id = "SearchForm" action = "/desImpl/list.do" method="get" >
						<select>
							<option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}"/>>검색</option>
							<option>지역</option>
						</select>

					<input type="text" name="desCity"  >	
					<input type ="hidden" name="pageNum"value='${pageMaker.cri.pageNum}'/>	
					<input type ="hidden" name="amount"value='${pageMaker.cri.amount}'/>

					<input type="submit" class="btn btn-outline-info" value="Search">

					</form>

				<!-- 검색 조건 end -->

				<form id="actionForm" action="/desImpl/list.do" method="get">
				<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
				<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
                <input type="hidden" name="desCity" value="${pageMaker.city.address}">
                <input type="hidden" name="type" value="${pageMaker.city.type}">
				</form>

	</div>


	<script type="text/javascript">
 
 
	var actionForm = $("#actionForm");
	
	
	$(".card-header a").on("click", function(e){
		 e.preventDefault();
		console.log('click');
		actionForm.find("input[name='desCity']").val($(this).attr("href"));
		actionForm.submit(); 
	});
	
	$("#selectType a").on("click", function(e){
		 e.preventDefault();
		console.log('click');
		actionForm.find("input[name='type']").val($(this).attr("href"));
		actionForm.submit(); 
	});
	
	$(".paginate_button a").on("click", function(e){
		 e.preventDefault();
		console.log('click');
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit(); 
	});
    var searchForm = $("#searchForm");
    
    $("#searchForm button").on("click", function(e){
       e.preventDefault();
       
       if(!searchForm.find("option:selected").val()){
          alert("검색종류를 선택하세요.")
          return false;
       }
       if(!searchForm.find("[name='keyword']").val()){
          alert("키워드를 선택하세요.")
          return false;
       }
       
       searchForm.find("input[name='pageNum']").val(1);
       searchForm.submit();
    });
 
 </script>




</body>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</html>