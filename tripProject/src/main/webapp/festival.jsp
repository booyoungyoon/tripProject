<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%--  <%
 String url ="jdbc:oracle:thin:@localhost:1521:xe";
 String sql="SELECT * FROM NOTICE";
 
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con = DriverManager.getConnection(url, "trip", "1234");
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery(sql);
%> --%>

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
 #slider {width: 1000px; height: 1000px; margin: 0 auto;}
 
     #visual123 .content-container{	
       height:inherit;
       display:flex; 
       align-items: center;
      background: url("../../images/customer/visual.png") no-repeat center;
        }
        .content-container {	
	margin-left: auto;
	margin-right: auto;
    width: 960px;
	height: inherit;
    position:relative;
}

#body123{
	min-height: 300px;
	border-top:5px solid #8CBA34;
	margin-top:1px;	
}


#body123.content-container{   
	display: flex;
}

#aside123 {
    /*-ms-grid-row:1;
    -ms-grid-column:1;*/
    width: 205px;
	
    height: inherit;    
	/*float: left;*/
}

#main123 {
    /*-ms-grid-row:1;
    -ms-grid-column:2;*/
    width: 755px;

    position: relative;
	height: inherit;	
	/*float: left;*/    
}
</style>
     
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
     	<!-- --------------------------- <visual> --------------------------------------- -->
	<!-- visual 부분 -->
	
	<div id="visual">
		<div class="content-container"></div>
	</div>

			<!-- --------------------------- main --------------------------------------- -->



		<main class="main">
			<h2 class="main title">축제 리스트</h2>
			
	
			
			<div class="search-form margin-top first align-right">
				<h3 class="hidden"> 검색폼</h3>
				<form class="table-form">
					<fieldset>
						<legend class="hidden"> 검색 필드</legend>
						<label class="hidden">검색분류</label>
						<select name="f">
							<option  value="title">제목</option>
							<option  value="writerId">작성자</option>
						</select> 
						<label class="hidden">검색어</label>
						<input type="text" name="q" value=""/>
						<input class="btn btn-search" type="submit" value="검색" />
					</fieldset>
				</form>
			</div>
			
			<div class="notice margin-top">
				<h3 class="hidden">축제리스트 목록</h3>
				<table class="table">
					<thead>
						<tr>
							<th class="w60">번호</th>
							<th class="expand">제목</th>
							<th class="w100">작성자</th>
							<th class="w100">작성일</th>
							<th class="w60">조회수</th>
						</tr>
					</thead>
					<tbody>
							
					<tr>
						<td>8</td>
						<td class="title indent text-align-left"><a href="#">74년 만에 공개된 비밀 정원, 청와대 이야기</a></td>
						<td>비밀</td>
						<td>
							2022-07-18		
						</td>
						<td>746</td>
					</tr>
							
					<tr>
						<td>7</td>
						<td class="title indent text-align-left"><a href="detail.jsp">올 여름, 해수욕장 어디로 가지?</a></td>
						<td>바다</td>
						<td>
							2022-06-15		
						</td>
						<td>631</td>
					</tr>
							
					<tr>
						<td>6</td>
						<td class="title indent text-align-left"><a href="detail.jsp">신라 천년의 밤을 만나다! 경주 동궁과 월지, 월정교</a></td>
						<td>경주</td>
						<td>
							2022-06-11		
						</td>
						<td>517</td>
					</tr>
							
					<tr>
						<td>5</td>
						<td class="title indent text-align-left"><a href="detail.jsp">반려견과의 특별한 하루를, 의성펫월드</a></td>
						<td>의성</td>
						<td>
							2022-05-24		
						</td>
						<td>448</td>
					</tr>
							
					<tr>
						<td>4</td>
						<td class="title indent text-align-left"><a href="detail.jsp">하루만에 즐기는 수원 당일치기 여행코스</a></td>
						<td>수원</td>
						<td>
							2022-04-24		
						</td>
						<td>520</td>
					</tr>
					
					
					</tbody>
				</table>
			</div>
			
			<div class="indexer margin-top align-right">
				<h3 class="hidden">현재 페이지</h3>
				<div><span class="text-orange text-strong">1</span> / 1 pages</div>
			</div>

			<div class="margin-top align-center pager">	
		
	<div>
		
		
		<span class="btn btn-prev" onclick="alert('이전 페이지가 없습니다.');">이전</span>
		
	</div>
	<ul class="-list- center">
		<li><a class="-text- orange bold" href="?p=1&t=&q=" >1</a></li>
				
	</ul>
	<div>
		
		
			<span class="btn btn-next" onclick="alert('다음 페이지가 없습니다.');">다음</span>
		
	</div>
	
			</div>
		</main>
		
			
		</div>
	</div>
        
 
<%--   <c:forEach items="${list }" var="board">
                                    <tr class="odd gradeX">
                                        <td><c:out value="${board.bno }"/></td>
                                        <td><c:out value="${board.title }"/></td>
                                        <td><c:out value="${board.writer }"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
                                        <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.updatedate }"/></td>
                                    </tr>
                                </c:forEach> --%>
 



<!--  <div id = "map" style="width: 800px; height: 300px;"></div>
	<script type="text/javascript" 
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d0289eba5f802b9a96043f6181b686"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);
	</script> -->
	
<!-- <script>
${document}.ready(function()){
	var result='<c:out value="${result}"/>';
	console.log("result"+result);
	
	checkModal(result);
	
	function checkModal(result){
		if(result ==="){
			return;
		}
		if(parselnt(result)>0){
			$(".modal-body").html("게시글"+parselnt(result)+"번이 등록되었습니다.");
			}
		$("#myModal").modal("show");
		
	}
	$("#regBtn").on("click",function()){
		self.location="/feditor/register";
	});
	
});

</script> -->

	</div>
        

    
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
<%-- <%
rs.close();
st.close();
con.close();
%> --%>

