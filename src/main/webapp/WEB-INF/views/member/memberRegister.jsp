<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 제이쿼리 라이브러리 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- 날짜포맷라이브러리 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<!-- 주소 api -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}
.input-container #email{
  width: 200px;
}
.input-container button[type=button]{
  margin-left: 29px;
  width: fit-content;
  background-color: dodgerblue;
  padding: 10px 20px;
  height: 40px;
}
.input-container input[type=date]{
	width: fit-content;
    padding: 0 10px 0 60px;
}
.input-container input:focus{
	toggleClass: fa-spin;
}
.input-container input[id=postCodeFind]{
    width: fit-content;
    background-color: dodgerblue;
    padding: 10px 20px;
    height: 40px;
    margin-left: 29px;
}
.emailCheckDisplay{
	display: none;
    padding: 0 20px 15px;
    margin-left: 40px;
    font-size: 16px;
    color: red;
}
.phone-wrapper{
    padding: 0 20px 15px;
    display: flex;
    margin-left: 30px;
    width: 89%;
}
.phone-wrapper span {
	width: 100px;
    vertical-align: middle;
    text-align: center;
    padding-top: 8px;
}
.phone-wrapper input:not{
    margin-left: 0;
}
.address-wrapper {
	padding: 0 20px 15px;
    margin-left: 40px;
}
.address-wrapper input{
	border: 2px solid #f1f1f1;
    margin-bottom: 10px;
    padding: 10px;
    width: 100%;
    margin-left: 0;
}
.input-gender-explain{
    padding: 9px;
    margin-left: 10px;
    font-size: 13.3333px;
    display: flex;
}
.input-gender-explain > label {
    opacity: .68;
}
.input-gender-select{
	display: flex;
    font-size: 15px;
    padding: 0 0 0 170px;
}
.input-marry-explain{
    padding: 9px;
    margin-left: 10px;
    font-size: 13.3333px;
    display: flex;
}
.input-marry-explain > label {
    opacity: .68;
}
.input-marry-select{
	display: flex;
    font-size: 15px;
    padding: 0 0 0 115px;
}
.icon {
  padding: 10px;
  background: gold;
  color: white;
  min-width: 50px;
  text-align: center;
  box-sizing: border-box;
  font-size: 20px;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
  margin-left: 10px;
  border: 2px solid #f1f1f1;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  outline: none;
}

.btn:hover {
  opacity: 1;
}

.outer{
	margin: 0 auto;
	position: absolute;
    left: 50%;
    top: 50%;
    width: 503px;
    transform: translate(-50%, -50%);
}
.outer > form {
	max-width:500px; 
	margin:auto;
	border:3px solid #f1f1f1;
	box-sizing: border-box;
    padding: 20px;
}
</style>
</head>
<body>

