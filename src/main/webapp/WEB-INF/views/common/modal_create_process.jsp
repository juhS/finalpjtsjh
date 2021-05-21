<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
      

       
        .list_area{
            background-color: gray;
            margin-top: 10px;
            width: 400px;
            height: 650px;
        }
        
        .confirm_and_close_area{
        	width: 400px;
        	height: 50px;
        	background-color:#626262;
        	float:right;
        	
		}
		.btn_internal_low{
			width: 35px;
			height: 20px;
			background-color:gold;
		}
		
		
		
		
		
		
		
		
		
		.modal_name_internal{
            width: 700px;
            height: 50px;
            background-color: white;
        }
        
		
		  .modal_size_process{
            width: 700px;
            height: 800px;
            background-color: blue;
        }
		.h2_enternal{
            margin-left: 10px;
        }
        
        
         .process_search{
            width: 300px;
            height: 30px;
            border: 1px solid #626262;
            box-shadow: black;
            margin-left: 10px;
        }

        .btn_process_search{
            width: 70px;
            height: 30px;
            background-color:gold;

        }
        .left_menu_search{
        	width: 300px;
        	height : 650px;
        	margin: 15px;
        	border: 1px solid #626262;
        	float: left;
        }
        
        .middle_menu_buttons{
       		width: 100px;
        	height : 650px;
        	float: left;
        }
        .btn_approver{
        	width:80px;
        	height: 50px;
        	color:black;
        	background-color:sky;
        }
        .btn_collaborator_person{
        	width:80px;
        	height: 50px;
        	color:black;
        	background-color:yellow;
        }
        .btn_consensual_person{
        	width:80px;
        	height: 50px;
        	background-color:red;
        }
        .btn_Recipient_person{
        	width:80px;
        	height: 50px;
        	background-color:green;
        	
        }
        .btn_circular_person{
        	width:80px;
        	height: 50px;
        	color:black;
        	background-color:white;
        }
        
    </style>
</head>
<body>-->
<style>
.process_set_name {
	width: 700px;
	height: 40px;
	background-color: white;
}

.h2_process {
	color: black;
	display: inline;
}

.process_name_text {
	width: 500px;
	height: 30px;
	borcer: 1px solid black;
}

.modal_size_process {
	width: 700px;
	height: 800px;

}

.modal_name_internal_process {
	width: 700px;
	height: 50px;
	background-color: white;
}

.h2_enternal {
	margin-left: 10px;
	color: black;
}

.process_set_name {
	width: 700px;
	height: 40px;
	background-color: white;
}

.h2_process {
	color: black;
}

.process_name_text {
	width: 500px;
	height: 30px;
	borcer: 1px solid black;
}

.left_menu_search_process {
	width: 300px;
	height: 600px;
	margin: 15px;
	border: 1px solid #626262;
	float: left;
}

.process_search {
	width: 200px;
	height: 30px;
	border: 1px solid #626262;
	box-shadow: black;
	margin-left: 10px;
	
}

.btn_enternal_search {
	width: 70px;
	height: 30px;
	background-color: gold;
	border-radius: 5px;
}

.list_area_process {
	margin-top: 10px;
	width: 300px;
	height: 600px;
}

.btn_approver {
	width: 80px;
	height: 50px;
	color: black;
	background-color: sky;
}
/*    */
.btn_collaborator_person {
	width: 80px;
	height: 50px;
	color: black;
	background-color: yellow;
}

.btn_consensual_person {
	width: 80px;
	height: 50px;
	background-color: red;
}

.btn_Recipient_person {
	width: 80px;
	height: 50px;
	background-color: green;
}

.btn_circular_person {
	width: 80px;
	height: 50px;
	color: black;
	background-color: white;
}
 /*  */
.right_menu_sequence {
	width: 250px;
	height: 640px;
	float: left;
	margin-top: 15px;
	border: 1px solid #626262;
}

.modal_process_sequence_text {
	width: 250px;
	height: 40px;
	border: 1px solid #626262;
	background-color: white;
}

.p_process_text {
	font-size: 15px;
	color: black;
	margin: 10px;
}

.p_text_recipient {
	color: #626262;
	text-align: center;
	margin: 15px;
}

.btn_internal_low {
	width: 40px;
	height: 25px;
	background-color: gold;
	float: right;
	margin-top: 15px;
	margin-bottom: 20px;
	border-radius: 5px;
}

.btn_internal_close {
	width: 40px;
	height: 25px;
	background-color: white;
	float: right;
	margin-top: 15px;
	margin-bottom: 20px;
	margin-right: 10px;
	margin-left: 5px;
	color: black;
	border-radius: 5px;
}


