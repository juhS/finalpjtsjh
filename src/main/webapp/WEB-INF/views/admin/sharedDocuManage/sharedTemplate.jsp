<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta charset="UTF-8">
<style>
	.total-outer{
	    width: 1150px;
	    margin-left: 295px;
	    float: left;
		margin-top: 40px;
	    border: 1px solid #e7e7e7;
	}
	.left-region-wrapper{
		overflow-y: auto;
		height: 830px;
	}
	.left-header-wrapper{
		 width: 100%;
         border-bottom: 1px solid #e7e7e7;
         text-align: center;
         height: 47px;
	}
	.document_name_label{
		font-size: 20px;
	}
	.left-content-wrapper{
        background-color: white;
        height: auto;
        border-bottom: 1px solid #e7e7e7;
        padding: 30px;
	}
	/* 왼쪽 내용물 input div */
	.content-div{
		margin-bottom:8px;
	}
	.content-exp{
		border: none;
	    outline: none;
	    background: none;
	    box-shadow: 0 1px 0 #dbdbdb;
	    font-size: 14px;
	    color: #333;
	    height: 24px;
	    padding-bottom: 4px;
	    padding-top: 4px;
	    border-bottom: 0 solid #e7e7e7;
	    width: 415px;
	}
	.content-value{
		border: none;
	    outline: none;
	    background: none;
	    box-shadow: 0 1px 0 #dbdbdb;
	    color: #333;
	    padding-bottom: 4px;
	    padding-top: 4px;
	    border-bottom: 0 solid #e7e7e7;
	    width: 100%;
	    height: 40px;
    	font-size: 24px;
	}
	.date-format-decide-label{
	    display: block;
	    margin-bottom: 12px;
	    color: #8c8c8c;
	    font-size: 12px;
	    cursor:default;
	}
	#mod_draft_modify_date{
		appearance: none;
    	width: 100%;
    	border: none;
	    outline: none;
	    background: none;
	    box-shadow: 0 1px 0 #dbdbdb;
	    font-size: 16px;
	    color: #333;
	    height: 24px;
	    padding-bottom: 4px;
	    padding-top: 4px;
	}
	.content-draft-date{
		padding:15px;
	}
	/* 결재선 관련 스타일 시작 */
	.sign-table-outer{
	    float: right;
	}
	.sign-table-wrapper{
		clear: both;
	    display: block;
	}
	.sign-table{
    	table-layout: fixed;
	    border-collapse: collapse;
	    float: right;
	    margin-bottom: 8px;
	}
	.sign-table td{
	    border: 1px solid #333;
	    min-width: 80px;
	    text-align: center;
	    max-width: 100px;
	    overflow: hidden;
	    word-break: break-all;
	    font-size: 12px;
	}
	.position-cell{
		font-weight: bold;
	    padding: 2px;
	}
	.sign-cell{
		height: 60px;
	}
	.name-cell{
		padding:2px;
	}
	.content-value-div{
		display: flow-root;
	}
	/* 결재선 관련 스타일 끝 */
	.content-exp:hover, .content-value:hover{
		background:whitesmoke;
	}
	.content-exp:focus, .content-value:focus{
		border-bottom: 1px solid gold;
		box-shadow: 0 1px 0 gold;
	}
	.content-footer-div{
		-webkit-box-pack: justify;
    	justify-content: space-between;
	}
	.footer-column{
		padding: 8px;
	    display: block;
	    -webkit-box-flex: 0;
	    flex: none;
	}
	.menu_category_left{
		display: inline-block;
	    width: auto;
	    min-width: -webkit-fill-available;
	    padding: 20px;
	}
	.editor-wrapper{
		/* border-top: 1px solid #e7e7e7; */
	}
	.right-sidebar-outer{
       	width: 380px;
	    right: 0px;
	    top: 58px;
	    height: 872px;
	    margin-left: 882px;
	    border: 1px solid #b5b5b5;
	    float: left;
	    background-color: white;
	    position: absolute;
    }
    .right-header-btns{
    	align-items: center;
    	margin-bottom: 5px;
   	    display: flex;
    }
    .flex-column{
        width:inherit;
        height: 56px;
        background-color : white;
        border: 1px solid #e7e7e7;
        color: black;
        cursor:pointer;
        border-bottom: 1px solid #e7e7e7;
	    border-top: 0;
	    border-right: 0;
	    border-left: 0;
	    font-size: 22px;
        outline: none;
    }
    .store-btn > button, .process-btn > input{
   	    background-color: gold;
   	    color: white;
   	    outline: none;
    }
    .process-btn{
   	    border-bottom: 1px solid #e7e7e7;
    }
    .store-btn > button:hover, .process-btn > input:hover{
    	opacity: 0.9;
    }
    .store-btn, .cancel-btn{
    	width:100%;
    	outline: none;
    }
	.draft-explain-text{
        border-bottom: 1px solid #e7e7e7;
    	padding: 12px;
    }
    .draft-explain-text > textarea{
    	border: 1px solid #e7e7e7;
   	    outline: none;
	    font-size: 22px;
	    font-weight: bold;
	    padding: 0.625em;
	    resize: vertical;
	    width: -webkit-fill-available;
	    margin-top: 0px;
	    margin-bottom: 0px;
	    text-overflow: ellipsis;
	    height: 51px;
	    overflow: hidden;
    }
    .draft-explain-text > textarea:focus{
    	border: 2px solid gold;
    }
    .draft_explain-btn{
        height: 33px;
        border-bottom: 1px solid #e7e7e7;
    	padding: 10px;
    }
    .draft_explain-btn > button{
    	width: 100%;
	    height: 32px;
	    border: 1px solid #e7e7e7;
	    background: white;
	    font-size: 16px;
	    outline:none;
	    border-radius: 4px;
	    cursor:pointer;
    }
    .draft_explain-btn > button:hover{
    	border: 1px solid darkgrey;
    }
    .payment-person-appoint{
        display: flex;
	    -webkit-box-pack: start;
	    justify-content: flex-start;
	    -webkit-box-align: center;
	    align-items: center;
	    margin-bottom: 5px;
	    padding: 10px;
    	border-bottom: 1px solid #e7e7e7;
    }
    .row-left{
        -webkit-box-pack: start;
    	justify-content: flex-start;
    	display: flex;
	    -webkit-box-pack: start;
	    justify-content: flex-start;
	    -webkit-box-align: center;
	    align-items: center;
	    overflow: hidden;
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	    margin-right: 10px;
    }
    .row-right{
   	    -webkit-box-pack: end;
    	justify-content: flex-end;
    	margin-right: 0px;
    	display: flex;
	    -webkit-box-pack: start;
	    justify-content: flex-start;
	    -webkit-box-align: center;
	    align-items: center;
	    overflow: hidden;
	    -webkit-box-flex: 1;
    }
    .row-right > button{
  	    background-color: transparent;
	    border: 2px solid gold;
	    color: goldenrod;
	    outline: none;
	    cursor: pointer;
	    appearance: none;
	    border-radius: 2px;
	    font-size: .85714rem;
	    height: 26px;
    }
    #process-btn{ 
        width: 355px;
        height: 42px;
        border-radius: 4px;
        margin: 7px;
        margin-left: 12px;
        border: 1px solid transparent;
        cursor:pointer;
        font-size:18px;
    }
    .commit_process{
        color: black;
        margin-left: 15px;
     	margin: 15px;
        background-color: white;  	
    }
    .process_man{
        color: black;
        margin-left: 15px;
        margin: 15px;
    }
    /* 모달 프로세스 설정 스타일 시작 */
	.modal_name_internal{
       width: 400px;
       height: 50px;
       background-color: white;
    }
     .modal_name_internal_process{
	   width: 700px;
	   height: 50px;
	   background-color: white;
    }
	/* 모달 프로세스 배경*/
  	.modal_size_process{
       width: 700px;
       height: 800px;
    }
	.h2_enternal{
       margin-left: 10px;
	}
    .process_search{
	    width: 200px;
	    height: 30px;
	    border: 1px solid #626262;
	    box-shadow: black;
	    margin-left: 10px;
	}
    .btn_process_search{
        width: 50px;
        height: 30px;
        background-color:gold;
    }
    .left_menu_search_process{
     	width: 300px;
     	height : 600px;
     	margin: 15px;
     	border: 1px solid #626262;
	}
    .middle_menu_buttons{
    	width: 100px;
     	height : 600px;
     	height : 1000px;
     	float: left;
    }
    .btn_approver{
    	width:80px;
    	height: 40px;
    	color:black;
    }
    .btn_collaborator_person{
     	width:80px;
     	height: 40px;
     	color:black;
     	background-color:yellow;
    }
    .btn_consensual_person{
     	width:80px;
     	height: 40px;
     	background-color:red;
    }
    .btn_Recipient_person{
     	width:80px;
      	height: 40px;
      	background-color:green;
    }
    .btn_circular_person{
      	width:80px;
      	height: 40px;
      	color:black;
      	background-color:white;
    }

    .list_area_process{
      	border:1px solid #626262;
        margin-top: 10px;
        width: 300px;
        height: 600px;
    }
    .confirm_and_close_area_process{
    	width: 700px;
    	height: 50px;
    	background-color:#626262;
 		position: relative;
	}
	.right_menu_sequence{
		width: 250px;
		height : 640px;
		border : 2px solid #626262;
		float: left;
		margin-top:15px;
	}
	.modal_process_sequence_text{
		width:250px;
		height:40px;
		border:1px solid #626262;
		background-color: white;
	}
    /* 모달 프로세스 설정 스타일 끝 */
    .menu_button{
		width:360px;
		height : 40px;
	}
    .material-icons .md-18 {
    	font-size: 18px; 
  	}
	.material-icons .md-dark { 
		color: rgba(0, 0, 0, 0.54); 
	}
	.material-icons .md-light { 
		color: rgba(255, 255, 255, 1); 
	}
	/* 모달 설정 스타일 시작 */
	/* The Modal (background) */
	.modal {
		display: none; /* Hidden by default */
		position: fixed; /* Stay in place */
		z-index: 1; /* Sit on top */
		left: 0;
		top: 0;
		width: 100%; /* Full width */
		height: 100%; /* Full height */
		overflow: auto; /* Enable scroll if needed */
		background-color: rgb(0, 0, 0); /* Fallback color */
		background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	}
	
	/* Modal Content/Box */
	.modal-content-process {
		background-color: #fefefe;
		margin: 5% auto; /* 15% from the top and centered */
		border: 1px solid #888;
		width: 640px;
		border-radius: 8px;
	}
	.modal_size {
		width: 400px;
		height: 800px;
	}
	
	
	
	.modal_name_internal {
		width: 700px;
		height: 50px;
		background-color: white;
	}
	/* aaaa */
	.modal_size_process {
		width: 700px;
		height: 800px;
		
	}
	#displayNoneCb{
		display:none;
	}