<div class="outer">
<form action="${pageContext.request.contextPath }/member/join" method="post">
  <h2 style="text-align:center;">회원가입</h2>
  <div class="input-container">
    <i class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="이름을 입력하세요" required name="user_name">
  </div>

  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
    <input class="input-field" type="text" placeholder="이메일을 입력하세요" required id="email">
  	<button type="button" class="btn" id="emailCheckBtn" onclick="emailDupCheck();">이메일 중복 체크</button>
  	<input type="hidden" name="emailDuplication" value="emailUncheck">
  	<input type="hidden" name="user_email" value="">
  </div>
  <div class="emailCheckDisplay">
  	<label>중복된 이메일입니다. 다른 이메일을 입력해주세요</label>
  </div>
  
  <div class="input-container">
    <i class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="비밀번호를 입력하세요" required name="user_pw">
  </div>
  <div class="address-wrapper">
  	<input class="input-field" type="password" placeholder="비밀번호를 한번더 입력하세요" required id="user_pwConfirm">
  	</div>
  <div class="emailCheckDisplay" id="pwdTextAlarm">
  	<label>비밀번호가 일치하지 않습니다.</label>
  </div>
  
  <div class="input-container">
    <i class="fa fa-phone icon"></i>
    <input type="hidden" name="user_phone">
    <div class="input-gender-explain"><label>(내선)전화번호를 입력하세요</label></div>
  </div>
  <div class="phone-wrapper">
  		<input class="input-field" type="tel" required name="pho1" maxlength="3"><span> - </span>
  		<input class="input-field" type="tel" required name="pho2" maxlength="4"><span> - </span>
  		<input class="input-field" type="tel" required name="pho3" maxlength="4">
  	</div>
  
  <div class="input-container">
    <i class="fa fa-mobile icon"></i>
    <input type="hidden" name="user_telphone">
    <div class="input-gender-explain"><label>휴대폰 번호를 입력하세요</label></div>
  </div>
  	<div class="phone-wrapper">
  		<input class="input-field" type="tel" required name="tel1" maxlength="3"><span> - </span>
  		<input class="input-field" type="tel" required name="tel2" maxlength="4"><span> - </span>
  		<input class="input-field" type="tel" required name="tel3" maxlength="4">
  	</div>
  
  <div class="input-container">
    <i class="fa fa-map icon"></i>
    <input type="hidden" name="user_address">
    <input class="input-field" type="text" readonly placeholder="우편번호" required id="postcode">
  	<input type="button" onclick="execDaumPostcode()" class="btn" id="postCodeFind" value="우편번호 찾기"><br>
  </div>
  	<div class="address-wrapper">
	  	<input type="text" id="address" readonly class="input-field" placeholder="주소"><br>
		<input type="text" id="detailAddress" class="input-field" placeholder="상세주소"> 
  	</div>
  	
  <div class="input-container">
    <i class="fa fa-venus icon"></i>
    <div class="input-gender-explain">
    	<label>성별을 선택해주세요</label>
    	<div class="input-gender-select">
		  	<label for="user_gender_M">남</label><input type="radio" name="user_gender" value="M" id="user_gender_M" required>
		  	&nbsp;&nbsp;
		    <label for="user_gender_W">여</label><input type="radio" name="user_gender" value="W" id="user_gender_W" required>
	  	</div>
    </div>
  </div>
  
  
  <div class="input-container">
    <i class="fa fa-calendar icon"></i>
    <div class="input-marry-explain"><label>생년월일을 입력해주세요</label></div>
    <input class="input-field" type="date" value="1990-01-01" required name="user_birth">
  </div>
  
  <div class="input-container">
    <i class="fa fa-heart icon"></i>
    <div class="input-marry-explain">
    	<label>혼인여부를 선택해주세요</label>
    	<div class="input-marry-select">
		  	<label for="user_marry_M">기혼</label><input type="radio" name="user_marry" value="Y" id="user_marry_M" required>
		  	&nbsp;&nbsp;
		    <label for="user_marry_W">미혼</label><input type="radio" name="user_marry" value="N" id="user_marry_W" required>
	  	</div>
    </div>
  </div>
  
  <button type="button" class="btn" onclick="memberRegisterBtn();" id="registerBtn">회원가입 하기</button>
  
  <div class="input-container">
    <input class="input-field" type="hidden" name="user_status" value="재직">
    <input class="input-field" type="hidden" name="user_join_date" value="">
    <input class="input-field" type="hidden" name="user_job" value="미지정">
    <input class="input-field" type="hidden" name="user_intro" value="없음">
    <input class="input-field" type="hidden" name="user_skill" value="없음">
    <input class="input-field" type="hidden" name="user_detail" value="미지정">
    <input class="input-field" type="hidden" name="user_detail_job" value="미지정">
  </div>
  
