<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta charset="UTF-8">
<title>공유 문서 등록</title>
<style>
	.outer ul {
		display: block;
		list-style:none;
	    margin-inline-start: 0px;
	    margin-inline-end: 0px;
	    padding-inline-start: 40px;
	}
	.outer body {
		color: #4a4a4a;
	    font-size: 1rem;
	    font-weight: 400;
	    line-height: 1.5;
	    font-family: "Nanum Gothic","Noto Sans Japanese","Noto Sans SC","Noto Sans TC","Noto Sans","Noto Sans","Noto Sans",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue","Helvetica","Arial",sans-serif;
	}
	.outer{
		background-color: #fff;
		margin-left: 311px;
		margin-right: 20px;
	    display: -webkit-box;
	    /* flex-direction: column; */
	    margin-bottom: 0;
	    text-rendering: auto;
	    color: #4a4a4a;
	    line-height: 1.5;
	    text-size-adjust: 100%;
	    box-sizing: inherit;
	    -webkit-font-smoothing: antialiased;
	    padding-top: 50px;
	    width: 320px;
	}
	.outer-wrapper {
	    display: table-cell;
	    -webkit-box-orient: vertical;
	    -webkit-box-direction: normal;
	    background-color: #fff;
	    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
	    max-width: 100%;
	    position: relative; 
	    height: 800px;
	}
	.header-category {
		font-weight: bold;
		height: 20px;
	    padding: 20px;
	    display: flex;
	    -webkit-box-pack: start;
	    justify-content: flex-start;
	    -webkit-box-align: center;
	    align-items: center;
	    -webkit-box-flex: 0;
	    flex: 0 0 auto;
	    box-shadow: 0 1px 2px rgba(10,10,10,0.1);
	    margin: 0;
	}
	.tree-list {
	    padding: 1px;
	    padding-right: 20px;
	}
	.tree-list li {
		margin-bottom: 5px;
	}
	.tree-list li ul {
		padding-bottom: 20px;
    	margin-top: 5px;
	}
	.tree-list li ul li {
		font-size: 1rem;
	}
	.cate-tree-root {
		background-color: #f8faff;
	    padding-left: 15px;
   		width: 210px;
	    border-radius: 3px;
		display: table-cell;
	    -webkit-box-orient: vertical;
	    -webkit-box-direction: normal;
	    flex-direction: column;
	    overflow: hidden;
	    padding: 10px 10px;
	    -webkit-box-flex: 1;
	    flex: 1 1 auto;
	    font-size: 1rem;
	    font-weight: 400;
	    line-height: 1.5;
	    color: #4a4a4a;
	    font-family: "Nanum Gothic","Noto Sans Japanese","Noto Sans SC","Noto Sans TC","Noto Sans","Noto Sans","Noto Sans",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue","Helvetica","Arial",sans-serif;
		box-shadow: 0 0 0 1px gold;
	    border: 1px solid gold;
	}
	.cate-tree-root > .material-icons {
		cursor: pointer;
	}
	.cate-name {
   	    display: inline-block;
    	color: darkgoldenrod;
   	    cursor: context-menu;
	}
	.material-icons {
		font-weight: bold;
		color: goldenrod;
		vertical-align: middle;
	}
	.cate-tree-item{
	    padding-left: 10px;
	    width: 185px;
		height: 34px;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    margin-bottom: 5px;
	    border: 1px solid #dae2ea;
	    border-radius: 3px;
	    text-align: -webkit-match-parent;
	    background-color: #f8faff;
	    border: 1px solid #dae2ea;
	}
	.click-column{
		padding-left: 10px;
		height: 34px;
	    display: flex;
	    -webkit-box-align: center;
	    align-items: center;
	    margin-bottom: 5px;
	    border: 1px solid #dae2ea;
	    border-radius: 3px;
	    text-align: -webkit-match-parent;
	    background-color: #f8faff;
		box-shadow: 0 0 0 1px gold;
	    border: 1px solid gold;
        color: darkgoldenrod;
	}
	/* 선택 양식 도입 style */
	.toolbar-layout {
		display: flex;
		margin-left: 20px;
	    -webkit-box-orient: vertical;
	    -webkit-box-direction: normal;
	    flex-direction: column;
        width: 850px;
        height: 100%;
	}
	.toolbar-box {
		margin-bottom: 20px;
    	box-shadow: 0 1px 2px rgba(10,10,10,0.1);
		height: 60px;
		border: 1px solid #dae2ea;
	}
	.toolbar-wrapper {
    	padding-top: 20px;
	}
	.toolbar-right {
	    height: 40px;
	    padding-left: 20px;
	    padding-right: 20px;
        text-align: end;
	}
	.content-wrapper{
		border: 1px solid #dae2ea;
	    overflow-y: auto;
	    height: 100%;
	}
	.content-table-wrapper{
	    overflow-x: auto;
	}
	.content-table-wrapper > table {
	    background-color: #fff;
   		color: #404040;
  		
	}
	.content-table-wrapper > tbody tr td{
		padding: 0.5em 0.75em;
	}
	.content-table-wrapper > table th {
        color: #404040;
        height: 56px;
        vertical-align: middle;
	    border-width: 0 0 1px;
	    
	}
	.content-table-wrapper > table > th td{
		border: 1px solid #dbdbdb;
		border-width: 0 0 1px;
	    padding: 0.5em 0.75em;
	    border: 1px solid #dbdbdb;
	    border-width: 0 0 1px;
	    padding: 0.5em 0.75em;
	    vertical-align: middle;
	}
	.no-hover-table{
	    table-layout: fixed;
	}
	.no-hover-table tr{
		box-shadow: 0 1px 2px rgba(10,10,10,0.1);
	}
	.no-hover-table tbody tr:last-child{
		box-shadow: none;
	}
	.checkbox-div input[name=checking]{
		display:none;
	}
	.no-hover-table th:nth-child(2){
		width:100%;
	}
	.checkbox-div button, .cate-tree-root > button{
    	background-color: #f8faff;
    	border: 0 white;
    	outline: 0;
    	cursor: pointer;
	}
	.checkbox-div span{
		width: 22px;
   		height: 22px;
	}
	.select-docu-insert{
		border: 1px solid gold;
		padding: 5px;
		cursor: pointer;
	}
	.select-docu-insert:hover {
		border: 1px solid #dbdbdb;
	}
	.select-docu-insert span:nth-child(2){
	    color: darkgoldenrod;
	}
	.flex-row {
		padding-top: 5px;
	    margin-left: 5px;
	}
	.flex-row div{
		display:inline-block;
	}
	.flex-row-icon{
	    width: 30px;
	    height: 30px;
	    max-width: 30px;
	    max-height: 30px;
	}
	.flex-row-icon .material-icons{
		font-size: 28px;
	}
	.flex-column a:link, .flex-column a:visited{
		 color: red; text-decoration: none;
		 color: black; text-decoration: none;
	}
	.modal-cate-down{
	    background-color: #f8faff;
	    border: 0 white;
	    outline: 0;
	    cursor: pointer;
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
	width: 50%; /* Could be more or less, depending on screen size */
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

/* 모달 설정 스타일 끝 */

</style>
</head>
<body>
	<jsp:include page="../../common/menubar_dy.jsp" />
	<div class="outer">
		<!-- 제공 양식 카테고리 부분 -->
		<div class="outer-wrapper">
			<div class="header-category">
				<p>제공 문서 양식 카테고리</p>
			</div>
			<div>
				<ul class="tree-list">
					<li>
						<div class="cate-tree-root">
							<button type="button" onclick="click_icon_down();"><span class="material-icons">keyboard_arrow_down</span></button>
							<div class="cate-name">BetterFlow 제공 양식</div>
						</div>
						<ul>
							<c:forEach items="${docuCategory }" var="docu" varStatus="status" >
									<c:if test="${docu.docu_cate_id == 0}">
									<!-- 0은 디폴트라서 안가져옴 -->
									</c:if>
									<c:if test="${docu.docu_cate_id != 0}">
											<li><div class="cate-tree-item" id="cate-tree-item" name="${docu.docu_cate_id }">${docu.docu_cate_name}</div></li>
									</c:if>
							</c:forEach>
							<!-- <li><div class="cate-tree-item">보고</div></li>
							<li><div class="cate-tree-item">업무</div></li>
							<li><div class="cate-tree-item">인사</div></li>
							<li><div class="cate-tree-item">재무</div></li>
							<li><div class="cate-tree-item">총무</div></li> -->
						</ul>
					</li>
				</ul>
			</div>
		</div>
		
		<!-- 선택 양식 도입 -->
		<!-- toolbar-layout은 오른쪽 위아래 양식포함 -->
		<div class="toolbar-layout">
			<!-- 여기는 오른쪽 위만 포함 아래 마진주기위해 -->
			<div class="toolbar-box">
				<!-- 여기는 오른쪽 위만 들어있는 패딩 주기위해 -->
				<div class="toolbar-wrapper">
					<!-- 선택양식도입 버튼만들기 위해 -->
					<div class="toolbar-right">
						<a class="select-docu-insert">
							<span class="material-icons">add</span>
							<span>선택 양식 도입</span>
						</a>
					</div>
				</div>
			</div>
			<!-- 여기는 오른쪽 아래만 포함 창밑에 마진 주기위해-->
			<div class="content-wrapper">
				<div class="content-table-wrapper">
					<table class="no-hover-table">
						<thead>
							<tr>
								<th class="checkbox-cell">
									<div class="checkbox-div">
										<button type="button" onclick="checkAll();">
										<span class="material-icons"> check_box_outline_blank </span>
										</button>
									</div>
								</th>
								<th>제목</th>								
							</tr>
						</thead>
						<tbody>
							<%-- <c:forEach items="${draftFile }" var="draft_file">
								<tr>
									<td>
									<div class="checkbox-div">
										<button type="button">
										<span class="material-icons"> check_box_outline_blank </span>
										</button>
										<input type="hidden" name="checking">
									</div>
									</td>
									<td>
										<div class="flex-row">
											<!-- 테이블에서 문서 아이콘  -->
											<div class="flex-row-icon">
												<span class="material-icons"> request_quote </span>
											</div>
											<div class="flex-column">
												<a href="#" class="reverse-atag" target="_blank">${draft_file.draft_title }</a>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach> --%>
							<!-- <tr>
								<td>
									<div class="checkbox-div">
										<button type="button">
										<span class="material-icons"> check_box_outline_blank </span>
										</button>
										<input type="hidden" name="checking">
									</div>
								</td>
								<td>
									<div class="flex-row">
										테이블에서 문서 아이콘
										<div class="flex-row-icon">
											<span class="material-icons"> request_quote </span>
										</div>
										<div class="flex-column">
											<a href="#" class="reverse-atag" target="_blank">지출결의서</a>
										</div>
									</div>
								</td>
							</tr> -->
							<!-- 여기에 추가하면 됨 한행씩넣기 -->
						</tbody>
					</table>
				</div>
				
			</div>
		</div>
	</div>
	
	<!-- 모달창 전체 div -->
	<div id="modal_process" class="modal">

		<!-- 모달 내용 -->
		<div class="modal-content-process">
			<jsp:include page="/WEB-INF/views/common/modal_commonFormIntro.jsp" />
		</div>

	</div>
	<script>
		//체크박스 체크 토글 전역 변수 
		var checkCnt = 1;
		//제공양식 버튼 눌렀을때 드롭다운 토글 전역변수
		var checkDown = 1;
		//절대경로를 위해서 필요한 context-root 변수
		var basePath = "${pageContext.request.contextPath}";
		//제목에 있는 버튼을 눌렀을 때 모두 선택되도록
		function checkAll() {
			if (checkCnt % 2 == 1) {
				$(".checkbox-div span").text("check_box");
				$(".checkbox-div").find("span").text("check_box");
				// 바꾸기
				$(".no-hover-table tbody input[name=checking]").attr("checked","checked");
			} else {
				$(".checkbox-div span").text("check_box_outline_blank");
				$(".checkbox-div").find("span").text("check_box_outline_blank");
				// 바꾸기
				$(".no-hover-table tbody input[name=checking]").removeAttr("checked","checked");
			}
			checkCnt++;
		}
		//Docswave 제공양식에서 밑화살표 눌렀을때 드롭다운 
		function click_icon_down(){
			if(checkDown % 2 == 1) {
				$(".cate-tree-root  .material-icons").text("keyboard_arrow_right");
				$(".tree-list  ul li").css("visibility", "hidden");
			} else {
				$(".cate-tree-root  .material-icons").text("keyboard_arrow_down");
				$(".tree-list  ul li").css("visibility", "visible");
			}
			checkDown++;
		}
		$(".cate-name").click(function(){
			$.ajax({
				url:basePath + "/sharedAjax/introduction",
				dataType:"json",
				success:function(json){
					console.log(json.draftFile);
					var $tbody = $(".no-hover-table tbody");
					
					$tbody.html('');
					
					$.each(json.draftFile, function(index, value){
						console.log("value : "+ value.draft_title);
						var $tr = $("<tr>");
						 var $iconTd = $("<td>");
						  var $checkDiv = $("<div>").addClass("checkbox-div");
						   var $iconButton = $("<button type='button'>");
						   var $checkIconSpan = $("<span onclick='checkIconChange(this);'>").addClass("material-icons").text("check_box_outline_blank");
						   var $checkingInput = $("<input type='checkbox' name='checking'>");
						  var $titleTd = $("<td>");
						  var $flexDiv = $("<div class='flex-row'>");
						   var $flexIconDiv = $("<div class='flex-row-icon'>");
						    var $docuIconSpan = $("<span class='material-icons'>").text("request_quote");
						   var $flexColDiv = $("<div class='flex-column'>");
						   var $draftTitleA = $("<a href='#' class='reverse-atag' target='_blank'>").text(value.draft_title);
						   
						$iconButton.append($checkIconSpan);
						$checkDiv.append($iconButton);
						$checkDiv.append($checkingInput);
						$iconTd.append($checkDiv);
						$tr.append($iconTd);
						$tr.append($titleTd);
						$titleTd.append($flexDiv);
						$flexDiv.append($flexIconDiv);
						$flexIconDiv.append($docuIconSpan);
						$flexDiv.append($flexColDiv);
						$flexDiv.append($draftTitleA);
						$tbody.append($tr);
					});
					
				},
				error:function(json){
					console.log("error 발생! :" + json);
				}
			});
		});
		
		//문서 양식 클릭했을 때 아이콘 변경되고 체크되었다는 걸 표시하도록 속성추가
		function checkIconChange(e){
			var chk = $(e).parent().parent().children($("input[name=checking]")).is(":checked"); //attr("checked");
			console.log("chk : " + chk);
			if(!chk){
				$(e).text("check_box");
				$(e).parent().parent().children($("input[name=checking]")).attr("checked","checked");
			} else {
				$(e).text("check_box_outline_blank");
				$(e).parent().parent().children($("input[name=checking]")).removeAttr("checked","checked");
			}
		};
		
		//왼쪽 사이드에 보고 누르면 오른쪽에 나올수 있또록
		$(".cate-tree-item").click(function(){
			var divText = $(this).text();
			//console.log(typeof divText);
			console.log(divText);
			 $.ajax({
				url:basePath + "/sharedAjax/reportDraft",
				dataType:"json",
				data:{
					divText:divText
				},
				success:function(json){
					//console.log(json.docuCategory);
					//console.log(json.draftFile);
					
					var $tbody = $(".no-hover-table tbody");
					
					$tbody.html('');
					
					$.each(json.draftFile, function(index, value){
						console.log("value : "+ value.draft_title);
						var $tr = $("<tr>");
						 var $iconTd = $("<td>");
						  var $checkDiv = $("<div>").addClass("checkbox-div");
						   var $iconButton = $("<button type='button'>");
						   var $checkIconSpan = $("<span onclick='checkIconChange(this);'>").addClass("material-icons").text("check_box_outline_blank");
						   var $checkingInput = $("<input type='checkbox' name='checking'>");
						  var $titleTd = $("<td>");
						  var $flexDiv = $("<div class='flex-row'>");
						   var $flexIconDiv = $("<div class='flex-row-icon'>");
						    var $docuIconSpan = $("<span class='material-icons'>").text("request_quote");
						   var $flexColDiv = $("<div class='flex-column'>");
						   var $draftTitleA = $("<a href='#' class='reverse-atag' id='"+value.draft_no+"' target='_blank'>").text(value.draft_title);
						   
						$iconButton.append($checkIconSpan);
						$checkDiv.append($iconButton);
						$checkDiv.append($checkingInput);
						$iconTd.append($checkDiv);
						$tr.append($iconTd);
						$tr.append($titleTd);
						$titleTd.append($flexDiv);
						$flexDiv.append($flexIconDiv);
						$flexIconDiv.append($docuIconSpan);
						$flexDiv.append($flexColDiv);
						$flexDiv.append($draftTitleA);
						$tbody.append($tr);
					});
					
				},
				error:function(json){
					console.log(json.docuCategory);
					console.log(json.draftFile);
				}
			}); 
			
		});
		
		$(".cate-tree-item").click(function(){
			$(this).attr("class", "click-column");
			$(this).parent().siblings().children().attr("class", "cate-tree-item");
			$(".cate-tree-root").css("border","1px solid #dae2ea").css("box-shadow","0 0 0 0");
			$(".cate-name input").css("color","#4a4a4a");
		});
		
		$(".cate-tree-root").click(function(){
			$(".click-column").attr("class","cate-tree-item");
			/* $(".cate-tree-item").css("color","#4a4a4a").css("border","1px solid #dae2ea").css("box-shadow","none"); */
			$(".cate-name input").css("color","darkgoldenrod");
			$(this).css("border","1px solid gold").css("box-shadow","0 0 0 1px gold");
		}); 
		
		//모달창 띄우기 위한 온로드 펑션
		$(function(){
			var modal_process = document.getElementById('modal_process');
			// 모달창을 열 버튼 생성 
			var $btn_process = $(".select-docu-insert");
			console.log("$btn_process : "+ $btn_process);
			// 모달을 닫을 취소 span 태그
			var $modal_process_close = $(".modal_close");
			console.log("$modal_process_close : "+ $modal_process_close);
			
			
			
			//우리가 모달창을 부를 버튼을 클릭했을 때
			$btn_process.click(function() {
				//체크박스가 클릭된 문서가 있을 시 버튼클릭이 되도록
				//ajax 에서 success 매개변수로 data를 list로 받아올때 반복문써서 꺼내써야하는건지?
				//보고, 인사 , 재무에서 밑에 코드가 안먹힘 해결
				var chkDocu = $(".no-hover-table tbody .checkbox-div input[type=checkbox]").is(":checked");
				console.log(chkDocu);
				if(chkDocu){
					modal_process.style.display = "block";
					//문서 카테고리 ajax 처리
					$.ajax({
						url:basePath + "/sharedAjax/DocuCategoryList",
						dataType:"json",
						type:"GET",
						success:function(json){
							
							var $modalCateName = $(".modal-cate-name");
							$modalCateName.html('');
							
							$.each(json, function(index, value){
								console.log(index + " " + value.docu_cate_name);
							//var $modalCateName = $("<div class='modal-cate-name'>");
							var $modalCateNameCol = $("<div class='modal-cate-name-col'>");
								var $btn = $("<button type='button' class='modal-cate-down' onclick='modal_click_icon_down();'>");
								var $spanArrow = $("<span class='material-icons'>keyboard_arrow_down</span>");
								var $spanFloder = $("<span class='material-icons'>folder</span>");
								var $pBlank = $("<p>").html("&nbsp;");
								var $divColumn = $("<div class='modal-column-form' name='"+value.docu_cate_id+"'>").text(value.docu_cate_name);
								
								$modalCateNameCol.append($btn);
								 $btn.append($spanArrow);
								$modalCateNameCol.append($spanFloder);
								$modalCateNameCol.append($pBlank);
								$modalCateNameCol.append($divColumn);
								
								$modalCateName.append($modalCateNameCol);
							});
						},
						error:function(json){
							console.log("문서 카테고리 ajax 에러! " + json)
						},
						complete:function(json){
							$(".modal-cate-name > div").eq(0).attr("class", "modal-cate-name-col-selected");
						}
					});
				};
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
			
			//문서 카테고리 모달창 뜨고 컬럼 선택했을 때 토글
			$(document).on("click", ".modal-cate-name > div", function(){
				$(this).attr("class", "modal-cate-name-col-selected");
				$(this).siblings().attr("class", "modal-cate-name-col");
			});
		});
		
		//문서 카테고리 모달창에서 선택후 기안서 저장시킴
		function docuCateDraftInsert(){
			var docuCateName = $(".modal-cate-name-col-selected").children().last().text();
			var docuCate = $(".modal-cate-name-col-selected").children().last().attr("name");
			//console.log("선택된 문서카테고리의 id : " + docuCate);
			//console.log("선택된 문서카테고리의 이름 : " + docuCateName);
			var checkedDraftNo = new Array();
			var checkedDraftObject;
			$(".checkbox-div input[name=checking]").each(function(){
				if(this.checked == true){
					//console.log("체크 확인 메소드 들어옴");
					checkedDraftObject = new Object();
					checkedDraftObject.draft_title = $(this).parent().parent().parent().children().last().find(".reverse-atag").text();
					checkedDraftObject.draft_no = $(this).parent().parent().parent().children().last().find(".reverse-atag").attr("id");
					//console.log("checkedDraftObject.draft_title : " + checkedDraftObject.draft_title);
					//console.log("checkedDraftObject.draft_no : " + checkedDraftObject.draft_no);
					//checkedDraftNo += checkedDraftObject;
					checkedDraftNo.push(checkedDraftObject);
				}
			});
			//console.log("기안서 양식 객체이름 : " + checkedDraftObject.draft_title);
			//console.log("기안서 양식 객체번호 : " + checkedDraftObject.draft_no);
			//console.log("기안서 양식 총 객체 : " + JSON.stringify(checkedDraftNo));
			//console.log("기안서 양식 총 객체 : " + checkedDraftNo);
			//checkedDraftNo = $(".checkbox-div input[checked=checked]").parent().parent().last().find("a .reverse-atag").attr("id");
			//var jsonCheckedDraft = JSON.stringify(checkedDraftNo);
			//console.log("jsonCheckedDraft : " + jsonCheckedDraft);				
			
			var modal_process = document.getElementById('modal_process');
			
			var sendJsonObject = {
				docuCategory:docuCate,
				checkedDraftNo:checkedDraftNo
			};
			
			
			$.ajax({
				url:basePath + "/sharedAjax/DocuCategoryDraftInsert",
				dataType:"text",
				type:"POST",
				contentType:"application/json",
				data:JSON.stringify(sendJsonObject),
				success:function(text){
					if(text == "success" && $(".modal-cate-name-col-selected").length > 0) {
						alert("선택하신 문서가 "+docuCateName + "으로 복사되었습니다.");
						modal_process.style.display = "none";
					} else if(text =="cateAndDraftError") {
						alert("이미 사용중인 양식입니다. 다른 카테고리를 선택해주세요");
					} else if(text =="draftInsertError"){
						alert("기안서를 넣는 과정에 문제가 생겼습니다");
					} else{
						alert("문서 카테고리를 조회할수 없습니다.");
					}
				},
				error:function(text){
					console.log("기안서 복사중에 오류!"+ text);
				}
			});
		};
		
	</script>
</body>
</html>