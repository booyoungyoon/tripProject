function loginCheck() {
	if (document.loginfrm.userId.value.length == 0){
		alert("아이디를 작성해 주세요");
		loginfrm.userId.focus();
		return false;
		}
	if (document.loginfrm.userPass.value == ""){
		alert("비밀번호를 작성해 주세요");
		loginfrm.userPass.focus();
		return false;
		}
	return true;
}

function idfindCheck() {
	if (document.findidfrm.idfindname.value.length == 0){
		alert("이름을 작성해 주세요");
		findidfrm.idfindname.focus();
		return false;
		}
	if (document.findidfrm.idfindemail.value.length == 0){
		alert("이메일을 작성해 주세요");
		findidfrm.idfindemail.focus();
		return false;
		}
	if (document.findidfrm.idfindbirth.value.length == 0){
		alert("생년월일을 작성해 주세요");
		findidfrm.idfindbirth.focus();
		return false;
		}
	return true;
}

function pwfindCheck() {
	if (document.findpwfrm.pwfindid.value.length == 0){
		alert("이름을 작성해 주세요");
		findpwfrm.pwfindid.focus();
		return false;
		}
	if (document.findpwfrm.pwfindemail.value.length == 0){
		alert("이메일을 작성해 주세요");
		findpwfrm.pwfindemail.focus();
		return false;
		}
	if (document.findpwfrm.pwfindphone.value.length == 0){
		alert("핸드폰번호를 작성해 주세요");
		findpwfrm.pwfindphone.focus();
		return false;
		}
	return true;
}

function checkJoin() {

	if (document.joinfrm.userId.value.length == 0){
		alert("아이디를 입력하세요.");
		joinfrm.userId.focus();
		return false;
	}
	
	if (document.joinfrm.userPass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		joinfrm.userPass.focus();
		return false;
	}
	
	if (document.joinfrm.siginPass.value.length == 0){
		alert("비밀번호를 입력하세요.");
		joinfrm.siginPass.focus();
		return false;
	}
	
	
	var p1 = document.getElementById('signup-pw').value;
	var p2 = document.getElementById('signup-pww').value;
	if( p1 != p2 ) {
		alert("비밀번호가 일치 하지 않습니다");
		return false;
	}
			
	if (document.joinfrm.userName.value.length == 0){
		alert("이름을 입력하세요.");
		joinfrm.userName.focus();
		return false;
	}
	
	if (document.joinfrm.email.value.length == 0){
		alert("이메일을 입력하세요.");
		joinfrm.email.focus();
		return false;
	}
		
	if (document.joinfrm.email.value.length == 0){
		alert("이메일을 입력하세요.");
		joinfrm.email.focus();
		return false;
	}
	
	if (document.joinfrm.gender.value == "gender"){
		alert("성별을 선택하세요.");
		joinfrm.gender.focus();
		return false;
	}
	
	if (document.joinfrm.phone.value.length != 11){
		alert("- 을 제외한 11자리를 입력해주세요.");
		joinfrm.phone.focus();
		return false;
	}
	
 	if (document.joinfrm.question.value == "select"){
		alert("질문을 선택하세요.");
		joinfrm.question.focus();
		return false;
	}
	
	if (document.joinfrm.answer.value.length == 0){
		alert("본인확인질문을 작성해 주세요.");
		joinfrm.answer.focus();
		return false;
	}
	return true;
}