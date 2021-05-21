<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>이메일 찾기</title>
<style>
/*form 에 대한 스타일 설정 시작*/
.container {
  padding: 16px;
  background-color: white;
}

.container input[type=text] {
  width: 90%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
  display: block;
}

.auth-outer-header, .submit-wrapper{
    text-align: center;
}
.auth-outer-header{
    background-color: #f1f1f1;
    display: flow-root;
    border-bottom: 1px solid gold;
}
.container input[type=text]:focus{
  background-color: #ddd;
  outline: none;
}

.container hr {
  border: 1px solid gold;
  margin-bottom: 25px;
}

.registerbtn {
  background-color: goldenrod;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 90%;
  opacity: 0.9;
  font-size: 1.1em;
}

.registerbtn:hover {
  opacity: 1;
}

.container a {
  color: dodgerblue;
}

.signin {
  background-color: #f1f1f1;
  text-align: center;
}
/*form 스타일 설정 끝*/
.auth-outer{
	margin: 10% 30%;
    border: 2px solid gold;
}
#auth_psw{
	display:none;
    margin-top: 12px;
}
#auth-psw-check{
    height: 27px;
    background: white;
    cursor: pointer;
}
.display-none-auth{
	display:none;
}
</style>
</head>
<body>
	<div class="auth-outer">
		<form action="${pageContext.request.contextPath }/member/login" method="post" id="authForm">
		  <div class="auth-outer-header">
		  	<h1>이메일 찾기</h1>
		  </div>
		  <div class="container">
		    
		    <p>찾으려는 이메일 계정의 <br>휴대폰 번호를 입력해주세요</p>
		    <hr>
		
		    <label for="member_phone"><b>휴대폰 번호를 입력해주세요(-없이)</b></label>
		    <input type="text" placeholder="인증번호를 보낼 휴대폰 번호를 입력하세요" class="phoneNumber" name="member_phone" id="member_phone" required>
			
			<button type="button" id="auth-psw-check" onclick="auth_calling();"><b>인증번호 전송</b></button>
    		<input type="text" placeholder="인증번호를 입력해주세요" name="auth_psw" id="auth_psw" required>
    
		    <hr>
			<div class="submit-wrapper">
		    	<button type="button" class="registerbtn" onclick="submitController();">인증번호 확인</button>
		  	</div>
		  </div>
		  <div class="display-none-auth"> </div>
		  
		  <div class="container signin">
		    <p>이메일이 기억나셨습니까? 
		    <br> 비밀번호가 기억이 안나십니까?
		    <br>그렇다면 <a href="${pageContext.request.contextPath }/member/pwdfind">비밀번호 재발급</a>.
		    <br>아니면 <a href="${pageContext.request.contextPath }/member/login">돌아가기</a>.
		    
		    </p>
		  </div>
		</form>
	</div>
	<script>
		var basePath = "${pageContext.request.contextPath}";
		function auth_calling(){
			var numberInput = $("#member_phone").val();
			console.log(numberInput);
			var authNumber = $("#auth_psw").val();
			
			
				if(numberInput != ""){
					$("#member_phone").prop("readonly", true);
					$("#auth_psw").css("display", "block");
					$("#auth-psw-check").prop("disabled", true);
					
					$.ajax({
						url:basePath + "/rest/authsms",
						dataType:"json",
						data:{
							checkNumber:numberInput
						},
						type:"POST",
						success:function(json){
							console.log("받아온 데이터 : " + json.resultCode);
							console.log("받아온 데이터 : " + json.authNum);
							console.log("받아온 데이터 : " + json.checkUser);
							
							if(json.resultCode == "success"){
								var $divAuthNum = $(".display-none-auth");
								$divAuthNum.html("");
								var $inputCheckBox = $("<input type='checkbox' name='authNumber' id='authNumber'>").val(json.authNum);
								var $inputMemberEmail = $("<input type='checkbox' name='memberEmail' id='memberEmail'>").val(json.checkUser.user_email);
								
								$divAuthNum.append($inputCheckBox);
								$divAuthNum.append($inputMemberEmail);
							} else if(json.resultCode == "noMemberWithNumber"){
								alert("회원에 등록된 전화번호를 입력해주세요!");
								$("#member_phone").val('');
								$("#member_phone").prop("readonly", false);
								$("#member_phone").focus();
								$("#auth-psw-check").prop("disabled", false);
								$("#auth_psw").css("display", "none");
								
							}
						},
						error:function(json){
							console.log("에이작스 에러 ! " + JSON.stringify(text))
						}
						
					});
				} else {
					alert("휴대폰 번호를 입력해주세요!");
				};
		};
		$(document).on("keyup", ".phoneNumber", function() { 
			$(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") ); 
		});
		
		function submitController(){
			var authNum = $("#authNumber").val();
				authNum = String(authNum);
				console.log("authNum : " + authNum);
			var userNum = $("#auth_psw").val();
			var userEmail = $("#memberEmail").val();
			
			if(authNum == userNum){
				alert("인증번호가 확인 되었습니다. 찾으시는 이메일은 " +userEmail  +"입니다. ");
				location.href="${pageContext.request.contextPath }/member/login";
			}
		}

	</script>
</body>
</html>