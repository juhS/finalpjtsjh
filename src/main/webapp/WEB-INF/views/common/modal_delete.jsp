<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

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
.modal-content {
	background-color: #fefefe;
	margin: 5% auto; /* 15% from the top and centered */

	border: 1px solid #888;
	width : 300px; /* Could be more or less, depending on screen size      */
	height: 200px;
}

.top_text{
	width : 300px;
	height: 200px;
	
}
.top_text_area_delete{
	width: 300px;
	height: 20px;
	
}
/* as */
.p_top_text_delete{
	font-size: 15px;
	color : black;
	display: inline;
}

.inner_text_area{
	width : 300px;
	height: 160px;
	background-color: white;
	border: 2px solid #626262;
}
.p_middle_text{
	font-size: 10px;
	color: black;
	
}
.modal_bottom_button_area{
	width: 300px;
	height: 40px;
	background-color: #626262;
}
.modal_btn_cancle{
	width: 40px;
	height: 30px;
	background-color: #626262;
	color: black;
	margin-left: 5px;
	
}
.modal_btn_confirm{
	width: 40px;
	height: 30px;
	background-color: gold;
	color: white;
	margin-left: 20px;
}

</style>
</head>
<body>
	<script>
		$(function() {

			/* 수신자 모달창 스크립트 */
			// Get the modal
			var modal_delete = document.getElementById('modal_delete');

			// Get the button that opens the modal
			var btn = document.getElementById("delete_payment");

			// Get the <span> element that closes the modal
			var span_1 = document.getElementById("modal_btn_cancle");

			// When the user clicks on the button, open the modal 
			btn.onclick = function() {
				modal_delete.style.display = "block";
			}
			// When the user clicks on <span> (x), close the modal
			span_1.onclick = function() {
				modal_delete.style.display = "none";
			}
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal_delete) {
					modal_delete.style.display = "none";
				}
			}
			/* 수신자 모달창 스크립트 종료 */

		});
	</script>



	<!-- The Modal 수신자 회람자   -->
	<div id="modal_delete" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			

			<!-- 모달에 들어가는 div  -->
			<div class="top_text">
				<div class="top_text_area_delete">
					<p class="p_top_text_delete"> 알림 </p> <span class="close">&times;</span>
				</div>
			<div class="inner_text_area">
				<p class="p_middle_text"> 선택한 기안서를 삭제 합니다. 삭제된 기안서는 복구되지 않습니다. &nbsp &nbsp &nbsp &nbsp
				기안서를 삭제 하시겠습니까 ? 
				 </p>
			</div>
			<div class="modal_bottom_button_area">
			<button id="modal_btn_confirm" class="modal_btn_confirm" name="modal_btn_confirm" >확인</button>
			<button id="modal_btn_cancle" class="modal_btn_cancle" name="modal_btn_cancle" >취소</button>
		
				
			</div>
			
			</div>
		</div>
	</div>
</body>
</html>