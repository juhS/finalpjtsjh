<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	.checkbox-cell{
	
	}
	/*ss  ss ss sssss ssss  s ssss  ss sdsd */
	.no-hover-table th:nth-child(1){
		width:40px;
	}
	.no-hover-table th:nth-child(2){
		width:70px;
	}
	.no-hover-table th:nth-child(3){
		width:300px;
	}
	.no-hover-table th:nth-child(4){
		width:80px;
	}
	.no-hover-table th:nth-child(5){
		width:120px;
	}
	.no-hover-table th:nth-child(6){
		width:90px;
	}
	.no-hover-table th:nth-child(7){
		width:120px;
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
	
	/* 내가 추가하는 것. */
	
	 #menuTable{display: none;}

        .table_sort{
            float: right;
            background-color: white;
            border : 2px solid black;
            border-radius: 5px;
            padding: 5px;
            position:relative;
            z-index: 2;
          
        }
        .label_radio{
            color: black;
        }
        
        .start_unchecked{
        	color:#626262;
        }
        .p_text_align{
        	text-align: center;
        }
        .p_text_align_left{
        	text-align: left;
        }
	

	/* 셀렉트박스    */
	.select_css{
		margin-left:30px;
		margin-bottom:10px;
		width: 200px;
		height: 30px;
	}
	/* 텍스트박스로 검색  */
	#search_document{
		width : 200px;
		height: 30px;
		float:left;
	}
	/* 검색 버튼   ss  ss ss */
	#search_document_btn{
		width:60px;
		height:36px;
		background-color: gold;
		
		float:left;
	}
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
							<div class="cate-name" id="cate-name">BetterFlow 제공 양식</div>
						</div>
						<ul id="cate-tree-mom"> <!-- 문서카테고리에서 불러오기   -->
							<c:forEach items="${docuCategory }" var="docu" varStatus="status" >
								<c:if test="${docu.docu_cate_id == 0}">
								<!-- 0은 디폴트라서 안가져옴 -->
								</c:if>
								<c:if test="${docu.docu_cate_id != 0}">
										<li><div class="cate-tree-item" id="cate-tree-item" value="${docu.docu_cate_id }">${docu.docu_cate_name}</div></li>
								</c:if>
						</c:forEach>
					
							
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
					
					<input type="text" id="search_document" name="search_document">
					<button id="search_document_btn" name="search_document_btn">검색</button>
					<select name="degree" id="degree" class="select_css">
						<option value="all">전체</option>
						<option value="기안중">기안중</option>
						<option value="진행중">진행중</option>
						<option value="반려">반려</option>
						<option value="결재">결재</option>
					</select>
					
						 <button id="btn_sort" name="btn_sort" class="btn_sort" onclick="sort_menu();"><span class="material-icons">
						more_vert</span></button>
						<div id="menuTable">
                        <table class="table_sort">
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_empty" value="empty" > 
                                </td>
                                <td>
                                    <label for="rbo_empty" class="label_radio">기본</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_name" value="name"> 
                                </td>
                                <td>
                                    <label for="rbo_name" class="label_radio">양식명</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_explain" value="explain"> 
                                </td>
                                <td>
                                    <label for="rbo_explain" class="label_radio">설명</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_date" value="date"> 
                                </td>
                                <td>
                                    <label for="rbo_date" class="label_radio">등록일</label>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_modify" value="modify"> 
                                </td>
                                <td>
                                    <label for="rbo_modify" class="label_radio">수정일</label>
                                </td>
                            </tr>
                        </table>

                    </div>
					</div>
				</div>
			</div>
			
			<!-- 여기는 오른쪽 아래만 포함 창밑에 마진 주기위해   -->
			<div class="content-wrapper">
				<div class="content-table-wrapper">
					<table class="no-hover-table">
						<thead>
							<tr style="width:100%">
							
								<th></th>
								<th>상태</th>	
								<th>문서명</th>
								<th>기안자</th>							
								<th>기안일</th>							
								<th>최종 결재자</th>							
								<th>최종 승인일</th>							
														
							</tr>
						</thead>
						
						
						<tbody id="tbody_list">
						<c:forEach items="${draft}" var="all_file">
							<tr>
								<td>
									<div class="checkbox-div">
										<button type="button">
										<span class="material-icons start_unchecked">star</span>
										</button>
										<input type="hidden" name="checking">
									</div>
								</td>
								<td>
									<p>${all_file.draft_rec_status }</p>
								</td>
									<td class="p_text_align_left">
										<div class="flex-row">
											<!-- 테이블에서 문서 아이콘   -->
											<div class="flex-row-icon">
												<span class="material-icons"> request_quote </span>
											</div>
											<div class="flex-column">
												<a href="agree?draft_id=${all_file.draft_no}"
													class="reverse-atag">${all_file.draft_rec_title }</a>
											</div>
										</div>
									</td>
									<td class="p_text_align">
									<p>${all_file.user_write_name }</p>
								</td>
								<td class="p_text_align">
									<p>
									<fmt:formatDate value="${all_file.draft_initial_regist_date }" pattern="yyyy.MM.dd"/>
							
									</p>
								</td>
								<td class="p_text_align">
									<p>${all_file.user_final_name }</p>
								</td>
								<td class="p_text_align">
									<p><fmt:formatDate value="${all_file.draft_rec_final_appr }" pattern="yyyy.MM.dd"/></p>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<!-- 페이징 -->
				<div style="text-align: center; margin:10px;">
                   <c:if test="${pagination.curRange ne 1 }">
                        <a href="#" onClick="fn_paging(1)">[처음]</a> 
                    </c:if>
                    <c:if test="${pagination.curPage ne 1}">
                        <a href="#" onClick="fn_paging('${pagination.prevPage }')">[이전]</a> 
                    </c:if>
                    <c:forEach var="pageNum" begin="${pagination.startPage }" end="${pagination.endPage }">
                        <c:choose>
                            <c:when test="${pageNum eq  pagination.curPage}">
                                <span style="font-weight: bold;"><a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a></span> 
                            </c:when>
                            <c:otherwise>
                                <a href="#" onClick="fn_paging('${pageNum }')">${pageNum }</a> 
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                    <c:if test="${pagination.curPage ne pagination.pageCnt && pagination.pageCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.nextPage }')">[다음]</a> 
                    </c:if>
                    <c:if test="${pagination.curRange ne pagination.rangeCnt && pagination.rangeCnt > 0}">
                        <a href="#" onClick="fn_paging('${pagination.pageCnt }')">[끝]</a> 
                    </c:if>
                </div>
                
                
			</div>
		</div>
		 
	</div>
	
	
	 
	<script>

	$("#degree").change(function(){
	
		console.log($("#degree option:selected").val());
		
	});
	
	
	function fn_paging(curPage) {
		location.href = "/batterflow/document/mydocument?curPage=" + curPage;
	}
	
	 
	/* 정렬 버튼 */
    var menu = document.getElementById("menuTable");
    var etc = true;
        function sort_menu(){

            if(etc==false){
                console.log(etc);
                    menu.style.display ="none";
                    etc=true;
                }else{
                  
                // 메뉴 보이게
                console.log(etc);
                etc = false;
                menu.style.display = "block";
                }
           
              
            }
        
        
    	
		//제공양식 버튼 눌렀을때 드롭다운 토글 전역변수
		var checkDown = 1;
		
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
		
	</script>
</body>
</html>
