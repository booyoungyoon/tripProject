<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>비밀번호 찾기</title>
<script type="text/javascript" src="js/login.find.join.js"></script>
<style type="text/css">
@font-face {
	font-family: 'yg-jalnan';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_four@1.2/JalnanOTF00.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@import url("https://fonts.googleapis.com/css?family=Inconsolata:700");

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'yg-jalnan', cursive;
}

html, body {
	width: 100%;
	height: 100%;
}

.gd-container {
	max-width: 1100px;
	position: relative;
	margin: 0 auto;
	padding-left: 15px;
	padding-right: 15px;
}

#gtco-header {
	height: 700px;
	width: 100%;
}

#gtco-header>ul {
	display: inline;
}

#gtco-header .bg {
	position: relative;
}

#gtco-header .bg>img {
	height: 700px;
	width: 100%;
}

#gtco-header .bg .text>h1 {
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
	opacity: 0.7;
}

.Wallpapers {
	width: 100%;
	height: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

.find {
	width: 40%;
	height: 600px;
	background: white;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	border: 1px solid lightgray;
	margin: 0px 0px 50px;
}

h2 {
	color: aqua;
	font-size: 2em;
	margin-bottom: 50px;
}

.title {
	margin-bottom: 50px;
}

.find_email, .find_phone {
	margin-top: 50px;
	width: 80%;
}

.find_id input, .find_email input, .find_phone input {
	width: 100%;
	height: 50px;
	border-radius: 30px;
	margin-top: 10px;
	padding: 0px 20px;
	border: 1px solid gray;
	outline: none;
}

.find_id, .find_email, .find_phone {
	margin-top: 20px;
	width: 80%;
}

.submit {
	margin-top: 50px;
	width: 80%;
}

.submit input {
	width: 100%;
	height: 50px;
	border: 0;
	outline: none;
	border-radius: 40px;
	background: #2ce8de;
	color: white;
	font-size: 1.2em;
}

.threelinks {
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>
	<jsp:include page="includes/header.jsp"></jsp:include>
	<form method="post" action="home.jsp" name="findpwfrm">
		<div class="Wallpapers">
			<div class="find">
				<h2 class="title">비밀번호 찾기</h2>
				<div class="find_id">
					<input type="text" name="pwfindid" id="" placeholder="이름">
				</div>
				<div class="find_email">
					<input type="text" name="pwfindemail" id="" placeholder="이메일">
				</div>
				<div class="find_phone">
					<input type="text" name="pwfindphone" id="" placeholder="핸드폰번호">
				</div>
				<div class="submit">
					<input type="submit" value="비밀번호 찾기" onclick="return pwfindCheck()">
				</div>
				<div class="threelinks">
					<a href="idFind.jsp">아이디 찾기</a> &nbsp;&nbsp;
					<a href="login.jsp">로그인</a>&nbsp;&nbsp;
					<a href="join.jsp">회원가입</a>
				</div>
			</div>
		</div>
	</form>
</body>
</html>