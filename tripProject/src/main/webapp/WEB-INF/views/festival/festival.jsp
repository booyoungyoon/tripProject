<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>축제</title>
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

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f7f2591af5145e97bd2969fcf925e6f"></script>
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
	height: 1800px;
	margin: 0 auto;
}
h1 { text-align: center; }

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
		<h1>축제</h1>
<!-- 검색조건 start -->
					<form id = "SearchForm" action = "../festival/page.do" method="get" style="text-align: right;">
						<select name='type'>
							<option value="" <c:out value="${pageMaker.cri.type==null?'selected':''}"/>>검색</option>
							<option value="T" <c:out value="${pageMaker.cri.type eq T?'selected':''}"/> >제목</option>
							<option value="P" <c:out value="${pageMaker.cri.type eq P?'selected':''}"/>>지역</option>
							
						</select>
						
					<input type="text" name="keyword"  >	
					<input type ="hidden" name="pageNum"value='${pageMaker.cri.pageNum}'/>	
					<input type ="hidden" name="amount"value='${pageMaker.cri.amount}'/>	
					
					<button type="button" class="btn btn-outline-info">Search</button>	
						
					</form>
				
				<!-- 검색 조건 end -->
	<hr>
		<!-- 여기에 내용 넣으세요 -->

	<!-- 검색 시작 -->


		<div class="row  justify-content-center">
			<c:forEach items="${list}" var="fes">

				<div class="card mb-3 mr-3 p-3"
					style="width: 450px; height: 300px; float: left;">
					<div class="row g-0" style="height: 300px;">
						<div class="col-md-4" style="line-height: 300px;">
							<img src="${fes.firstimg}" class="img-fluid rounded-start"
								alt="No Image" style="width: 200px; vertical-align: middle;">
						</div>
						<div class="col-md-8">
							<div class="card-body">
								<div class="row pt-5 pb-3">
									<div class="col">
										<h4>${fes.title}</h4>
										<span>${fes.startdate}~${fes.enddate}</span><br /> <span>${fes.address}</span>
									</div>

								</div>
								<div class="row pt-5">
									<div class="col">
										 <button type="button" class="btn btn-primary"
                                 id="detailbtn" onclick="location.href='../festival/detail.do?num='+${fes.num}">상세보기</button>

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
						    <li class="paginate_button previous"><a  href="${pageMaker.startPage-1}">Previous</a></li>
					    </c:if>
				
					  	<c:forEach  var="num"  begin="${pageMaker.startPage }"  end="${pageMaker.endPage }">
						    <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active" : "" }">
						    <a  href="${num }">${num }</a></li>
					  	</c:forEach>
					    
					    <c:if test="${pageMaker.next }">
						    <li class="paginate_button next"><a  href="${pageMaker.endPage+1}">Next</a></li>
					    </c:if>
					  </ul>
				</div>
				<!-- 페이지 처리 End -->
				
				<form id="actionForm" action="../festival/page.do" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					  <input type="hidden" name="type" value='<c:out value="${cri.type}"/>'>
               <input type="hidden" name="keyword"   value='<c:out value="${cri.keyword}"/>'>
				</form>
	
		<script>
		//$("#detailbtn").on("click", function() {
			//$.ajax({
				
			//})
	//	});
		
	

	</script>


	</div>





	<!-- Modal -->
	<div class="modal fade" id="detailModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
	
	</div>

<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script type="text/javascript">
 
 
	var actionForm = $("#actionForm");
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


	<jsp:include page="../includes/footer.jsp"></jsp:include> 

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


