<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>공유 문서 관리</title>
<style>
	.outer-wrapper {
	    display: table-cell;
	    -webkit-box-orient: vertical;
	    -webkit-box-direction: normal;
	    background-color: #fff;
	    box-shadow: 0 2px 3px rgba(10,10,10,0.1), 0 0 0 1px rgba(10,10,10,0.1);
	    max-width: 100%;
	    position: relative;
	    height: 800px;
        margin-left: 270px;
   		margin-top: 30px;
	    float: left;
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
        cursor: default;
	}
	.tree-list li {
		margin-bottom: 5px;
	    list-style: none;
	}
	.tree-list li ul {
		padding-bottom: 20px;
    	margin-top: 5px;
    	padding-left: 29px;
    	width: 230px;
	}
	.tree-list li ul li {
		font-size: 1rem;
	}
	.left-cate-wrapper{
	    margin: 20px 30px;
	}
	.cate-tree-root {
		background-color: #f8faff;
	    padding-left: 15px;
   		width: 250px;
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
	}
	.cate-name p {
		display:inline;
	}
	.cate-name input{
	    font-size: 1rem;
	    text-overflow: ellipsis;
	    color:darkgoldenrod;
        cursor: default;
	}
	.cate-tree-item input{
		font-size: 1rem;
	    text-overflow: ellipsis;
        cursor: default;
	}
	.material-icons {
		font-weight: bold;
		color: goldenrod;
		vertical-align: middle;
		font-size: 18px;
	}
	.cate-tree-item{
	    padding-left: 10px;
	    width: 100%;
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
	.under-cate-tree-item{
	    margin-left: 20px;
   		width: 210px;
	}
	.cate-tree-root > button{
    	background-color: #f8faff;
    	border: 0 white;
    	outline: 0;
    	cursor: pointer;
    	padding: 0;
	}
	#write-btn{
		background-color: #f8faff;
    	border: 0 white;
    	outline: 0;
    	cursor: pointer;
    	padding: 0;
	}
	.cate-tree-root:hover{
	    /* display: inline-block; */
	}
	.modify-header-icon{
		display: inherit;
	    cursor: pointer;
	    margin-left: 6px;
	}
	.modify-icon{
	    display: inherit;
        /* margin-left: 118px; */
        position: absolute;
   		right: 55px;
        cursor: pointer;
	}
	.cate-tree-item-name{
		width: 140px;
		overflow: auto;
	}
	/* input 입력창 변경(테두리, 배경색 x) 스타일 */
	.input-change-style{
	   	background: #f8faff;
	    border: 0;
	    outline: none;
	}
	.click-column{
		padding-left: 10px;
	    width: 100%;
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
	.click-column input{
	    font-size: 1rem;
	    text-overflow: ellipsis;
	    cursor: default;
        color: darkgoldenrod;
	}
	/* 여기서부터 본문 내용 스타일 */
	.right-wrapper{
		margin-left: 650px;
	}
	.right-toolbar{
	    padding: 20px;
	    margin-bottom: 0px;
	    border: 1px solid #dbdbdb;
	    display: inline-block;
	    margin-top: 30px;
	    height: 20px;
        width: 1190px;
	}
	.right-toolbar-btn{
	    text-align: end;
	}
	.right-toolbar-btn a, .right-toolbar-btn button, .header-category-add-div > button{
		text-decoration: none;
	    color: darkgoldenrod;
	    padding: 5px;
	    border: 1px solid gold;
	    margin-left: 10px;
        background-color: white;
        vertical-align: middle;
        outline: none;
        cursor: pointer;
	}
	.header-category-add-div {
		position: absolute;
    	left: 263px;
	}
	.right-toolbar-box{
	
	}
	.right-toolbar-icon-box{
	
	}
	.toggle-align-wrapper{
	    display: inline-block;
	}
	.toggle-align-icon{
	
	}
	.dropdown-contents{
	    display: none;
        position: absolute;
	    will-change: top, left;
	    top: 144px;
	    left: 1709px;
	    z-index: 50;
	    width: 160px;
   		text-align: start;
	}
	.box-dropdown-align{
		background: white;
	    border: 1px solid #dbdbdb;
	    padding: 20px;
	    font-size: 15px;
	}
	.box-row{
		margin-bottom: 10px;
	}
	.box-row-column{
		display: inline-block;
	}
	.right-content{
		border: 1px solid #dbdbdb;
	    border-left: 2px solid #dbdbdb;
	    width: 1229px;
	}
	.group-header-row{
		display:none;
	}
	.gird-table{
    	border-collapse: collapse;
	}
	.grid-header-table th, .grid-rows-table tr, .grid-table tbody td{
	    border: 1px solid #dbdbdb;
	}
	.group-header-cell span:first-child{
		height: 1rem;
	    width: 1rem;
	    margin-right: 10px;
	    align-items: center;
	    display: inline-flex;
	    justify-content: center;
	}
	.grid-rows-table td{
		text-align: center;
	    vertical-align: middle;
	    text-align: -webkit-center;
	    border-right: 1px solid #dbdbdb;
	}
	/* 각 열에 대한 스타일 설정 시작 */
	.cell-row-wrapper > a{
	    outline: none;
	    text-decoration: none;
	    color: black;
	}
	.cell-row-wrapper > a:hover{
		color:goldenrod;
	}
	.cell-col-explaination{
	    padding: 10px;
	}
	.cell-col-copy{
		cursor: pointer;
	}
	
	/* 각 열에 대한 스타일 설정 끝 */
	.grid-rows-table .cell-row-wrapper, .grid-rows-table .cell-col-explaination{
		text-align: initial;
	}
	.cell-col-icon{
		display: inline-block;
	}
	.cell-col-icon > span {
		font-size: 25px;
		margin-left: 5px;
	}
	.cell-checkbox-wrapper{
		display: table-cell;
	}
	.datagrid-paging{
	    border: 1px solid #dbdbdb;
	    padding: 10px 20px;
	    height: 51px;
		width: 1190px;
	}
	.datagrid-paging-box{
		box-sizing: border-box;
	    text-align: center;
	}
	.pagination{
	    display: inline-block;
	}
	.pagination-list{
	    list-style: none;
    	display: inline-flex;
	}
	.pagination-list li {
	    padding-right: 10px;
	}
	.pagination-list li button {
	    width: 31.5px;
	    height: 31.5px;
	    border: 0;
	    outline: none;
	    cursor: pointer;
	}
	.pagination-list li:nth-child(2) > button{
		color: white;
	    background: gold;
	}
	.pagination-link{
	
	}
	.pagination-link-current{
	
	}
	/*문서 카테고리 이름 바꿀때 그전의 이름이 저장되어 있는 값*/
	.displayNoneFlagNameVal{
		display:none;
	}
	.noMg {
		margin:0;
		display: inline-block;
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
		width: 640px; /* Could be more or less, depending on screen size */
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
	<div class="outer-wrapper">
		<div class="header-category">
			<span class="material-icons">folder</span><p>&nbsp;공통 양식</p>
			<div class="header-category-add-div">
			<button type="button" class="right-toolbar-icon-box" onclick="docuCateAdd();">
				<span class="material-icons">add</span>
			</button>
			</div>
		</div>
		
		<div class="left-cate-wrapper">
			<ul class="tree-list">
				<li>
					<div class="cate-tree-root" name="clickCate">
						<button type="button" onclick="click_icon_down();">
							<span class="material-icons">keyboard_arrow_down</span>
						</button>
						<div class="cate-name">
						
							<!-- 공통 양식 디폴트 헤더 이름 변경 부분 -->
							
							<span class="material-icons">folder</span>
							<p>&nbsp;</p>
							<c:forEach var="docuDefault" items="${docuCategory}">
								<c:if test="${docuDefault.docu_cate_id == 0 }">
									<input type="text" name="common-file-name" id="defaultCateName" class="input-change-style" size="16" value="${docuDefault.docu_cate_name}" maxlength="20" readonly>
									<input type="checkbox" class="displayNoneFlagNameVal" value="${docuDefault.docu_cate_name}" name="${docuDefault.docu_cate_id}">
								</c:if>
							</c:forEach>
							<div class="modify-header-icon">
								<button onclick="editTitle();" id="write-btn" ><span class="material-icons">create</span></button>
							</div>
						</div>
					</div>
					<ul>
						<c:forEach items="${docuCategory}" var="docu" varStatus="status" >
							<c:if test="${docu.under_category == 0 || docu.under_category == null}">
								<c:if test="${docu.docu_cate_id != 0}">
									<li>
										<div class="cate-tree-item" id="${docu.docu_cate_id}" >
										
										<!-- 문서 카테고리 행 새로운 카테고리 이름 변경 부분 -->
										
											<span class="material-icons">folder</span>
											<p>&nbsp;</p>
											<input type="text" name="common-file-name-col" class="input-change-style" size="16" value="${docu.docu_cate_name}" maxlength="20" readonly>
											<input type="checkbox" class="displayNoneFlagNameVal" value="${docu.docu_cate_name}" name="${docu.docu_cate_id}">
											<%-- <span class="cate-tree-item-name">${docu.docu_cate_name}</span> --%>
											<div class="modify-icon">
												<button class="createBtn" id="write-btn" onclick="editName(this)">
													<span class="material-icons">create</span>
												</button>
												<p class="noMg">&nbsp;&nbsp;</p>
												<button class="deleteBtn" id="write-btn" onclick="delCate(this);">
													<span class="material-icons">delete</span>
												</button>
											</div>
											
											
										</div>
									</li>
								</c:if>
							</c:if>
							<c:if test="${(docu.under_category != 0 || docu.under_category != null) && docu.docu_cate_id != 0}">
									<c:forEach items="${docuCategory}" var="underdocu" varStatus="status" >
										<c:if test="${underdocu.under_category == docu.docu_cate_id }">
										<li class="under-cate-tree-item">
										
										<!-- 문서 카테고리 행 하위 카테고리 이름 변경 부분 -->
										
											<div class="cate-tree-item" id="${underdocu.docu_cate_id}" >
												<span class="material-icons">folder</span>
												<p>&nbsp;</p>
												<input type="text" name="common-file-name-col" class="input-change-style" size="14" value="${underdocu.docu_cate_name}" maxlength="20" readonly>
												<input type="checkbox" class="displayNoneFlagNameVal" value="${underdocu.docu_cate_name}" name="${underdocu.docu_cate_id}">
												<%-- <span class="cate-tree-item-name">${underdocu.docu_cate_name}</span> --%>
												<div class="modify-icon">
													<button class="createBtn" id="write-btn" onclick="editName(this)">
														<span class="material-icons">create</span>
													<p class="noMg">&nbsp;&nbsp;</p>
													</button>
													<button class="deleteBtn" id="write-btn" onclick="delCate(this);">
														<span class="material-icons">delete</span>
													</button>
												</div>
											</div>
										</li>
										</c:if>
									</c:forEach>
								</c:if>
						</c:forEach>
						<!-- <li>
							<div class="cate-tree-item">
								<span class="material-icons">folder</span>&nbsp;보고
								<div class="modify-icon">
									<span class="material-icons">create</span>&nbsp;&nbsp;<span class="material-icons">delete</span>
								</div>
							</div>
						</li>
						<li>
							<div class="cate-tree-item">
								<span class="material-icons">folder</span>&nbsp;업무
								<div class="modify-icon">
									<span class="material-icons">create</span>&nbsp;&nbsp;<span class="material-icons">delete</span>
								</div>
							</div>
						</li>
						<li>
							<div class="cate-tree-item">
								<span class="material-icons">folder</span>&nbsp;인사
								<div class="modify-icon">
									<span class="material-icons">create</span>&nbsp;&nbsp;<span class="material-icons">delete</span>
								</div>
							</div>
						</li>
						<li>
							<div class="cate-tree-item">
								<span class="material-icons">folder</span>&nbsp;재무
								<div class="modify-icon">
									<span class="material-icons">create</span>&nbsp;&nbsp;<span class="material-icons">delete</span>
								</div>
							</div>
						</li>
						<li>
							<div class="cate-tree-item">
								<span class="material-icons">folder</span>&nbsp;총무
								<div class="modify-icon">
									<span class="material-icons">create</span>&nbsp;&nbsp;<span class="material-icons">delete</span>
								</div>
							</div>
						</li> -->
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<!-- 오른쪽 본문 -->
	<div class="right-wrapper">
		<div class="right-toolbar">
			<div class="right-toolbar-btn">
				<a href="#" id="draftTitleRuleBtn" class="right-toolbar-box">
					<span class="material-icons">build</span><span> 문서 제목 규칙</span>
				</a>
				<a href="#" class="right-toolbar-box">
					<span class="material-icons">folder</span><span> 카테고리 이동</span>
				</a>
				<button type="button" class="right-toolbar-icon-box">
					<span class="material-icons">add</span>
				</button>
				<button type="button" class="right-toolbar-icon-box">
					<span class="material-icons">delete</span>
				</button>
				<div class="toggle-align-wrapper">
					<div class="toggle-align-icon">
						<button type="button" onclick="align_button_click();">
							<span class="material-icons">format_list_bulleted</span>
						</button>
					</div>
					<div class="dropdown-contents">
						<div class="box-dropdown-align">
							<div class="box-row">
								<div class="box-row-column">
									<input type="radio" name="align-box">
								</div>
								<div class="box-row-column">
									그룹 없음
								</div>
							</div>
							<div class="box-row">
								<div class="box-row-column">
									<input type="radio" name="align-box">
								</div>
								<div class="box-row-column">
									등록자
								</div>
							</div>
							<div class="box-row">
								<div class="box-row-column">
									<input type="radio" name="align-box">
								</div>
								<div class="box-row-column">
									등록일
								</div>
							</div>
							<div class="box-row">
								<div class="box-row-column">
									<input type="radio" name="align-box">
								</div>
								<div class="box-row-column">
									수정자
								</div>
							</div>
							<div class="box-row">
								<div class="box-row-column">
									<input type="radio" name="align-box">
								</div>
								<div class="box-row-column">
									수정일
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="right-content">
			<div class="grid-header-table">
				<table class="gird-table">
					<colgroup>
						<col width="43px">
						<col width="440">
						<col width="520">
						<col width="120">
						<col width="100">
						<col width="120">
						<col width="100">
						<col width="100">
						<col width="80">
					</colgroup>
					<thead>
						<tr data-row-index="1">
							<th rowspan="2">
								<div class="checkbox-wrapper">
									<input type="checkbox" class="draftNoCheckAll" style="width: 22px; height:22px;">
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">양식명</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">설명</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">등록자</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">등록일</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">수정자</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">수정일</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">복사</span>
								</div>
							</th>
						</tr>
						<tr data-row-index="2"></tr>
					</thead>
					<tbody class="grid-rows-table">
						<!-- 정렬했을때 보일 테이블 행 -->
						<tr class="group-header-row">
							<td colspan="9">
								<div class="group-header-cell">
									<span class="material-icons">arrow_drop_down</span>
									<span></span>
								</div>
							</td>
						</tr>
						<!-- 양식행 추가되는 부분 -->
						<c:forEach items="${draftFile}" var="dfile" varStatus="status">
						<tr>
							<td>
								<div class="cell-checkbox-wrapper">
									<input type="checkbox" class="draftNoCheck" id="${dfile.draft_no}" style="width: 22px; height:22px;">
								</div>
							</td>
							<td>
								<div class="cell-row-wrapper">
									<div class="cell-col-icon">
										<span class="material-icons">description</span>
									</div>
									<a href="template?draft_id=${dfile.draft_no }">
										${dfile.draft_title}
									</a>
								</div>
							</td>
							<td>
								<div class="cell-col-explaination">
									${dfile.draft_explain}
								</div>
							</td>
							<td>
								<div class="cell-col-register" id="${dfile.user_write_id}">
										${dfile.user_writer_name}
								</div>
							</td>
							<td>
								<div class="cell-col-regist-date">
									<fmt:formatDate value="${dfile.draft_initial_regist_date}" pattern="yyyy.MM.dd"/>
								</div>
							</td>
							<td>
								<div class="cell-col-modifier" id="${dfile.user_update_id}">
										${dfile.user_modify_name}
								</div>
							</td>
							<td>
								<div class="cell-col-modify-date">
									<fmt:formatDate value="${dfile.draft_modify_date}" pattern="yyyy.MM.dd"/>
								</div>
							</td>
							<td>
								<div class="cell-col-copy">
									<a id="${dfile.docu_cate_id}">
										<span class="material-icons">file_copy</span>
									</a>
								</div>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- 헤더 그리드 테이블 끝 -->
			<%-- <div class="grid-body-table">
				<table class="grid-table">
					<colgroup>
						<col width="43px">
						<col width="440">
						<col width="520">
						<col width="120">
						<col width="100">
						<col width="120">
						<col width="100">
						<col width="100">
						<col width="80">
					</colgroup>
					
				</table>
			</div> --%>
		</div>
		<!-- 페이징 div -->
		<div class="datagrid-paging">
			<div class="datagrid-paging-box">
				<div role="navigation" aria-label="pagination" class="pagination">
					<ul class="pagination-list">
						<li>
							<button class="pagination-link"><span class="material-icons">arrow_left</span></button>
						</li>
						<li>
							<button class="pagination-link-current">1</button>
						</li>
						<li>
							<button class="pagination-link"><span class="material-icons">arrow_right</span></button>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 문서 제목 규칙 모달 -->
	<div id="modal_process" class="modal">

		<!-- 모달 내용 -->
		<div class="modal-content-process">
			<jsp:include page="/WEB-INF/views/common/modal_draftTitleRule.jsp" />
		</div>

	</div>
	
	<script>
		//제공양식 버튼 눌렀을때 드롭다운 토글 전역변수
		var checkDown = 1;
		//드롭다운 정렬 아이콘 눌렀을때 토글 전역변수
		var checkDropDownAlign = 1;
		var basePath = "${pageContext.request.contextPath}";
		//Docswave 제공양식에서 밑화살표 눌렀을때 드롭다운 
		function click_icon_down(){
			if(checkDown % 2 == 1) {
				$(".cate-tree-root > button > span").text("keyboard_arrow_right");
				$(".tree-list  ul li").css("visibility", "hidden");
			} else {
				$(".cate-tree-root > button > span").text("keyboard_arrow_down");
				$(".tree-list  ul li").css("visibility", "visible");
			}
			checkDown++;
		};
		//편집 아이콘 눌렀을 때
		function editTitle(){
			//아이콘 변경 && 기존에 있떤 아이콘 삭제
			$(".tree-list").find(".modify-header-icon").prepend("<p>&nbsp;&nbsp;</p><button onclick='cancelTitle();' id='write-btn'><span class='material-icons'>close</span></button>");
			$(".tree-list").find(".modify-header-icon").prepend("<button onclick='okTitle();' id='write-btn'><span class='material-icons'>check</span></button>");
			$(".tree-list").find(".modify-header-icon").children().eq(3).remove();
			$(".cate-name").children("span").remove();
			$(".cate-name").children("p").remove();
			
			//입력창 활성화
			$(".cate-name input[name=common-file-name]").prop("readonly", false);
 			$(".cate-name input[name=common-file-name]").toggleClass("input-change-style");
 			$(".modify-header-icon").css("margin-left", "7px"); 
		};

		//타이틀 이름 변경 취소
		function cancelTitle(){
			var $comFileName = $(".cate-name .displayNoneFlagNameVal").val();
			$(".cate-tree-root input[name=common-file-name]").val($comFileName);
			$(".tree-list").find(".modify-header-icon").children("button").remove();
			$(".tree-list").find(".modify-header-icon").children("p").remove();
			$(".tree-list").find(".modify-header-icon").prepend("<button onclick='editTitle();' id='write-btn'><span class='material-icons'>create</span></button>");
			$(".cate-name").prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
			$(".modify-header-icon").css("margin-left", "10px");
			$(".cate-name input[name=common-file-name]").toggleClass("input-change-style");
		};
		//타이틀 이름 변경 확인 
		function okTitle(){
			var $comFileName = $(".cate-tree-root input[name=common-file-name]").val();
			var $comFileid = $(".cate-tree-root input[type=checkbox]").prop("name");
			//이름 변경
			$(".cate-tree-root input[name=common-file-name]").val($comFileName);
			//추가된 아이콘 제거
			$(".tree-list").find(".modify-header-icon").children("button").remove();
			$(".tree-list").find(".modify-header-icon").children("p").remove();
			//기존에 있는 아이콘 붙이기
			$(".tree-list").find(".modify-header-icon").prepend("<button onclick='editTitle();' id='write-btn'><span class='material-icons'>create</span></button>");
			$(".cate-name").prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
			//읽기전용 설정
			$(".cate-tree-root input[name=common-file-name]").prop("readonly", true);
			$(".modify-header-icon").css("margin-left", "10px");
			//input의 클래스 적용()
			$(".cate-tree-root input[name=common-file-name]").toggleClass("input-change-style");
			$(".cate-name .displayNoneFlagNameVal").val($comFileName);
			
			console.log("$comFileName : " + $comFileName);
			console.log("$comFileid : " + $comFileid);
			$.ajax({
				url:basePath+"/adminajax/defaultNameChange",
				type:"get",
				data:{
					changeName:$comFileName,
					selectId:$comFileid
				},
				success:function(text){
					console.log("text : "+ text);
					if(text == "success"){
						alert("문서 카테고리 이름 변경에 성공하였습니다.");
					} else if(text == "nochange"){
						alert("문서 카테고리 이름 변경에 실패하였습니다.");
					}
				},
				error:function(text){
					console.log("text : "+ text);
				}
			});
		};
		
		 $(document).on("click", ".cate-tree-item", function(){
			$(this).attr("class", "click-column");
			$(this).parent().siblings().children().attr("class", "cate-tree-item");
			$(".cate-tree-root").css("border","1px solid #dae2ea").css("box-shadow","0 0 0 0");
			$(".cate-name input").css("color","#4a4a4a");
			//추가
			$(".cate-tree-item").each(function(index, item){
				$(this).removeAttr("name");
			});
			$(this).attr("name", "clickCate");
			$(".cate-tree-root").removeAttr("name");
		});
		
		$(".cate-tree-root").click(function(){
			$(".click-column").attr("class","cate-tree-item");
			/* $(".cate-tree-item").css("color","#4a4a4a").css("border","1px solid #dae2ea").css("box-shadow","none"); */
			$(".cate-name input").css("color","darkgoldenrod");
			//$(this).attr("class", "click-column");
			$(this).css("border","1px solid gold").css("box-shadow","0 0 0 1px gold");
			$(this).attr("name", "clickCate");
		}); 
		
		function align_button_click(){
			if(checkDropDownAlign % 2 == 1){
				$(".dropdown-contents").css("display","block");
			} else {
				$(".dropdown-contents").css("display","none");
			}
			checkDropDownAlign++;
		};
		
		//공통 양식 헤더 옆에 + 눌렀을 때 기능 구현
		function docuCateAdd(){
			// $("div[name=clickCate]").css("background","red");
			var $divName = $("div[name=clickCate]").attr("class");
			console.log("divName : "+ $divName);
			if( $divName == "cate-tree-root"){
				//문서카테고리 최상위 클릭시
				
				//ajax 처리를 위해 id 값 복사
				var divId = $(".cate-tree-root").find(".displayNoneFlagNameVal").attr("name");
				//문서 카테고리 헤더 클릭 시 마지막행추가
				$("div[name=clickCate]").parent().find("ul").append("<li> <div class='cate-tree-item' id='${docu.docu_cate_id}' ><input type='text' name='common-file-name-col' class='' size='16' value='' maxlength='20'> <input type='checkbox' class='displayNoneFlagNameVal' value='' name='"+divId+"'>  <div class='modify-icon'> <button class='' id='write-btn' onclick='completeName(this);' > <span class='material-icons'>check</span> </button><p class='noMg'>&nbsp;&nbsp;</p><button class='' id='write-btn' onclick='cencelName(this);'> <span class='material-icons'>close</span> </button> </div> </div> </li>");
				var name = $("div[name=clickCate]").parent().find("ul");
					console.log(name);
				//$("div[name=clickCate]").parent().find("ul").last().prop("readonly", false).toggleClass("input-change-style");
				//아이콘 변경 && 기존에 있떤 아이콘 삭제
				
				//$(".tree-list").find(".modify-header-icon").prepend("<p>&nbsp;&nbsp;</p><button onclick='cancelTitle();' id='write-btn'><span class='material-icons'>close</span></button>");
				//$(".tree-list").find(".modify-header-icon").prepend("<button onclick='okTitle();' id='write-btn'><span class='material-icons'>check</span></button>");
				//$(".tree-list").find(".modify-header-icon").children().eq(3).remove();
				//$(".cate-name").children("span").remove();
				//$(".cate-name").children("p").remove();
				
				//새로생긴 카테고리에 div name을 clickCate로 변경해주기
				//cate-tree-root div에 name과 css 일반으로 변경하기
				$(".cate-tree-root").removeAttr("name");
				//cate-tree-root의 테두리 골드-> 회색으로 변경
				$(".cate-tree-root").css("border","1px solid #dae2ea").css("box-shadow","0 0 0 0");
				//cate-tree-root 의 input 골드-> 회색으로 변경
				$(".cate-name input").css("color","#4a4a4a");
				
				//새로생긴 카테고리에 클릭했다는 css 변경 $(".tree-list ul").children("li").last().children()까지 새롭게 추가된 div경로
				//class추가
				$(".tree-list ul").children("li").last().children().attr("class", "click-column");
				//name추가
				$(".tree-list ul").children("li").last().children().attr("name", "clickCate");
				//새로운 행 외에 다른 행 모두 회색테두리적용
				$(".tree-list ul").children("li").last().siblings().children().attr("class", "cate-tree-item");
				
			} else {
				//문서카테고리 하위 li 클릭시
				var underCate = $("div[name=clickCate]").parent().attr("class");
				//console.log("underCate(li의 class명이 나와야함) : " + underCate);
				
				
				if(underCate != "under-cate-tree-item"){
				//1. 첫번째 하위 클릭시
				//console.log("z : "+$("div[name=clickCate]").parent().prop("tagName"));
				//divId 부여
				var divId = $("div[name=clickCate]").attr("id");
				$("div[name=clickCate]").parent().after("<li class='under-cate-tree-item'> <div class='click-column' id='${docu.docu_cate_id}' ><input type='text' name='common-file-name-col' class='' size='14' value='' maxlength='20'> <input type='checkbox' class='displayNoneFlagNameVal' value='' name='"+divId+"'>  <div class='modify-icon'> <button class='' id='write-btn' onclick='completeName(this);' > <span class='material-icons'>check</span> </button><p class='noMg'>&nbsp;&nbsp;</p><button class='' id='write-btn' onclick='cencelName(this);'> <span class='material-icons'>close</span> </button> </div> </div> </li>")
				//새로생긴 카테고리에 클릭했다는 css 변경 
					//console.log("태그의 클래스이름은 click-column: " + $("div[name=clickCate]").parent().next().children().attr("class"));
				//기존에 클릭표시를 다시 클릭안한표시로 변경
				$("div[name=clickCate]").attr("class", "cate-tree-item");
				//클릭한 표시에 name 추가! 중요부분
				$(".click-column").attr("name", "clickCate");
				//새로운 행 외에 다른 행 모두 회색테두리적용
				$(".cate-tree-item").each(function(index, item){
					$(this).removeAttr("name");
				});
				} else {
				//2. 두번째 하위 클릭시 (더이상 생성안되도록)
					alert("더이상 하위 카테고리를 추가하지 못합니다");
				}
					
			}
		};
		//이름 변경 완료
		function completeName(obj){
			//console.log(obj);
			//새로운 이름값
			var newName = $(obj).parent().parent().find("input[name=common-file-name-col]").val();
			//확인용
			var $storeId =  $(obj).parent().parent().find(".displayNoneFlagNameVal");
			var storeId =  $(obj).parent().parent().find(".displayNoneFlagNameVal").attr("name");
			console.log("newName : " + newName);
			//console.log("$storeId : " + $storeId);
			console.log("storeId : " + storeId);
			if(newName != ""){
				
			//이름 변경 ajax , 필요 - id, name
			$.ajax({
				url:basePath+"/adminajax/newNameAdd",
				type:"get",
				data:{
					newName:newName,
					topLevelId:storeId
				},
				success:function(text){
					console.log("text : "+ text);
					if(text == "success"){
						alert("문서 카테고리 이름 추가에 성공하였습니다.");
						//새로운 이름값을 저장하는 값(취소)
						$(obj).parent().parent().find(".displayNoneFlagNameVal").val(newName);
						
						//기존에 있는 아이콘 붙이기
						$(obj).parent().prepend("<button onclick='editName(this);' id='write-btn'><span class='material-icons'>create</span></button><p class='noMg'>&nbsp;&nbsp;</p><button onclick='delCate(this)' id='write-btn'> <span class='material-icons'>delete</span> </button>");
						$(obj).parent().parent().prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
						
						//읽기전용으로 바꿈, input에 클래스 적용(css)
						$(obj).parent().parent().find("input[name=common-file-name-col]").attr("readonly", true).toggleClass("input-change-style");
						
						//추가된 아이콘 제거 
						//$(obj).parent() = div class:'modify-header-icon'
						$(obj).parent().children(".noMg").not(":lt(1)").html("").remove();
						$(obj).parent().children("button").not(":lt(2)").remove();
						
					} else if(text == "nochange"){
						alert("문서 카테고리 이름 추가에 실패하였습니다.");
					} else if(text == "newName"){
						alert("문서 카테고리 이름이 중복되었습니다. 다른 이름을 입력하세요!");
					}
				},
				error:function(text){
					console.log("text : "+ text);
				}
			});
			
			} else {
				alert("이름을 등록해주세요!");
			}
			
		};
		
		//이름 변경 취소
		function cencelName(obj){
			console.log(obj);
			var inputName = $(obj).parent().parent().find("input[name=common-file-name-col]").val();
			if(inputName != ""){
				//기존에 있는 아이콘 붙이기
				$(obj).parent().prepend("<button onclick='editName(this);' id='write-btn'><span class='material-icons'>create</span></button><p class='noMg'>&nbsp;&nbsp;</p><button onclick='delCate(this)' id='write-btn'> <span class='material-icons'>delete</span> </button>");
				$(obj).parent().parent().prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
				
				//읽기전용으로 바꿈, input에 클래스 적용(css)
				$(obj).parent().parent().find("input[name=common-file-name-col]").attr("readonly", true).toggleClass("input-change-style");
				
				//추가된 아이콘 제거 
				//$(obj).parent() = div class:'modify-header-icon'
				$(obj).parent().children(".noMg").not(":lt(1)").html("").remove();
				$(obj).parent().children("button").not(":lt(2)").remove();
			} else {
				var name = $("div[name=clickCate]").parent().last().remove();
				console.log(name);
			}
			
		};
		
		//이름 변경 하기 버튼
		function editName(obj){
			console.log(obj);
			//아이콘 변경 && 기존에 있떤 아이콘 삭제
			//체크와 취소 아이콘 붙이기
			$(obj).parent().prepend("<button id='write-btn' onclick='updateName(this);' > <span class='material-icons'>check</span> </button><p class='noMg'>&nbsp;&nbsp;</p><button class='' id='write-btn' onclick='cencelName(this);'> <span class='material-icons'>close</span> </button>");
			//폴더 아이콘 지우기
			$(obj).parent().parent().children().first().remove();
			$(obj).parent().parent().children("p").html("").remove();
			//input 쓰기모드로 바꿈 
			$(obj).parent().parent().find("input[name=common-file-name-col]").attr("readonly", false).toggleClass("input-change-style");
			//기존에 있던 아이콘 제거
				//$(obj).parent() = div class:'modify-header-icon'
			$(obj).parent().children(".noMg").not(":lt(1)").html("").remove();
			$(obj).parent().children("button").not(":lt(2)").remove();
		};
		
		//카테고리 삭제 함수
		//*********************추가해야할 것 service에서 해당 카테고리에 문서양식이 있으면 삭제가 안되도록 처리
		function delCate(obj){
			console.log(obj);
			//카테고리의 이름
			var divName = $(obj).parent().parent().find(".displayNoneFlagNameVal").val();
			//삭제 하기 전 선택한 카테고리의 id값 (2번째 하위부서 = 1번째 하위부서)
			//2번째 하위부서라는 것을 구별가능한가
			var divId = $(obj).parent().parent().attr("id");
			console.log("divId del : " + divId);
			//하위카테고리 구분 변수
			var assortUnderCate = "";
			
			//삭제하겠냐는 확인창
			var result = confirm("문서 카테고리를 삭제하시겠습니까?");
			if(result){
				//삭제 로직
				var judgUnder = $(obj).parent().parent().parent().attr("class");
				if(judgUnder == "under-cate-tree-item"){
					//두번째 하위 부서일때 그행만 삭제
					$(obj).parent().parent().parent().remove();
					assortUnderCate = "secondCate";
				} else {
					//첫번째 하위 부서일때 그행과 밑에 하위 부서 모두 삭제
					//현재 선택한 li 디자인적으로 삭제
					$(obj).parent().parent().parent().remove();
					//반복문 돌려서 만일 하위부서가 있다면 모두 삭제
					$("div[id="+ divId +"]").each(function(index, item){
						$(this).parent().remove();
					});	
					
					assortUnderCate = "firstCate";
				}
				
				//ajax 처리
				$.ajax({
						url:basePath+"/adminajax/delCate",
						type:"get",
						data:{
							divName:divName,
							divId:divId,
							assortUnderCate:assortUnderCate
						},
						success:function(text){
							console.log("text : "+ text);
							if(text == "success"){
								alert("문서 카테고리 이름 삭제에 성공하였습니다.");
							} else if(text == "nodelete"){
								alert("문서 카테고리 이름 삭제에 실패하였습니다.");
							}
						},
						error:function(text){
							console.log("text : "+ text);
						}
				});
				
			} else {
				//삭제 취소
			}
			
		};
		
		//문서 카테고리 이름 변경 함수
		function updateName(obj){
			console.log(obj);
			//이름 변경할 문서 카테고리 id 변수 (기존에 있던것과 새로만들었을때)
			var updateId;
			//이름 변경할 문서 카테고리 이름 변수
			var updateName = $(obj).parent().parent().find("input[name=common-file-name-col]").val();
			console.log("업데이트할 문서카테고리 이름 : " + updateName);
			//->구분 div의 id값이 없으면 새로만들어진 것->첫번재 하위냐 2번째 하위냐-> ajax로 id알아내서 
			if($(obj).parent().parent().attr("id") == ""){
				//alert("id값이 없습니다");
				//ajax 처리해서 id값 가져온다
				var underId = $(obj).parent().parent().find(".displayNoneFlagNameVal").attr("name");
				console.log("underId : "+underId);
				var oldName = $(obj).parent().parent().find(".displayNoneFlagNameVal").val();
				console.log("oldName : "+oldName);
				$.ajax({
					url:basePath+"/adminajax/selectOneDocuId",
					type:"get",
					data:{
						topLevelId:underId,
						newName:oldName
					},
					success:function(json){
						console.log("json.resultCode : "+ json.resultCode);
						if(json.resultCode == "success"){
							//alert("문서 카테고리 id 조회에 성공하였습니다.");
							//id값을 가져와서 div id에 넣는다
							var stringId = json.selectDocuId;
								console.log("stringId : " + stringId);
							$(obj).parent().parent().attr("id", String(json.selectDocuId));
							console.log("설정된 문서 카테고리 div id : "+ $(obj).parent().parent().attr("id"));
							updateId = $(obj).parent().parent().attr("id");
							
							//ajax 처리해서 이름 변경을 한다.
							updateId = $(obj).parent().parent().attr("id");
							$.ajax({
									url:basePath+"/adminajax/updateCateName",
									type:"get",
									data:{
										changeName:updateName,
										selectId:updateId,
									},
									success:function(text){
										console.log("text : "+ text);
										if(text == "success"){
											alert("문서 카테고리 이름 변경에 성공하였습니다.");
											//다시 읽기전용으로 돌리고 아이콘붙이기
											
											//새로운 이름값을 저장하는 값(취소)
											$(obj).parent().parent().find(".displayNoneFlagNameVal").val(updateName);
											
											//기존에 있는 아이콘 붙이기
											$(obj).parent().prepend("<button onclick='editName(this);' id='write-btn'><span class='material-icons'>create</span></button><p class='noMg'>&nbsp;&nbsp;</p><button onclick='delCate(this)' id='write-btn'> <span class='material-icons'>delete</span> </button>");
											$(obj).parent().parent().prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
											
											//읽기전용으로 바꿈, input에 클래스 적용(css)
											$(obj).parent().parent().find("input[name=common-file-name-col]").attr("readonly", true).toggleClass("input-change-style");
											
											//추가된 아이콘 제거 
											//$(obj).parent() = div class:'modify-header-icon'
											$(obj).parent().children(".noMg").not(":lt(1)").html("").remove();
											$(obj).parent().children("button").not(":lt(2)").remove();
											
										} else if(text == "nochange"){
											alert("문서 카테고리 이름 변경에 실패하였습니다.");
										} else if(text == "duplicateName"){
											alert("문서 카테고리 이름이 중복입니다. 다른 이름을 입력해주세요!");
										}
									},
									error:function(text){
										console.log("text : "+ text);
									}
							});
							
						} else if(json.resultCode == "noDocuCate"){
							alert("문서 카테고리 id 조회에 실패하였습니다.");
						}
					},
					error:function(json){
						console.log("json : "+ json);
					}
				});
			} else {
				//alert("id값이 있습니다 : " + $(obj).parent().parent().attr("id"));
				//ajax 처리해서 이름 변경을 한다.
				updateId = $(obj).parent().parent().attr("id");
				$.ajax({
						url:basePath+"/adminajax/updateCateName",
						type:"get",
						data:{
							changeName:updateName,
							selectId:updateId,
						},
						success:function(text){
							console.log("text : "+ text);
							if(text == "success"){
								alert("문서 카테고리 이름 변경에 성공하였습니다.");
								//다시 읽기전용으로 돌리고 아이콘붙이기
								
								//새로운 이름값을 저장하는 값(취소)
								$(obj).parent().parent().find(".displayNoneFlagNameVal").val(updateName);
								
								//기존에 있는 아이콘 붙이기
								$(obj).parent().prepend("<button onclick='editName(this);' id='write-btn'><span class='material-icons'>create</span></button><p class='noMg'>&nbsp;&nbsp;</p><button onclick='delCate(this)' id='write-btn'> <span class='material-icons'>delete</span> </button>");
								$(obj).parent().parent().prepend("<span class='material-icons'>folder</span><p>&nbsp;</p>");
								
								//읽기전용으로 바꿈, input에 클래스 적용(css)
								$(obj).parent().parent().find("input[name=common-file-name-col]").attr("readonly", true).toggleClass("input-change-style");
								
								//추가된 아이콘 제거 
								//$(obj).parent() = div class:'modify-header-icon'
								$(obj).parent().children(".noMg").not(":lt(1)").html("").remove();
								$(obj).parent().children("button").not(":lt(2)").remove();
								
							} else if(text == "nochange"){
								alert("문서 카테고리 이름 변경에 실패하였습니다.");
							} else if(text == "duplicateName"){
								alert("문서 카테고리 이름이 중복입니다. 다른 이름을 입력해주세요!");
							}
						},
						error:function(text){
							console.log("text : "+ text);
						}
				});
			}	
		};
		
		//왼쪽 문서 카테고리 선택했을 때 해당하는 문서 양식들이 오른쪽에 띄워지도록
		$(document).on("click", ".cate-tree-item", function(){
			var cateId;
			var cateName = $(this).parent().find(".displayNoneFlagNameVal").val();
			var cateUnderStatus = $(this).parent().find(".displayNoneFlagNameVal").attr("name");
			//하위문서인지 아닌지 체크하는 변수
			var status;
			if(cateUnderStatus == cateId){
				status = "same";
				cateId = $(this).attr("id");
			}else {
				status = "differ";
				cateId = $(this).parent().find(".displayNoneFlagNameVal").attr("name");
			}
			console.log("cateId : " + cateId);
			$.ajax({
				url:basePath + "/adminajax/loadDraftWithCate",
				dataType:"json",
				data:{
					cateId:cateId,
					cateName:cateName,
					status:status
				},
				success:function(json){
					//console.log(json.docuCategory);
					//console.log(json.draftFile);
					var $tbody = $(".grid-rows-table");
					if(json.resultCode == "success"){
						$tbody.html('');
						var $alignTr = $("<tr class='group-header-row'>");
						 var $alignTd = $("<td colspan='9'>");
						  var $alignDiv = $("<div class='group-header-cell'>");
						   var $alignSpan = $("<span>").addClass("material-icons").text("arrow_drop_down");
						$alignDiv.append($alignSpan);
						$alignTd.append($alignDiv);
						$alignTr.append($alignTd);
						$tbody.append($alignTr);
						
						$.each(json.draftFile, function(index, value){
							console.log("value : "+ value.draft_title);
							var $tr = $("<tr>");
							 var $td1 = $("<td>");
							  var $checkboxDiv = $("<div class='cell-checkbox-wrapper'>");
							   var $inputCheck = $("<input type='checkbox' class='draftNoCheck' id='"+value.draft_no+"' style='width:22px; height:22px;'>");
							 var $td2 = $("<td>");
							  var $rowWrapperDiv = $("<div class='cell-row-wrapper'>");
							   var $colIconDiv = $("<div class='cell-col-icon'>");
							    var $docuIconSpan = $("<span class='material-icons'>").text("description");
							   var $draftTitleAtag = $("<a href='template?draft_id="+value.draft_no+"'>").text(value.draft_title);
							 var $td3 = $("<td>");
							  var $draftExplainDiv = $("<div class='cell-col-explaination'>").text(value.draft_explain);
							 var $td4 = $("<td>");
							  var $registerDiv = $("<div class='cell-col-register' id='"+value.user_write_id+"'>").text(value.user_writer_name);
							 var $td5 = $("<td>");
							  var $registDateDiv = $("<div class='cell-col-regist-date'>");
							  
							 var $td6 = $("<td>");
							  var $modifierDiv = $("<div class='cell-col-modifier' id='"+value.user_update_id+"'>").text(value.user_modify_name);
							 var $td7 = $("<td>");
							  var $modifyDateDiv = $("<div class='cell-col-modify-date'>");
							   
							 var $td8 = $("<td>");
							  var $copyDiv = $("<div class='cell-col-copy'>");
							   var $copyAtag = $("<a name='"+cateName +"' id='"+ cateId +"'>")
							    var $copyIconSpan = $("<span class='material-icons'>").text("file_copy");
							//1
							$checkboxDiv.append($inputCheck);
							$td1.append($checkboxDiv);
							$tr.append($td1);
							//2
							$colIconDiv.append($docuIconSpan);
							$rowWrapperDiv.append($colIconDiv);
							$rowWrapperDiv.append($draftTitleAtag);
							$td2.append($rowWrapperDiv);
							$tr.append($td2);
							//3
							$td3.append($draftExplainDiv);
							$tr.append($td3);
							//4
							$td4.append($registerDiv);
							$tr.append($td4);
							//5
							
							$td5.append($registDateDiv);
							$tr.append($td5);
							//6
							$td6.append($modifierDiv);
							$tr.append($td6);
							//7
							
							$td7.append($modifyDateDiv);
							$tr.append($td7);
							//8
							$copyAtag.append($copyIconSpan);
							$copyDiv.append($copyAtag);
							$td8.append($copyDiv);
							$tr.append($td8);
							$tbody.append($tr);
						});
						
					} else if(json.resultCode == "noSelect"){
						$tbody.html("<tr><td colspan='9'><p style='text-align:center; color:#AAA;'>데이터가 없습니다.</p></td></tr>");
					}
					
				},
				error:function(json){
					console.log(json.draftFile);
				}
			}); 
		});
		
		//왼쪽 문서 카테고리 루트 선택했을 때 해당하는 문서 양식들이 오른쪽에 띄워지도록
		$(document).on("click", ".cate-name", function(){
			var cateId = $(this).parent().find(".displayNoneFlagNameVal").attr("name");
			var cateName = $(this).find(".displayNoneFlagNameVal").val();
			var status = "root";
			console.log("cateId : " + cateId);
			$.ajax({
				url:basePath + "/adminajax/loadDraftWithCate",
				dataType:"json",
				data:{
					cateId:cateId,
					cateName:cateName,
					status:status
				},
				success:function(json){
					//console.log(json.docuCategory);
					//console.log(json.draftFile);
					var $tbody = $(".grid-rows-table");
					if(json.resultCode == "success"){
						$tbody.html('');
						var $alignTr = $("<tr class='group-header-row'>");
						 var $alignTd = $("<td colspan='9'>");
						  var $alignDiv = $("<div class='group-header-cell'>");
						   var $alignSpan = $("<span>").addClass("material-icons").text("arrow_drop_down");
						$alignDiv.append($alignSpan);
						$alignTd.append($alignDiv);
						$alignTr.append($alignTd);
						$tbody.append($alignTr);
						
						$.each(json.draftFile, function(index, value){
							console.log("value : "+ value.draft_title);
							var $tr = $("<tr>");
							 var $td1 = $("<td>");
							  var $checkboxDiv = $("<div class='cell-checkbox-wrapper'>");
							   var $inputCheck = $("<input type='checkbox' class='draftNoCheck' id='"+value.draft_no+"' style='width:22px; height:22px;'>");
							 var $td2 = $("<td>");
							  var $rowWrapperDiv = $("<div class='cell-row-wrapper'>");
							   var $colIconDiv = $("<div class='cell-col-icon'>");
							    var $docuIconSpan = $("<span class='material-icons'>").text("description");
							   var $draftTitleAtag = $("<a href='template?draft_id="+value.draft_no+"'>").text(value.draft_title);
							 var $td3 = $("<td>");
							  var $draftExplainDiv = $("<div class='cell-col-explaination'>").text(value.draft_explain);
							 var $td4 = $("<td>");
							  var $registerDiv = $("<div class='cell-col-register' id='"+value.user_write_id+"'>").text(value.user_writer_name);
							 var $td5 = $("<td>");
							  var $registDateDiv = $("<div class='cell-col-regist-date'>");
							  
							 var $td6 = $("<td>");
							  var $modifierDiv = $("<div class='cell-col-modifier' id='"+value.user_update_id+"'>").text(value.user_modify_name);
							 var $td7 = $("<td>");
							  var $modifyDateDiv = $("<div class='cell-col-modify-date'>");
							   
							 var $td8 = $("<td>");
							  var $copyDiv = $("<div class='cell-col-copy'>");
							   var $copyAtag = $("<a id='"+ value.docu_cate_id +"'>");
							    var $copyIconSpan = $("<span class='material-icons'>").text("file_copy");
							//1
							$checkboxDiv.append($inputCheck);
							$td1.append($checkboxDiv);
							$tr.append($td1);
							//2
							$colIconDiv.append($docuIconSpan);
							$rowWrapperDiv.append($colIconDiv);
							$rowWrapperDiv.append($draftTitleAtag);
							$td2.append($rowWrapperDiv);
							$tr.append($td2);
							//3
							$td3.append($draftExplainDiv);
							$tr.append($td3);
							//4
							$td4.append($registerDiv);
							$tr.append($td4);
							//5
							
							$td5.append($registDateDiv);
							$tr.append($td5);
							//6
							$td6.append($modifierDiv);
							$tr.append($td6);
							//7
							
							$td7.append($modifyDateDiv);
							$tr.append($td7);
							//8
							$copyAtag.append($copyIconSpan);
							$copyDiv.append($copyAtag);
							$td8.append($copyDiv);
							$tr.append($td8);
							$tbody.append($tr);
						});
						
					} else if(json.resultCode == "noSelect"){
						$tbody.html("<tr><td colspan='9'><p style='text-align:center; color:#AAA;'>데이터가 없습니다.</p></td></tr>");
					}
					
				},
				error:function(json){
					console.log(json.draftFile);
				}
			}); 
		});
		
		//기안서 복사 기능 구현
		$(document).on("click", ".cell-col-copy", function(){
			//ajax 전송을 위해 필요한 값들. 등록자id, 수정자id, 설명, 제목, 문서 카테고리 id 
			var cateId = $(this).children("a").attr("id").trim().replace(" ","");
			var writerId = $(this).parent().parent().find(".cell-col-register").attr("id");
			var modifyId = $(this).parent().parent().find(".cell-col-modifier").attr("id");
			var draftExplain = $(this).parent().parent().children().find(".cell-col-explaination").text().trim().replace(" ","");
			var draftTitle = $(this).parent().parent().children().find(".cell-row-wrapper a").text().trim().replace(" ","");
				draftTitle += "_COPY";
			console.log("cateId : " + cateId);
			console.log("writerId : " + writerId);
			console.log("modifyId : " + modifyId);
			console.log("draftExplain : " + draftExplain);
			console.log("draftTitle : " + draftTitle);
			var msg = confirm("복사하시겠습니까?");
			if(msg){		
				
			
			$.ajax({
				url:basePath+"/adminajax/draftCopy",
				type:"get",
				data:{
					cateId:cateId,
					writerId:writerId,
					modifyId:modifyId,
					draftExplain:draftExplain,
					draftTitle:draftTitle
				},
				success:function(json){
					console.log("json : "+ json.resultCode);
					alert("insert와 select 성공!");
					
					var $tbody = $(".grid-rows-table");
					if(json.resultCode == "success"){
						
							console.log("json.draftFile.draft_title : "+ json.draftFile.draft_title);
							var $tr = $("<tr>");
							 var $td1 = $("<td>");
							  var $checkboxDiv = $("<div class='cell-checkbox-wrapper'>");
							   var $inputCheck = $("<input type='checkbox' class='draftNoCheck' id='"+json.draftFile.draft_no+"' style='width:22px; height:22px;'>");
							   
							 var $td2 = $("<td>");
							  var $rowWrapperDiv = $("<div class='cell-row-wrapper'>");
							   var $colIconDiv = $("<div class='cell-col-icon'>");
							    var $docuIconSpan = $("<span class='material-icons'>").text("description");
							   var $draftTitleAtag = $("<a href='template?draft_id="+json.draftFile.draft_no+"'>").text(json.draftFile.draft_title);
							 var $td3 = $("<td>");
							  var $draftExplainDiv = $("<div class='cell-col-explaination'>").text(json.draftFile.draft_explain);
							 var $td4 = $("<td>");
							  var $registerDiv = $("<div class='cell-col-register' id='"+json.draftFile.user_write_id+"'>").text(json.draftFile.user_writer_name);
							 var $td5 = $("<td>");
							  var $registDateDiv = $("<div class='cell-col-regist-date'>");
							  
							 var $td6 = $("<td>");
							  var $modifierDiv = $("<div class='cell-col-modifier' id='"+json.draftFile.user_update_id+"'>").text(json.draftFile.user_modify_name);
							 var $td7 = $("<td>");
							  var $modifyDateDiv = $("<div class='cell-col-modify-date'>");
							   
							 var $td8 = $("<td>");
							  var $copyDiv = $("<div class='cell-col-copy'>");
							   var $copyAtag = $("<a id='"+ json.draftFile.docu_cate_id +"'>");
							    var $copyIconSpan = $("<span class='material-icons'>").text("file_copy");
							//1
							$checkboxDiv.append($inputCheck);
							$td1.append($checkboxDiv);
							$tr.append($td1);
							//2
							$colIconDiv.append($docuIconSpan);
							$rowWrapperDiv.append($colIconDiv);
							$rowWrapperDiv.append($draftTitleAtag);
							$td2.append($rowWrapperDiv);
							$tr.append($td2);
							//3
							$td3.append($draftExplainDiv);
							$tr.append($td3);
							//4
							$td4.append($registerDiv);
							$tr.append($td4);
							//5
							
							$td5.append($registDateDiv);
							$tr.append($td5);
							//6
							$td6.append($modifierDiv);
							$tr.append($td6);
							//7
							
							$td7.append($modifyDateDiv);
							$tr.append($td7);
							//8
							$copyAtag.append($copyIconSpan);
							$copyDiv.append($copyAtag);
							$td8.append($copyDiv);
							$tr.append($td8);
							$tbody.prepend($tr);
				
					} else if(json.resultCode == "noSelect"){
						alert("알 수 없는 오류가 발생하였습니다.");
					} else if(json.resultCode == "noinsert"){
						alert("기안서 복사를 할수 없습니다!");
					}
				},
				error:function(json){
					console.log("json : "+ json);
				}
			});
			
			}	
		});
		
		//전체 체크선택, 해제
		$(document).on("click", ".checkbox-wrapper", function(){
			$(this).parent().parent().parent().parent().find(".cell-checkbox-wrapper > input").each(function(index, item){
				if($(".checkbox-wrapper > input").is(":checked") == true){
					this.checked = true;
				}else {
					this.checked = false;
				}
			});
		});
		
		//기안 문서 제목 규칙 모달
		$(function(){
			var modal_process = document.getElementById('modal_process');
			// 모달창을 열 버튼 생성 
			var $btn_process = $("#draftTitleRuleBtn");
			console.log("$btn_process : "+ $btn_process);
			// 모달을 닫을 취소 span 태그
			var $modal_process_close = $(".modal_close");
			console.log("$modal_process_close : "+ $modal_process_close);
			
			//문서 제목 규칙 버튼 클릭했을 때
			$btn_process.click(function() {
				//AJAX 처리해서 기안 문서 제목 규칙 내용들 불러온다
				modal_process.style.display = "block";
				$.ajax({
					url:basePath + "/adminajax/draftTitleRuleLoad",
					dataType:"json",
					type:"GET",
					success:function(json){
						
						var $modalDragList = $(".drag-list-container");
						$modalDragList.html('');
						
						var $modalDropLocation = $(".display-list-container");
						$modalDropLocation.html("");
						var $modalNamingText = $(".naming-rule-text");
						$modalNamingText.html("");
						$modalNamingText.append("<span>ex)</span>");
						$.each(json, function(index, value){
							//console.log(index + " " + value.draft_title_order_name);
							var $liDrag = $("<li id='"+ value.draft_title_order_name+"' ondragstart='dragStart(event)' draggable='true' ondragend='dragEnd(event)'>");
							 var $divDragList = $("<div class='drag-list-div'>");
							  var $divDragIcon = $("<div class='drag-icon'>");
							   var $spanList = $("<span class='material-icons'>").text("format_list_bulleted");
							  var $divInput = $("<div class='item-text'>");
							   var $input = $("<input type='text' value='"+value.draft_title_order_name+"' class='input' style='width: 100px' readonly>");
							  var $divEdit = $("<div class='edit-icon'>");
							   var $spanCreate = $("<span class='material-icons'>").text("create");
							  
							  var $namingRuleSpan = $("<span class='rule-text'>").text(value.draft_title_order_name);
							   if(value.draft_title_order_choice == "Y"){
								   //console.log("Y 확인 : "+ value.draft_title_order_choice);
								   //console.log("Y 확인 : "+ value.draft_title_order_name);
								  $divDragIcon.append($spanList);
								  $divDragList.append($divDragIcon);
								  $divInput.append($input);
								  $divDragList.append($divInput);
								  $divEdit.append($spanCreate);
								  $divDragList.append($divEdit);
								  $liDrag.append($divDragList);
								  
								  $modalDropLocation.append($liDrag);
								  
								  $modalNamingText.append($namingRuleSpan);
							  } else {
								  $divDragIcon.append($spanList);
								  $divDragList.append($divDragIcon);
								  $divInput.append($input);
								  $divDragList.append($divInput);
								  $divEdit.append($spanCreate);
								  $divDragList.append($divEdit);
								  $liDrag.append($divDragList);
								  
								  $modalDragList.append($liDrag);
								  
							  }
						});
					},
					
					error:function(json){
						console.log("기안 문서 제목 규칙 ajax 에러! " + JSON.stringify(json))
					},
					//complete:function(json){
					//	$(".modal-cate-name > div").eq(0).attr("class", "modal-cate-name-col-selected");
					//}
				});
				
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
		
		//문서 제목 규칙 설정 버튼눌렀을때
		function draftTitleRuleSave(){
			//ex) 다음의 span의 text값을 불러와서 문자열로 저장시켜서 전송할 계획
			var sendText = "";
			var modal_process = document.getElementById('modal_process');
			//var textleng = $(".naming-rule-text .rule-text").length;
			$(".naming-rule-text .rule-text").each(function(){
				sendText += $(this).text();
				if($(".naming-rule-text .rule-text").last().text() != $(this).text()){
					sendText += "-";
				}
			});
			console.log("sendText : " + sendText);
			$.ajax({
				url:basePath+"/adminajax/titleRuleOrderUpdate",
				dataType:"text",
				type:"GET",
				data:{
					sendText:sendText
				},
				success:function(text){
					if(text == "success"){
						alert("변경 사항이 저장되었습니다.");
						modal_process.style.display = "none";
					}else if(text == "noUpdate"){
						alert("변경 사항 저장이 알 수 없는 이유로 실패 되었습니다.")
					}
				},
				error:function(text){
					console.log(JSON.stringify(text));
				},
				
			});
		};
	</script>
</body>
</html>