</form>
</div>
<script>
	$(function(){
		var d = new Date();
		$("input[name=user_join_date]").val(moment(d).format("YYYY-MM-DD"));
		
		$(".input-container input[type=text], .input-container input[type=tel], .input-container input[type=password]").focus(function(){
			$(this).parent().children().first().addClass("fa-spin");
		});
		$(".input-container input[type=text], .input-container input[type=tel], .input-container input[type=password]").blur(function(){
			$(this).parent().children().first().removeClass("fa-spin");
		});
	});
	
	function emailDupCheck(){
		//ajax로 이메일 중복 체크하기
		var basePath = "${pageContext.request.contextPath}";
		var email = $('#email').val();
		// 정규식 - 이메일 유효성 검사
        var regEmail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
		
		//console.log(email);
		if( email == ""){
			alert("이메일을 먼저 입력해주세요");
			$("#email").focus();
			return;
		} else {
			if(!regEmail.test(email)){
				alert("이메일 주소가 유효하지 않습니다");
				$("#email").focus();
				return;
			}
		}
		
		$.ajax({
			url:basePath + "/rest/email",
			type:"get",
			data:{
				email:email
			},
			dataType:"json",
			success:function(json){
				//console.log("이메일 중복체크 : " + json.count);
				if(json.count == 0){
					alert("사용 가능한 이메일입니다.");
					$("#email").attr("disabled", true);
					$("input[name=emailDuplication]").val("emailCheck");
					$("input[name=user_email]").val($("#email").val());
				    //console.log("$('input[name=emailDuplication]').val : " + $("input[name=emailDuplication]").val());
				} else {
					$("#email").focus();
					$("#email").css("border-color", "red");
					$("#email").blur(function(){
						$(this).css("border-color", "#f1f1f1");
						$(".emailCheckDisplay").css("display","none");	
					});
					$(".emailCheckDisplay").css("display","block");	
				}
			},
			error:function(json){
				console.log("error 발생! : " + json.count);
			}
		});
	};
	//주소 api 구현
	function execDaumPostcode() {
		new daum.Postcode({
			oncomplete : function(data) {
				// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
				// 각 주소의 노출 규칙에 따라 주소를 조합한다.
				// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
				var addr = ''; // 주소 변수
				var extraAddr = ''; // 참고항목 변수

				//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
				if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
					addr = data.roadAddress;
				} else { // 사용자가 지번 주소를 선택했을 경우(J)
					addr = data.jibunAddress;
				}

				// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
				if (data.userSelectedType === 'R') {
					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraAddr += (extraAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraAddr !== '') {
						extraAddr = ' (' + extraAddr + ')';
					}

				} else {
					document.getElementById("detailAddress").value = '';
				}

				// 우편번호와 주소 정보를 해당 필드에 넣는다.
				document.getElementById('postcode').value = data.zonecode;
				document.getElementById("address").value = addr;
				// 커서를 상세주소 필드로 이동한다.
				document.getElementById("detailAddress").focus();
			}
		}).open();
	};
	//상세주소 입력 후 hidden에 값포함해서 넣어주기
	$("#detailAddress").blur(function(){
		var zipcode = $("#postcode").val();
		//공백 제거하는거
		/* var address = $("#address").val().replace(/ /g, ''); */
		var address = $("#address").val();
		var detailAddress = $("#detailAddress").val();
		
		var total = $.trim(zipcode) +"$" + $.trim(address)+ "$" + $.trim(detailAddress);
		$("input[name=user_address]").val(total);
		//console.log("val : " + $("input[name=user_address]").val());
	});
	//휴대폰번호 마지막 칸 입력 후 hidden에 값 합쳐서 넣어주기
	$("input[name=tel3]").blur(function(){
		//var regExp = /^\d{3}-\d{3,4}-\d{4}$/;
		var regex1 = /^\d{3}$/;
		var regex2 = /^\d{3,4}$/;
		var regex3 = /^\d{4}$/;
		
		var tel1 = $("input[name=tel1]").val();
		if(!regex1.test(tel1)){
			tel1 = "";
			$("input[name=tel1]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			}).focus();
		};
		var tel2 = $("input[name=tel2]").val();
		if(!regex2.test(tel2)){
			tel2 = "";
			$("input[name=tel2]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			}).focus();
		};
		var tel3 = $("input[name=tel3]").val();
		if(!regex3.test(tel3)){
			tel3 = "";
			$("input[name=tel3]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			});
		};
		if( tel1 != "" && tel2 != "" && tel3 != ""){
			var telephone = tel1 +"-"+ tel2 +"-"+ tel3;
			$("input[name=user_telphone]").val(telephone);
			console.log("telephone : " + telephone);
		}else{
			alert("유효하지 않은 전화번호입니다. 다시 입력해주세요.");
			$("input[name=tel3]").val("");
		}
	});
	//내선전화번호 마지막 칸 입력 후 hidden에 값 합쳐서 넣어주기
	$("input[name=pho3]").blur(function(){
		var regex1 = /^\d{2,3}$/;
		var regex2 = /^\d{3,4}$/;
		var regex3 = /^\d{4}$/;
		
		var pho1 = $("input[name=pho1]").val();
		if(!regex1.test(pho1)){
			pho1 = "";
			$("input[name=pho1]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			}).focus();
		};
		var pho2 = $("input[name=pho2]").val();
		if(!regex2.test(pho2)){
			pho2 = "";
			$("input[name=pho2]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			}).focus();
		};
		var pho3 = $("input[name=pho3]").val();
		if(!regex3.test(pho3)){
			pho3 = "";
			$("input[name=pho3]").css("border-color", "red").blur(function(){
				$(this).css("border-color", "#f1f1f1")
			});
		};
		
		if( pho1 != "" && pho2 != "" && pho3 != ""){
			var phone = pho1 +"-"+ pho2 +"-"+ pho3;
			$("input[name=user_phone]").val(phone);
			console.log("phone : " + phone);
		}else{
			alert("유효하지 않은 전화번호입니다. 다시 입력해주세요.");
			$("input[name=pho3]").val("");
		}

		//console.log("phone : " + phone);
	});
	//비밀번호 확인 블러처리
	$("#user_pwConfirm").blur(function(){
		if($("#user_pwConfirm").val() == $("input[name=user_pw]").val()) {
			$("#pwdTextAlarm").css("display","none");	
		} else {
			$("#pwdTextAlarm").css("display","block");
		}
	});
	
	//회원가입 등록 버튼을 누를 때 입력값들을 검사한 뒤 폼전송
	function memberRegisterBtn(){
		var emailState = $("input[name=emailDuplication]").val();
		var pw = $("input[name=user_pw]").val();
		var pwConfirm = $("#user_pwConfirm").val();
		
		if(emailState == "emailCheck"){
			if( pw == pwConfirm){
				$("form").submit();				
			} else{
				alert("비밀번호를 확인해 주세요");
			}
		} else{
			alert("이메일 중복체크를 해주세요");
		}
	};
	
	//해야하는 거 
	//1. 전화번호(내선), 휴대폰번호 정규식표현으로 숫자만 들어가도록, - 안넣었을 시 넣어주도록 처리 [ok]
	//2. 주소 api 구현 [ok]
	//생각해야하는 거
	//1. 권한 부여를 회원가입에서 할건지? 아님 권한 부여 페이지에서?
	//2. 고용형태, 직위, 부서, 회사 다른 페이지에서 정하나?
</script>
</body>
</html>
