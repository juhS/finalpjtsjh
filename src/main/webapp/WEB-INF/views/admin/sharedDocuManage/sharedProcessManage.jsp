<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<title>Insert title here</title>
<style>
	.material-icons {
		font-weight: bold;
		color: goldenrod;
		vertical-align: middle;
		font-size: 18px;
	}
	/* 여기서부터 본문 내용 스타일 */
	.right-wrapper{
		margin-left: 290px;
	}
	.right-toolbar{
	    padding: 20px;
	    margin-bottom: 0px;
	    border: 1px solid #dbdbdb;
	    display: inline-block;
	    margin-top: 30px;
	    height: 20px;
	    /* width: 1190px; */
        width: 1505px;
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
	    /* width: 1229px; */
	    width: 1544px;
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
		/* width: 1190px; */
		width: 1505px;
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
</style>
</head>
<body>
<jsp:include page="../../common/menubar_dy.jsp" />
	<!-- 오른쪽 본문 -->
	<div class="right-wrapper">
		<div class="right-toolbar">
			<div class="right-toolbar-btn">
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
									<span class="column-title">프로세스명</span>
								</div>
							</th>
							<th rowspan="2">
								<div class="datagrid-header">
									<span class="column-title">프로세스 설명</span>
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
									<span class="column-title">관리</span>
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
						<%-- <c:forEach items="${draftFile}" var="dfile" varStatus="status">
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
									<a href="#">
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
						</c:forEach> --%>
					</tbody>
				</table>
			</div>
			
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
	
	<script>
		
		
	</script>
</body>
</html>