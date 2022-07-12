<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>여행가기 좋은날</title>
    <link rel="stylesheet" href="fontawesome/css/all.min.css"> <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/magnific-popup.css"> 
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
 #slider {width: 1000px; height: 700px; margin: 0 auto;}
       footer { height:400px;  color: #bbbbbb; background-color: #f5f5f5;
         font-weight: normal;
    font-style: normal;}
        footer >a {color : #666666;}
        #gtco-footer {
  padding: 4em 0;
  text-align: center;
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
            <li><a href="#">로그인</a></li> 
            </ul>
        
    </nav>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>

	<script>
 	$(document).ready(function() {
	$('#summernote').summernote({
		placeholder: '내용을 입력하세요',
		tabsize: 2,
		height: 500,
		lang : 'ko-KR',
		toolbar: [
			// 글꼴 설정
			['fontname', ['fontname']],
			// 글자 크기 설정
			['fontsize', ['fontsize']],
			// 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
			['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			// 글자색
			['color', ['forecolor','color']],
			// 표만들기
			['table', ['table']],
			// 글머리 기호, 번호매기기, 문단정렬
			['para', ['ul', 'ol', 'paragraph']],
			// 줄간격
			['height', ['height']],
			// 그림첨부, 링크만들기, 동영상첨부
			['insert',['picture','link','video']],
			// 코드보기, 확대해서보기, 도움말
			['view', ['codeview','fullscreen', 'help']]
			],
			// 추가한 글꼴
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
			// 추가한 폰트사이즈
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
			});
});
</script>
 
</head>
<body>
<div id="slider">
         <!-- 여기에 내용 넣으세요 -->
         <h3>여행지 추천 글 쓰기</h3><br>

      <form method="post" action="destination.jsp">
      <table border=1 width="100%">
      	<tr>
      		<td align="center">제목</td>
      		<td><input type="text" name="subject" style="width:100%"></td>
      	</tr>
      	<tr>
      		<td colspan="2">
      			<textarea id="summernote" name="memo"></textarea>
      		</td>
      	</tr>
      </table>
      <input type="submit" value="등록">
</form>
      
    </div>
    
	<footer id="gtco-footer" role="contentinfo">

			
				<div >
		 <a href="#"><h5> GoodDayTrip Team</h5></p>
		
		<br>
	
		 <a href="#"><h5>Contact</h5></a>
          <p><i class="fas fa-home me-3"></i> New York, NY 10012, US</p>
          <p>
            <i class="fas fa-envelope me-3"></i>
            gooddaytip@example.com
          </p>
          <p><i class="fas fa-phone me-3"></i> + 82 234 567 88</p>
          <p><i class="fas fa-print me-3"></i> + 82 234 567 89</p>
          
         <br>
         <a href="#"><h5>   Partners 모집</a></h5>
					<p>파트너와의 ‘열린’ 소통 및 콘텐츠 제휴를 환영합니다.</p>
					
					</div>
					
			</footer>
</body>
</html>