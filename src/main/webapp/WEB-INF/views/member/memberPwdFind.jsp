<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
/*form 에 대한 스타일 설정 시작*/
.container {
  padding: 16px;
  background-color: white;
  user-select: none;
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
.container input[type=text]:focus, .container input[type=password]:focus{
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
		<form action="${pageContext.request.contextPath }/member/login" method="post">
		  <div class="auth-outer-header">
		  	<h1>비밀번호 찾기</h1>
		  </div>
		  <div class="container">
		    
		    <p>이메일로 전송된 인증번호를<br> 아래에 이름, 이메일과 함께 입력해주세요</p>
		    <hr>
		
		    <label for="member_email"><b>이메일을 입력해주세요</b></label>
		    <input type="text" placeholder="기존에 있는 이메일을 입력하세요" name="member_email" id="member_email" required>
		
		    <label for="member_phone"><b>이름을 입력해주세요</b></label>
		    <input type="text" placeholder="등록되어 있는 이름을 입력하세요" name="member_name" id="member_name" required>
			
			<button type="button" id="auth-psw-check" onclick="auth_calling();"><b>인증번호 전송</b></button>
    		<input type="text" placeholder="인증번호를 입력해주세요" name="auth_psw" id="auth_psw" required>
    
		    <hr>
			<div class="submit-wrapper">
		    	<button type="button" class="registerbtn" onclick="checkAuthNumber();">인증번호 확인</button>
		  	</div>
		  </div>
		  
		  <div class="display-none-auth"> </div>
		  
		  <div class="container signin">
		    <p>비밀번호가 기억나셨습니까? 
		    <br>그렇다면 <a href="${pageContext.request.contextPath }/member/login">돌아가기</a>.
		    
		    </p>
		  </div>
		</form>
	</div>
	
	<script>
		// 한글 이름 2~4자 이내
		var reg = /^[가-힣]{2,4}$/;
		var basePath = "${pageContext.request.contextPath}";
		
		function auth_calling(){
			var emailInput = $("#member_email").val();
			var nameInput = $("#member_name").val();
			//console.log(emailInput);
			var authNumber = $("#auth_psw").val();
			
			if(emailInput != ""){
				if(nameInput != ""){
					$("#member_email").prop("readonly", true);
					$("#member_name").prop("readonly", true);
					$("#auth_psw").css("display", "block");
					$("#auth-psw-check").prop("disabled", true);
					
					$.ajax({
						url:basePath + "/rest/authemail",
						dataType:"json",
						data:{
							checkemail:emailInput,
							checkname:nameInput
						},
						type:"POST",
						success:function(json){
							//console.log("받아온 데이터 : " + json.resultCode);
							//console.log("받아온 데이터 : " + json.authNum);
							//console.log("받아온 데이터 : " + json.checkUser);
							
							if(json.resultCode == "success"){
								alert("인증번호를 보내는데 성공했습니다! 잠시 후에 이메일을 확인해주세요");
								var $divAuthNum = $(".display-none-auth");
								$divAuthNum.html("");
								var $inputCheckBox = $("<input type='checkbox' name='authNumber' id='authNumber'>").val(json.authNum);
								var $inputMemberEmail = $("<input type='checkbox' name='memberPw' id='memberPw'>").val(json.checkUser.user_pw);
								
								$divAuthNum.append($inputCheckBox);
								$divAuthNum.append($inputMemberEmail);
								
							} else if(json.resultCode == "noMemberWithEmail"){
								alert("회원에 등록된 이메일을 입력해주세요!");
								$("#member_email").val('');
								$("#member_email").focus();
								$("#member_email").prop("readonly", false);
								$("#member_name").prop("readonly", false);
								
								$("#auth-psw-check").prop("disabled", false);
								$("#auth_psw").css("display", "none");
							} else if(json.resultCode == "noMatchEmailAndName"){
								alert("이름과 이메일이 맞지 않습니다!");
								$("#member_name").val('');
								$("#member_name").focus();
								$("#member_name").prop("readonly", false);
								$("#member_email").prop("readonly", false);
								
								$("#auth-psw-check").prop("disabled", false);
								$("#auth_psw").css("display", "none");
							}
							
						},
						error:function(error){
							console.log("에러 발생! : " + JSON.stringify(error));
						}
					});
					
					
				} else {
					alert("이름을 입력해주세요!");
				};
			}else {
				alert("이메일을 입력해주세요!");
			};
		};


		function checkAuthNumber(){
			var authNum = $("#authNumber").val();
			authNum = String(authNum);
			var userNum = $("#auth_psw").val();
			var userPw = $("#memberPw").val();
			
			if(authNum == userNum){
				alert("인증번호가 확인 되었습니다. 찾으시는 이메일의 비밀번호는 " +userPw  +"입니다. ");
				location.href="${pageContext.request.contextPath }/member/login";
			} else{
				alert("인증번호가 틀렸습니다. 올바른 인증번호를 입력하세요.");
				$("#auth_psw").val("");
				$("#auth_psw").focus();
			};
		};
	</script>
</body>
</html>