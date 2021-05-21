<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의정보 - 나의 인사 정보</title>
<link href="<%= request.getContextPath() %>/resources/css/myInfo/myInfo.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../../common/menubar.jsp"/>
<div class="box">
	<div class="myInfo_left br5">
		<div>
			<div class="myPhoto h250 bb_line"><!-- 이미지, 이름부분 -->
				<div class="photoUpload">
					<div>  <!-- 이미지 -->
						<div class="photo-wrapper">
							<img class="w70 mrgl15" src="<%= request.getContextPath() %>/resources/icon/icon_profile.png"/>
							<a class="editBtn t251 w284 pg">편집</a>
						</div>
						<div>
							<input type="file" accept="image/*" class=" mrgl36 mrgtM18 din">
						</div>
					</div>
					<div><!-- 이름 -->
						<p>
							<span class="fl"><!-- 여기에 사람모양 아이콘 넣기 -->
								<img class="w12 mrgl50" src="<%= request.getContextPath() %>/resources/icon/icon_profileName.png"/>
							</span>
							<span>주현주현</span>
						</p>
					</div>
				</div>
			</div>
			<div class="myInfoCategory"><!-- 카테고리 부분 -->
				<div class="mrgl5 fs20">
					<div id="myInfoBtn">
						<p class="pgb mrgt3 mrgb3"><span class="mrgl3">기본 정보</span></p>	
					</div>

                </div>
			</div>
		</div>
	</div>
	<div class="myInfo_right br5">
		<div class="p5">
			<!-- 기본정보 시작 -->
			<div>
				<div>
					<span class="fwb fs20">이름</span><br>
					<input type="text" class="myStyle mrgt10 h26 fs16 p2 br5" value="${login.user_name }" readonly>
						</div>
				<div class="mrgt20">
					<span class="fwb fs20">이메일</span><br>
					<input type="email" class="myStyle mrgt10 h26 fs16 p2 br5" value="${login.user_email }" readonly>
				</div>
				<div class="mrgt20">
					<span class="fwb fs20">부서</span><br>
					<input type="text" class="myStyle mrgt10 h26 fs16 p2 br5" value="인사부서" readonly>
				</div>
				<div class="mrgt20">
					<span class="fwb fs20">권한</span><span>(일부 관리 권한을 부여하고 싶은 경우 일반 관리자로 설정 한 후 관리자 > 보안 관리 > 관리자 권한 권리에서 필요한 권한을 설정할 수 있습니다.)</span><br>
					<input type="text" class="myStyle mrgt10 h26 fs16 p2 br5" value="마스터계정" readonly>
				</div>
			</div>
			<!-- 비밀번호변경 시작 -->
			<form id="passUpdate" action="#" method="post">
				<div>
					<h3 class="mrgt9">비밀번호 변경</h3>
					<div class="mrgt2">
						<a class="cRed fl pt2">*</a><span class="fwb fs20 p1 mrgr5">현재 비밀번호 </span>
						<input type="password" class="mrgt10 h26 fs16 p2 w300 outL" name="beforePwd" id="beforePwd">
					</div>
					<div>
						<a class="cRed fl pt2">*</a><span class="fwb fs20 p1 mrgr8">새비밀번호 </span>
						<input type="password" class="mrgt10 h26 fs16 p2 w300 outL" name="userPwd" id="pwd1" placeholder="변경하실 비밀번호를 입력하세요." required>
					</div>				
					<div>
						<a class="cRed fl pt2 pt2">*</a><span class="fwb fs20 p1 mrgr2">새비밀번호 확인 </span>
						<input type="password" class="mrgt10 h26 fs16 p2 w300 outL" name="reuserPwd" id="pwd2" placeholder="변경하실 비밀번호를 다시 입력하세요." required>
						<div class="alert alert-success mrgl26 mrgt1" id="alert-success" style="color:#F9AD1B;">비밀번호가 일치합니다.</div>
						<div class="alert alert-danger  mrgl26 mrgt1" id="alert-danger" style="color : red;">비밀번호가 일치하지 않습니니다.</div>
						<div id="login_user_id" style="display:none;">${login.user_id}</div>
					</div>

				</div>
				<div>
                	<button type="button" class="submit bgbtn h26 mrgt2 mrgl92 w50 br5" id="submit" onclick="changeMyPwd();" style="cursor: pointer;">저장</button> 
				</div>
			</form>
		</div>
	</div>
</div>
<!--왼쪽 카테고리(cClick) 클릭하면 border유지 -->
<script>
   
</script> 
<!--비밀번호 일치여부 alert -->        
<script>
	$(function(){
		$("#alert-success").hide();
		$("#alert-danger").hide();
		$("input").keyup(function(){
			var pwd1=$("#pwd1").val();
			var pwd2=$("#pwd2").val();
			if(pwd1 != ""|| pwd2!=""){
				if(pwd1 == pwd2){
					$("#alert-success").show();
					$("#alert-danger").hide();
					$("#submit").removeAttr("disabled");
				}else{
					$("#alert-success").hide();
					$("#alert-danger").show();
					$("#submit").attr("disabled","disabled");
				}
			}
		});
   });
	
	function changeMyPwd(){
		var pwd1 = $("#pwd1").val();
		var pwd2 = $("#pwd2").val();
		var beforePwd = $("#beforePwd").val();
		var user_id = $("#login_user_id").text();
		var basePath = "${pageContext.request.contextPath}";
		
		console.log(user_id);
		if(pwd1 != ""){
			if(pwd2 != ""){
				if(beforePwd != ""){
					
					$.ajax({
						url:basePath + "/restmyinfo/changepwd",
						dataType:"text",
						data:{
							user_id:user_id,
							pwd1:pwd1,
							beforePwd:beforePwd
						},
						type:"POST",
						success:function(text){
							console.log("돌아오는 값 : " + text);
							if(text == ""){
								alert("비밀번호가 틀렸습니다!");
								pwd1 = $("#pwd1").val("");
								pwd2 = $("#pwd2").val("");
								beforePwd = $("#beforePwd").val("");
								$("#alert-success").hide();
								$("#beforePwd").focus();
							} else if( text == "noUpdatePwd"){
								alert("비밀번호를 변경하는데 실패하였습니다!");
								pwd1 = $("#pwd1").val("");
								pwd2 = $("#pwd2").val("");
								beforePwd = $("#beforePwd").val("");
								$("#alert-success").hide();
								$("#beforePwd").focus();
							} else if( text == "success"){
								alert("비밀번호를 변경하는데 성공하였습니다!");
								pwd1 = $("#pwd1").val("");
								pwd2 = $("#pwd2").val("");
								beforePwd = $("#beforePwd").val("");
								$("#alert-success").hide();
							} else if(text == "noCorrectPwd"){
								alert("입력한 현재 비밀번호가 다릅니다!!");
								pwd1 = $("#pwd1").val("");
								pwd2 = $("#pwd2").val("");
								beforePwd = $("#beforePwd").val("");
								$("#alert-success").hide();
								$("#beforePwd").focus();
							}
						},
						error:function(text){
							console.log(text);
						}
					});
				} else{
					alert("현재 비밀번호를 입력해주세요!");
					$("#beforePwd").focus();
				}
			} else{
				alert("비밀번호 확인을 입력해주세요!");
				$("#pwd2").focus();
			}
		} else {
			alert("비밀번호를 입력해주세요!");
			$("#pwd1").focus();
		}
		
	};
	
	
</script> 



</body>
</html>