.middle_menu_buttons {
	width: 100px;
	height: 600px;
	float: left;
}

/* 왼쪽메뉴 이름 직위 부서검새을 위한 것  */
.list_area_dept_info{

	width: 298px;
    display: flex;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	
}
.dept_name{
	-webkit-box-flex: 1;
    flex: 1 1 auto;
    font-size: 15px;
    max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
	margin-left:20px;
}
.list_area_dept_info_user{

	width: 260px;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	margin-left: 20px;
	display:none;
	
}

.user_name{
	font-size: 14px;
	margin-left : 20px;
	padding:5px;
}
</style>

<div class="modal_size_process">
	<div class="modal_name_internal_process">
		<h2 class="h2_enternal">프로세스 설정</h2>
	</div>
	<div class="process_set_name">
		<p class="h2_process">나의 프로세스</p>
		<input type="text" id="process_name" name="process_name"
			class="process_name_text" placeholder="나의 프로세스">
	</div>

	<!-- 모달창 안에 모든 메뉴   -->
	<div>
		<!-- 왼쪽메뉴 -->
		<div class=left_menu_search_process>
			<div>
				<input type="text" name="process_search" id="process_search"
					class="process_search" placeholder="이름, 직위/직책, 부서 검색"> <input
					type="button" value="검색" id="btn_process_search"
					name="btn_circular_search" class="btn_enternal_search">
			</div>
			
			<div class="list_area_process" id="list_area_process">
			
			<c:forEach items="${dept_info }" var="dept">
				<div class="list_area_dept_info" id="list_area_dept_info">
					<span class="material-icons label-info">keyboard_arrow_down</span> <label class="dept_name">${dept.dept_name}</label>
				</div>
			
				<c:forEach items="${user_info}" var="user">
			
					<c:if test="${dept.dept_id eq user.dept_id}">
					
					<div class="list_area_dept_info_user" id="${ user.user_id}" name="${user.user_name }">
						<label class="user_name">${ user.user_name}</label>
					</div>
						
						
					</c:if>
							
						</c:forEach>
				</c:forEach>
			</div>
		</div>
<script>
$(function(){
	/* span태그에 온클릭 넣기  */	
	$('.list_area_dept_info').click(function(){
		$(this).nextUntil(".list_area_dept_info").slideToggle();
		/* 
			선생님이 알려주신거  
			$(this).nextUntil(".list_area_dept_info").toggle();	
			$(this).nextUntil(".list_area_dept_info").slideToggle();	
			$(this).nextUntil(".list_area_dept_info").fadeToggle();	
		
		*/
			console.log($(this).nextUntil(".list_area_dept_info"));
		});
	
});
</script>
		<!-- 중간 메뉴 버튼 5개 -->
		<div class="middle_menu_buttons">
			<button id="btn_approver_person" name="btn_approver_person"
				class="btn_approver">승인자</button>
			<br>
			<button id="btn_collaborator_person" name="btn_collaborator_person"
				class="btn_collaborator_person">협조자</button>
			<br>
			<button id="btn_consensual_person" name="btn_consensual_person"
				class="btn_consensual_person">합의자</button>
			<br>
			<button id="btn_Recipient_person" name="btn_Recipient_person"
				class="btn_Recipient_person">수신자</button>
			<br>
			<button id="btn_circular_person" name="btn_circular_person"
				class="btn_circular_person">회람자</button>
		</div>

		<!-- 오른쪽  프로세스 결재순서 -->
		<div class="right_menu_sequence">
			<div class="modal_process_sequence_text">
		
				<p class="p_process_text">프로세스 (결재순서)</p>
			</div>
			<div>
				<p class="p_process_text">프로세스 순서가 오는 곳</p>
			</div>
			<div class="modal_process_sequence_text">
				<p class="p_process_text">수신자</p>
			</div>
			<div>
				<p class="p_text_recipient" style="font-size: 12px;">등록된 수신자가
					없습니다.</p>
			</div>
			<div class="modal_process_sequence_text">
				<p class="p_process_text">회람자</p>

			</div>
			<div>
				<p class="p_text_recipient" style="font-size: 12px;">등록된 회람자가
					없습니다.</p>
			</div>
		</div>


	</div>

	<div>
		<input type="button" id="modal_process_close"
			name="modal_process_close" value="닫기" class="btn_internal_close">
		<input type="button" id="modal_process_confirm"
			name="modal_process_confirm" value="확인" class="btn_internal_low">

	</div>
	
</div>

<!--    
</body>
</html> -->