</style>
<title>공유 문서 관리</title>
</head>
<body>
	<jsp:include page="../../common/menubar_dy.jsp" />
	<div class="total-outer">
		<div class="left-region-wrapper">
			<div class="left-header-wrapper" id="menu_name">
				<label id="document_name" class="document_name_label">${document_info.draft_title }</label>
				<input type="checkbox" id="displayNoneCb" 
					value="${docuTemplate.draft_no }">
			</div>
			<!-- 결재선 -->
			<div class="left-content-wrapper">
				<div class="content-div">
					<input type="text" placeholder="텍스트 입력" value="결재선" class="content-exp">
				</div>
				<div class="content-value-div">
					<div class="sign-table-outer">
						<div class="sign-table-wrapper">
							<table class="sign-table">
								<tbody>
									<tr></tr>
									<tr></tr>
									<tr></tr>									
									<tr></tr>									
								</tbody>
							</table>
						</div>
						<div class="sign-table-wrapper">
							<table class="sign-table">
								<tbody>
									<tr>
										<td class="position-cell">직위/직책</td>
										<td class="position-cell"></td>
										<td class="position-cell"></td>
									</tr>
									<tr>
										<td class="sign-cell"></td>
										<td class="sign-cell"></td>
										<td class="sign-cell"></td>
									</tr>
									<tr>
										<td class="name-cell">기안자</td>
										<td class="name-cell"></td>
										<td class="name-cell"></td>
									</tr>	
									<tr>
										<td class="date-cell">&nbsp;</td>
										<td class="date-cell">&nbsp;</td>
										<td class="date-cell">&nbsp;</td>
									</tr>																	
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 문서 제목 -->
			<div class="left-content-wrapper">
				<div class="content-div">
					<input type="text" placeholder="텍스트 입력" value="문서 제목" class="content-exp">
				</div>
				<div class="content-value-div">
					<input type="text" placeholder="문서 제목" value="${docuTemplate.draft_title}" class="content-value" id="mod_draft_title">
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 부서 -->
			<div class="left-content-wrapper">
				<div class="content-value-div">
					<input type="text" placeholder="텍스트 입력" value="부서명 : ${docuTemplate.dept_name}" class="content-value" id="mod_writer_dept">
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 직위/직책 -->
			<div class="left-content-wrapper">
				<div class="content-value-div">
					<input type="text" placeholder="텍스트 입력" value="직위/직책 : ${docuTemplate.job_name}" class="content-value" id="mod_writer_job">
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 신청자명 -->
			<div class="left-content-wrapper">		
				<div class="content-value-div">
					<input type="text" placeholder="텍스트 입력" value="신청자명 : ${docuTemplate.user_writer_name}" class="content-value" id="mod_draft_writer">
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 기안일 -->
			<div class="left-content-wrapper">
				<div class="content-div">
					<input type="text" placeholder="텍스트 입력" value="기안일 : ${docuTemplate.new_initial_regist_date}" class="content-exp">
				</div>
				<div class="content-value-div">
					<div class="content-draft-date">
						<label class="date-format-decide-label">날짜 형식 지정</label>
						<select id="mod_draft_modify_date">
							<option value="yyyy-MM-dd" selected="selected">YYYY-MM-DD (2020-12-16)</option>
							<option value="MM-dd-yyyy">MM-DD-YYYY (12-16-2020)</option>
							<option value="dd-yyyy-MM">dd-yyyy-MM (16-2020-12)</option>
						</select>
					</div>
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 신청내역 -->
			<div class="left-content-wrapper">
				<div class="content-div">
					<input type="text" placeholder="텍스트 입력" value="신청 내역" class="content-exp">
				</div>
				<div class="content-value-div">
					<input type="text" placeholder="텍스트 입력" class="content-value" id="mod_draft_apply_detail">
				</div>
				<div class="content-footer-div">
					<div class="footer-column"></div>
					<div class="footer-column"></div>
				</div>
			</div>
			<!-- 에디터 기안서 내용 -->
			<div class="editor-wrapper">
				<div class="menu_category_left">
					<jsp:include page="../../common/toust_editor.jsp" />
				</div>
			</div>
		</div>
		<div class="right-sidebar-outer">
			<div class="right-sidebar-wrapper">
				<div class="right-header-btns">
					<div class="store-btn">
						<button type="button" name="flex-column" id="flex-column-store" class="flex-column">저장</button>
					</div>
					<div class="cancel-btn">
						<button type="button" name="flex-column" id="flex-column-cancel"	class="flex-column">삭제</button>
					</div>
					<!-- 회원의 정보를 담기 위한 히든   -->
					<input type="hidden" id="user_id" name="user_id"
						value="${login_user_info.user_id }"> 
					<input type="hidden" id="user_name" name="user_name"
						value="${login_user_info.user_name }"> 
					<input type="hidden" id="document_id" name="document_id"
						value="${draft_no }">
				</div>
				<div class="draft-explain-text">
					<textarea name="draft-explain-text" id="draft-explain-text" cols="48" rows="2">${docuTemplate.draft_title}
                    </textarea>
				</div>
				<div class="draft_explain-btn">
					<button id="draft_explain-btn" name="draft_explain-btn">
						양식설명입력
					</button>
				</div>
				<div class="payment-person-appoint">
					<div class="row-left">
						<div>전결자 지정</div>
					</div>
					<div class="row-right">
						<button type="button">선택</button>
					</div>
				</div>
				<div class="process-btn">
					<input type="button" id="process-btn" name="process-btn"
						value="프로세스 설정">
				</div>
				<!-- 프로세스 메뉴   -->
				<div id="process_menu_all">
					<div class="menu_button">
						<p class="commit_process">프로세스 (결재순서)</p>
					</div>

					<div id="process_man" class="process_man">

						<%-- <span class='process_user_list_process' id='user_info_div'>
							<label>${login_user_info.user_name }</label> 
						</span> --%>
					</div>
				</div>
				<!-- 프로세스 메뉴 끝  -->
			</div>
		</div>
	</div>
	
	<!-- 모달창 전체 div -->
	<div id="modal_process" class="modal">

		<!-- 모달 내용 -->
		<div class="modal-content-process">
			<jsp:include page="/WEB-INF/views/common/modal_draftExplainModal.jsp" />
		</div>

	</div>
	<script>
		//1. 양식 설명, 양식 제목, 부서, 직위/직책, 신청자(=작성자명),기안일, 값받아오기
		//	필요한 테이블, draftFile, userClient, dept, job
		//2. 저장(= update 구현) 끝
		//cf. 양식설명은 그냥 위에다 쓰는걸로 
		var basePath = "${pageContext.request.contextPath}";
		//양식설명 모달창 띄우기
		//모달창 띄우기 위한 온로드 펑션
		$(function(){
			var modal_process = document.getElementById('modal_process');
			// 모달창을 열 버튼 생성 
			var $btn_process = $("#draft_explain-btn");
			// 모달을 닫을 취소 span 태그
			var $modal_process_close = $(".modal_close");

			//우리가 모달창을 부를 버튼을 클릭했을 때
			$btn_process.click(function() {
				modal_process.style.display = "block";
			});
			
			// When the user clicks on <span> (x), close the modal
			$modal_process_close.click(function() {
				modal_process.style.display = "none";
			});
			// When the user clicks anywhere outside of the modal, close it
			$(window).click(function(event) {
				if (event.target == modal_process) {
					modal_process.style.display = "none";
				}
			});
		});
		//양식설명 입력에서 확인버튼 눌렀을 때 ajax로 update처리
		function draftExplainUpdate(){
			var textAreaVal = $(".textarea").val();
			var draftNo = $("#displayNoneCb").val();
			$.ajax({
				url:basePath+"/adminajax/draftExplainUpdate",
				type:"GET",
				data:{
					textAreaVal:textAreaVal,
					draftNo:draftNo
				},
				success(){
					$("#modal_process").css("display","none");
				},
				error(){
					
				}
			});
		};
		
		//저장 눌렀을 때 alert 띄우고 ajax로 update 후 페이지 이동처리
		$("#flex-column-store").on("click", function(){
			//필요 값: 문서 제목, 문서번호, 문서설명, 정도..
			var draftTitle = $("#draft-explain-text").val().trim();
			var draftNo = $("#displayNoneCb").val();
			var draftExplain = $(".textarea").val().trim();
			
			$.ajax({
				url:basePath+"/adminajax/draftFileUpdate",
				dataType:"text",
				type:"GET",
				data:{
					draftTitle:draftTitle,
					draftNo:draftNo,
					draftExplain:draftExplain
				},
				success:function(text){
					if(text == "success"){
						alert("변경사항이 저장되었습니다.")
						location.href="manage"; 
					} else {
						alert("기안서를 저장할 수 없습니다!");
					}
				},
				error:function(text){
					console.log(JSON.stringify(text));
				}
			});
			
		});
	</script>
</body>
</html>