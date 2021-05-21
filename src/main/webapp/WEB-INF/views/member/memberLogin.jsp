<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 폰트어썸 라이브러리 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 구글 머터리얼 아이콘 라이브러리 -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- 제이쿼리 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
/* Bordered form */
.login form {
	border: 3px solid #f1f1f1;
}

/* Full-width inputs */
.login input[type=text], .login input[type=password] {
	width: 100%;
	padding: 12px 20px;
	margin: 8px 0;
	display: inline-block;
	border: 1px solid #ccc;
	box-sizing: border-box;
}
.container input[type=text] {
    margin: 8px 0 20px 0;
}
/* Set a style for all buttons */
.login button {
	background-color: goldenrod;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
    border-radius: 11px;
    font-size: 15px;

}

.login button[type=submit]{
    margin: 20px 0 10px;
    position: relative;
    outline: none;
}
.login button[type=submit]:before {
	content:"";
	position: absolute;
	left: 0;
	top: 0;
	width:176px;
	height:70px;
	background: #6d6fc7 0% 0% no-repeat padding-box;
	opacity:.68;
	filter: blur(34px);
    z-index: -1;
}
.login button[type=submit]:after {
	content:"";
	position: absolute;
	width:246px;
	height:98px;
	/* background: #fface0 0% 0% no-repeat padding-box; */
	background: gold 0% 0% no-repeat padding-box;
	opacity:.68;
	filter: blur(34px);
    z-index: -1;
}
/* Add a hover effect for buttons */
.login button[type=button]:hover {
	opacity: 0.8;
}
html:hover button[type=submit]:before{
	animation: blur 1.5s infinite linear;
}
html:hover button[type=submit]:after{
	animation: blur2 1.5s .1s infinite linear;
}
@keyframes blur{
	0% { transform: translateY(0);}
	50% { transform: translateY(20px);}
	100% { transform: translateY(0);}
}
@keyframes blur2{
	0% { transform: translateY(0);}
	50% { transform: translateY(-20px);}
	100% { transform: translateY(0);}
}
/* 회원가입 버튼 색상은 현재 빨강색 */
.container > .cancelbtn {
	width: auto;
	padding: 10px 18px;
	/*색상 빨간색*/
	/* background-color: #f44336; */
	/*색상 분홍색*/
	/* background-color: #f09baf;  */
	/*색상 파란색*/
	background-color: #6d6fc7; 
}

/* Center the avatar image inside this container */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
	width: 40%;
	border-radius: 50%;
}

/* Add padding to containers */
.container {
	padding: 16px;
}

/* The "Forgot password" text */
span.psw {
	float: right;
	padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 100%;
	}
}

.login{
    position: absolute;
    left: 50%;
    top: 50%;
    width: 503px;
    transform: translate(-50%, -50%);
}
.login h1 {
	text-align:center;
	color: gold;
    font-size: 42px;
    font-weight: 600;
	text-transform: capitalize;
    letter-spacing: 2.5px;
    font-family: 'Lobster', cursive;
    line-height: 1;
}
.login h1 span{
	color: #6d6fc7;
	display: block;
	font-size: 32px;
	font-weight: normal;
	letter-spacing: 0;
}
.container label span{
    vertical-align: middle;
    padding: 0 5px 0 0;
}
</style>
</head>
<body>
	<div class="login">
		<form action="${ pageContext.request.contextPath }/member/login" method="post">
			<div class="imgcontainer">
				<h1>
					<span>be better more flow</span>
					BetterFlow
				</h1>
			</div>

			<div class="container">
				<label for="user_email"><span class="material-icons">person_outline</span><b>Email</b></label> 
				<input type="text" placeholder="이메일을 입력하세요" name="user_email" id="user_email"required> 
				<label for="user_pw"><span class="material-icons">lock_open</span><b>password</b></label> 
				<input type="password" placeholder="비밀번호를 입력하세요" name="user_pw" id="user_pw" required>
				<button type="submit" >로그인</button>
			</div>

			<div class="container">
				<button type="button" class="cancelbtn" onclick="join();">회원가입</button>
				<span class="psw"><a href="${pageContext.request.contextPath}/member/memberinfofind">회원정보 찾기</a></span>
			</div>
		</form>
	</div>
	<script>
		var basePath = "${pageContext.request.contextPath}";
		function join() {
			location.href = "${pageContext.request.contextPath}/member/join";
		}
		$(function(){
			var msg = "${msg}";
			console.log("msg : " + msg);
			if(msg == "noMatchEmail"){
				alert("이메일이 다릅니다!");
				$("#user_email").focus();

			} else if(msg == "success"){
				alert("회원가입에 성공하였습니다.");
			} else if(msg == "noMatchPw"){
				alert("비밀번호가 다릅니다!");
				$("#user_pw").focus();
			} 
		});
		
		
	</script>
</body>
</html>
