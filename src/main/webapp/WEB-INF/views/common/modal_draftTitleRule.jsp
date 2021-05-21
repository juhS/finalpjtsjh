<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
	.modal-outer{
		margin: 0 auto;
	}
	.modal-select-category{
		background-color: #f5f5f5;
	    border-bottom: 1px solid #dbdbdb;
	    border-top-left-radius: 5px;
	    border-top-right-radius: 5px;
	    padding: 20px;
	    font-size: 1.2em;
	}
	
	
	.modal-cate-name{
	    margin: 20px;
		
	}
	.modal-category-content{
		overflow: auto;
	    padding: 0px 15px;
	}
	#modal_close_js{
	    float: right;
	    border: outset;
	    font-size: 1.2em;
	    text-align: center;
	    width: 31px;
	    cursor: pointer;
	}
	.modal-category-footer{
	    border-bottom-left-radius: 5px;
	    border-bottom-right-radius: 5px;
	    border-top: 1px solid #dbdbdb;
        background-color: #f5f5f5;
        justify-content: flex-start;
	    padding: 20px;
        display: flex;
	}
	.modal-category-footer button{
	    border-width: 1px;
	    border-color: transparent;
	    cursor: pointer;
	    padding-bottom: calc(0.375em - 1px);
	    padding-left: .75em;
	    padding-right: .75em;
	    padding-top: calc(0.375em - 1px);
	    text-align: center;
	    border-radius: 5px;
        outline: none;
	}
	.modal-category-footer button:first-child{
	    background-color: #009AF0;
	    color: white;
    	margin-left: 82%;
   		margin-right: 10px;
	}
	.modal-category-footer button:last-child{
	    background-color: white;
	    color: black;
	    float: right;
	}
	.modal-cate-name-col{
		color: darkgoldenrod;
	    cursor: context-menu;
	    display: flex;
	    font-family: "Nanum Gothic","Noto Sans Japanese","Noto Sans SC","Noto Sans TC","Noto Sans","Noto Sans","Noto Sans",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue","Helvetica","Arial",sans-serif;
	    border: 1px solid #dae2ea;
	    flex: 1 1 auto;
	    font-size: 1rem;
	    font-weight: 400;
	    line-height: 1.5;
	    overflow: hidden;
	    padding: 10px 10px;
	    background-color: #f8faff;
	    border-radius: 3px;
	    vertical-align:middle;
	    height: 20px;
	    margin-bottom: 10px;
	}
	.modal-cate-name-col-selected{
		color: darkgoldenrod;
	    cursor: context-menu;
	    display: flex;
	    font-family: "Nanum Gothic","Noto Sans Japanese","Noto Sans SC","Noto Sans TC","Noto Sans","Noto Sans","Noto Sans",-apple-system,BlinkMacSystemFont,"Segoe UI","Roboto","Oxygen","Ubuntu","Cantarell","Fira Sans","Droid Sans","Helvetica Neue","Helvetica","Arial",sans-serif;
	    box-shadow: 0 0 0 1px gold;
	    border: 1px solid gold;
	    flex: 1 1 auto;
	    font-size: 1rem;
	    font-weight: 400;
	    line-height: 1.5;
	    overflow: hidden;
	    padding: 10px 10px;
	    background-color: #f8faff;
	    border-radius: 3px;
	    vertical-align:middle;
	    height: 20px;
	    margin-bottom: 10px;
	}
	/* 모달 안 내용 스타일 시작 */
	.drag-list-container{
		margin-bottom:30px;
		display:inline-block;
		padding-left: 0;
		width:100%;
	    min-height: 50px;
    	margin-top: 0px;
	}
	.modal-category-content li{
		float:left;
		margin:8px; 
	    list-style: none;
	}
	.drag-list-container li {
		float:left;
	}
	/* 드롭 하는 위치 스타일 */
	.display-list-container{
	   border: 2px dashed #b5b5b5;
	    margin-bottom: 20px;
	    min-height: 50px;
	    width: 597px;
	    line-height: 50px;
	    padding: 0px 10px;
	    display: inline-block;
	    overflow: auto;
    	height: auto;
	}
	.display-list-container li{
	    margin: 15px 8px 10px 0px;
	    height: 34px;
	}
	.notice-text{
		color: #009AF0;
    	font-weight: bold;
	}
	
	.drag-list-div{
	    text-overflow: clip;
    	padding-right: 10px;
   	    display: flex;
	    align-items: center;
	    margin-bottom: 5px;
	    background-color: #f8faff;
	    border: 1px solid #dae2ea;
	    border-radius: 3px;
	}
	.drag-icon{
		font-size:18px;
		cursor: move;
	    height: 100%;
	    text-align: center;
	    background-color: #ebedf2;
	    border-radius: 3px;
	    border-bottom-right-radius: 0px;
	    border-top-right-radius: 0px;
	    border-right: 1px solid #dae2ea;
	    line-height: 28px;
	    flex: 0 0 30px;
	}
	.drag-icon > span {
		line-height: 32px;
	}
	.item-text{
		margin: 0px 8px;
		user-select: none;
	    cursor: default;
	    flex: 1 1 auto;
	    font-size: 1rem;
	    max-width: 100%;
	    overflow: hidden;
	    white-space: nowrap;
	    display: flex;
	    align-items: center;
        vertical-align: middle;
        width: 130px;
	}
	.item-text input{
	    width: 100px;
        border: 0px;
	    cursor: default;
	    background: inherit;
	    outline:none;
	}
	.edit-icon{
	    line-height: 5px;
	    cursor: pointer;
	}
	.edit-icon > span {
	    color: #e27065;
	}
	.display-none-stly{
		display:none;
	}
	.drag-guide-text{
		margin:0px 8px;
	    /* display: contents; */
	}
	.drag-guide-text > p {
	    color: #b5b5b5;
	    /* display: contents; */
	}
	.naming-rule-text{
		font-size: 1.14286rem;
    	font-weight: bold;
	}
	.rule-text, .rule-text-first{
		font-style: inherit;
	    font-weight: inherit;
	}
	.rule-text:last-child::after{
		content:" "
	}
	.rule-text::after{
		content:"-"
	}
	/* 모달 안 내용 스타일 끝 */
