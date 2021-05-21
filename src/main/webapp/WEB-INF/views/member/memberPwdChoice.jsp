<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 찾기</title>
<style>
	.memberPwd-outer{
	    background-color: #fefefe;
	    margin: 5% auto;
	    width: 60%;
	    text-align: center;
    	height: 400px;
   	    border-radius: 8px;
/* 	    border: 1px solid #888;
	    overflow: auto; */
	}
	.memberPwd-outer button:first-of-type{
	    width: 200px;
        height: 200px;
		margin-left: 10px;
	    margin: 5% auto;
	    vertical-align: bottom;
	    font-size: 1.3em;
        background: gold;
    	border-radius: 8px;
	}
	.memberPwd-outer button:last-child{
	    width: 200px;
	    margin-top: 90px;
	    height: 200px;
        margin: 5% auto;
	    display: inline-block;
	    font-size: 1.3em;
        background: pink;
    	border-radius: 8px;
	}
	.memberPwd-wrapper{
		border: 1px solid black;
		background: steelblue;
    	border-radius: 8px;
	}
	.memberPwd-header{
	    border: 1px solid black;
        background: cornflowerblue;
	    color: white;
	    border-radius: 8px;
	}
</style>
</head>
<body>
	<div class="memberPwd-outer">
			<div class="memberPwd-header">
				<h1>회원 정보 찾기</h1>
			</div>
			<div class="memberPwd-wrapper">
			<button type="button" onclick="smsAuthGo();">SMS로 인증하여 &nbsp;&nbsp;이메일 찾기</button>
			<button type="button" onclick="emailAuthGo();">이메일로 인증하여 비밀번호 재발급</button>
			</div>
	</div>
	<script>
		function smsAuthGo(){
			location.href="${pageContext.request.contextPath}/member/emailfind";
		};
		function emailAuthGo(){
			location.href="${pageContext.request.contextPath}/member/pwdfind";
		};
	</script>
</body>
</html>