<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>


<script>
	// Get the modal
	$(function() {
		var modal_process = document.getElementById('modal_process');

		// Get the button that opens the modal
		var btn_process = document.getElementById("process_add");

		// Get the <span> element that closes the modal
		var modal_process_close = document
				.getElementById("modal_process_close");

		// When the user clicks on the button, open the modal   asdasdasds
		btn_process.onclick = function() {
			modal_process.style.display = "block";
		}
		// When the user clicks on <span> (x), close the modal
		modal_process_close.onclick = function() {
			modal_process.style.display = "none";
		}
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal_process) {
				modal_process.style.display = "none";
			}

		}
	});
</script>
<style>

        .material-icons.md-18 { font-size: 18px; }
        
        .material-icons.md-24 { font-size: 24px; }
        
        .material-icons.md-36 { font-size: 36px; }

		.material-icons.md-48 { font-size: 48px; }
        
        /*  Rules for using icons as black on a light background.   */

		.material-icons.md-dark { color: rgba(0, 0, 0, 0.54); }

		.material-icons.md-dark.md-inactive { color: rgba(0, 0, 0, 0.26); }



		/* Rules for using icons as white on a dark background.  */

		.material-icons.md-light { color: rgba(255, 255, 255, 1); }

		.material-icons.md-light.md-inactive { color: rgba(255, 255, 255, 0.3); }

.process_menu {
	width: 1100px;
	height: 300px;
	border: 2px solid #626262;
	background-color: white;
}



.process_text {
	font-size: 25px;
	color: black;
	margin: 20px;
}

.process_text_re {
	font-size: 20px;
	color: black;
	margin: 20px;
	display: inline;
	
}


.hr {
	color: #626262;
}

.processadd_area {
	width: 1100px;
	height: 60px;
}

.process_add {
	width: 150px;
	height: 30px;
	color: black;
	background-color: white;
	border: 3px solid #626262;
	font-size: 15px;
	margin: 15px;
	float: right;
}

.text_area {
	margin-top: 60px;;
	text-align: center;
}

.left_menu_search_process {
	width: 300px;
	height: 600px;
	margin: 15px;
	border: 1px solid #626262;
	float: left;
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

.h2_enternal {
	margin-left: 10px;
}



.btn_process_search {
	width: 70px;
	height: 30px;
	background-color: gold;
}

.left_menu_search {
	width: 300px;
	height: 650px;
	margin: 15px;
	border: 1px solid #626262;
	float: left;
}

.middle_menu_buttons {
	width: 100px;
	height: 650px;
	float: left;
}


.list_area {
	background-color: gray;
	margin-top: 10px;
	width: 400px;
	height: 650px;
}

.confirm_and_close_area {
	width: 400px;
	height: 50px;
	background-color: #626262;
	float: right;
}

.btn_delete_line{
	width: 60px;
	height: 30px;
	color:black;
	background-color: gold;
	float:right;
	
}

.modify_line{
	width: 60px;
	height: 30px;
	color:black;
	background-color: gold;
	float:right;
	margin-right: 15px;

}


/* 프로세스 설정 스타일  */
.modal_name_internal {
	width: 400px;
	height: 50px;
	background-color: white;
}





. {
	width: 700px;
	height: 800px;

}



.process_search {
	width: 200px;
	height: 30px;
	border: 1px solid #626262;
	box-shadow: black;
	margin-left: 10px;
}

.btn_process_search {
	width: 50px;
	height: 30px;
	background-color: gold;
}

.middle_text{
	color: #626262;
	font-size: 20px;
}

.line_div{
	margin-top: 15px;
}




.confirm_and_close_area_process {
	width: 700px;
	height: 50px;
	background-color: #626262;
	position: relative;
}

        


/* 프로세스 설정 스타일 끝 */

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
	padding: 20px;
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}

 
</style>



</head>
<body>
	<jsp:include page="../../common/menubar.jsp" />
	<div class="box">
		<div class="process_menu">
			<div>
				<p class="process_text">프로세스</p>
			</div>
			<hr class="hr">
			<div class="processadd_area">
				<button id="process_add" name="process_add" class="process_add">프로세스
					추가</button>
			</div>
			<hr class="hr">
			<div class="line_div">
			<p class="process_text_re">개인 결재라인</p>
				<button id="modify_line" name="modify_line" class="modify_line">수정</button>
			<button id="delete_line" name="delete_line" class="btn_delete_line">휴지통</button>
		
			</div>
			<div class="text_area">

				<a class="middle_text"> 자주 쓰는 결재선을 등록해 나의 프로세스를 만들어보세요. </a>

			</div>
		</div>
	</div>
	<div id="modal_process" class="modal">

		<!-- Modal content -->
		<div class="modal-content-process">
			<span class="close">&times;</span>
			<jsp:include page="../../common/modal_create_process.jsp" />

		</div>

	</div>
</body>
</html>