</style>

<body>

	<div class="modal-outer">
		<div class="modal-select-category">문서 카테고리 선택 	<span id= "modal_close_js" class="modal_close">&times;</span></div>
	
		<div class="modal-category-content">
			<div class="notice-text">
				<p class="notice-block">문서작성 시 기본으로 생성되는 문서제목의 규칙을 설정해주세요.</p>
				<p class="notice-block">※ 순번은 공통 양식, 나의양식에만 사용되며 양식별/연도별로 기안문서 최종승인/반려 후에 적용됩니다.</p>
			</div>
			
			<!-- 드래그 시작 -->
			
			<ul class="drag-list-container" ondrop="dropStart(event)" ondragover="dropOver(event)">
				<li id="변경예정" ondragstart="dragStart(event)" draggable="true" ondragend="dragEnd(event)">
					<div class="drag-list-div">
						<div class="drag-icon">
							<span class="material-icons">format_list_bulleted</span>
						</div>
						<div class="item-text">
							<input type="text" placeholder="직접입력" class="input" style="width: 100px;">
						</div>
						<div class="edit-icon">
							<span class="material-icons">create</span>
						</div>
					</div>
				</li>
				<!-- <li id="list-7" ondragstart="dragStart(event)" draggable="true" ondragend="dragEnd(event)">
					<div class="drag-list-div">
						<div class="drag-icon">
							<span class="material-icons">format_list_bulleted</span>
						</div>
						<div class="item-text">
							<input type="text" value="부서명" readonly class="input" style="width: 100px;">
						</div>
						<div class="edit-icon">
							<span class="material-icons">create</span>
						</div>
					</div>
				</li> -->
			</ul>
			
			<!-- 드롭 위치 -->
			<ul class="display-list-container" ondrop="drop(event)" ondragover="dropOver(event)">
				<li class="drag-guide-text">
					<p>원하시는 항목을 여기로 Drag 해주세요.</p>
				</li>
			</ul>
			
			<p class="naming-rule-text">
				<span>ex)</span>
			</p>
			
		</div>
		
		<div>
			<div class="modal-category-footer">
				<button onclick="draftTitleRuleSave();">저장</button>
				<button class="modal_close">닫기</button>
			</div>
		</div>
	</div>
	
	<script>
		function dragStart(e){
			//li 태그들(옮길 수 있는..) 변수
			var inputValue = $(e.target);
			//input에서 값 받아와서 li id 바꾸기
			$(e.target).attr("id", inputValue.find(".input").val());
			//전달할 id 설정
			e.dataTransfer.setData("text", e.target.id);
			//console.log("dragStart e.target.id : "+ e.target.id);
			//console.log("inputValue : " + inputValue.find(".input").val());
		};
		//드래그가 끝나서 드래그하던 객체를 놓는 장소에 위치한 객체에서 발생
		function drop(e){
			e.preventDefault();
			var data = e.dataTransfer.getData("text");
			console.log("drop e.target : " + e.target.tagName);
			var dropObj = $(e.target);
			if(document.getElementById(data) != null){
				//$(".drag-guide-text").append("<p>");
				//input의 값이 있을때만 들어가도록
				var index = dropObj.children("li").length;
				e.target.append(document.getElementById(data));
				//console.log("index : "+ index);
				var dragTag = dropObj.children().eq(index-1).attr("id");
				console.log("dragTag : " + dragTag);
				//드롭한 객체와 표시하는 것과 비교하여 순서대로 맞추기
				//-> e.target.id 와 태그 아이디와 비교해서 있으면 삭제하고 prepend 이용
				$(".naming-rule-text span").each(function(){
					if($(this).text().trim() == dragTag){
						$(this).remove();
						console.log("index : " + index);
						
						$(".naming-rule-text").append("<span class='rule-text'>"+dragTag+"</span>");
					}
				});
				
			} else {
				//input의 값이 없을때
				var guildLength = $(".display-list-container").children("li").length;
				console.log("guildLength : " + guildLength);
				var guildIs = $(".display-list-container").is("p");
				
				if(guildLength < 1 && !guildIs){
					//li태그가 한개도 없고 p태그가 없으면 발동
					//드롭하기전에 가이드설명이 없어지니까
					//만일 실패할 경우 가이드설명 붙여줌
					$(".display-list-container").append("<li class='drag-guide-text'><p>원하시는 항목을 여기로 Drag 해주세요.</p></li>");					
					$(".rule-text").remove();
				} 
			}
			
		};
		//드래그하면서 마우스가 대상 객체의 위에 자리 잡고 있을 때 발생
		function dropOver(e){
			e.preventDefault();
			if($(".drag-guide-text").is("li")){
				//console.log("존재");
				$(".display-list-container").find(".drag-guide-text").remove();				
			}
			//$(".drag-guide-text").toggleClass("display-none-stly");
		};
		function dragLeave(e){
			console.log("e.target.children : " + e.target.children());
		};
		function dragEnd(e){
			var target = $(".display-list-container").children("li").length;
			console.log("target : " + target);
			var dragObj = $(e.target);
			if(target == 0){
				//dropzone에 li태그가 하나도 없을시 가이드설명추가
				$(".display-list-container").append("<li class='drag-guide-text'><p>원하시는 항목을 여기로 Drag 해주세요.</p></li>");
 				$(".naming-rule-text span:contains('ex')").siblings().remove();
			} else if(target > 0 && dragObj.parent().attr("class") == "display-list-container"){
 				//dropzone에 li태그가 들어올시
 				$(".display-list-container li").each(function(){
 					if($(this).attr("id") == e.target.id){
 						console.log("같다");
 					}
 					var count = 0;
 					//문서 카테고리 순서 태그 검사하여 
 					//드래그한 태그가 순서에 있으면 표시 안하도록
					$(".naming-rule-text span").each(function(){
						//console.log("thisText : " + $(this).text().trim());
						//console.log("e.target.id : " + e.target.id);
						if($(this).text().trim() == e.target.id){
							count += 1;
						} else {
							count += 0;
						}
						//console.log("count : " + count);
					});
					if(count == 0){
						//같은 곳에 놓아도 ex에 하나만 표시가 되도록						
						console.log("첫번째 표시 : " + $(".naming-rule-text .rule-text").length);
						//하이푼 ("-")css 적용
						if($(".naming-rule-text span").length < 2){
							$(".naming-rule-text").append("<span class='rule-text'>"+e.target.id+"</span>");
						} else {
							$(".naming-rule-text").append("<span class='rule-text'>"+e.target.id+"</span>");
						}
					}
 				});

 			} 
			
		};
		
		function dropStart(e){
			//드래그 앤드랍이 끝났을 때 display li 태그들의 id와 
			//naming-rule-text span 태그들의 text값을 비교하여 맞을 경우에만 
			e.preventDefault();
			var data = e.dataTransfer.getData("text");
			e.target.append(document.getElementById(data));
			var dragObj = $(e.target);
			$(".naming-rule-text span").each(function(){
				if($(this).text() == dragObj.children().last().attr("id")){
					$(this).remove();
				}
			});
			
		};
	</script>
	
</body>
