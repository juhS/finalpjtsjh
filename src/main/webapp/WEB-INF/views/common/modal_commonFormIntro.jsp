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
    	margin-left: 70%;
   		margin-right: 10px;
	}
	.modal-category-footer button:last-child{
	    background-color: white;
	    color: black;
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
</style>

<body>

	<div class="modal-outer">
		<div class="modal-select-category">문서 카테고리 선택 	
			<span id= "modal_close_js" class="modal_close">&times;</span>
		</div>
	
		<div class="modal-category-content">
			<div class="modal-cate-name">
				<!-- <div class="modal-cate-name-col">
					<button type="button" class="modal-cate-down" onclick="modal_click_icon_down();">
						<span class="material-icons">keyboard_arrow_down</span>
					</button>
					<span class="material-icons">folder</span>
					<p>&nbsp;</p>
					<div class="modal-column-form">공통양식</div>
				</div> -->
			</div>
		</div>
		
		<div>
			<div class="modal-category-footer">
				<button onclick="docuCateDraftInsert();">확인</button>
				<button class="modal_close">닫기</button>
			</div>
		</div>
	</div>
	
	<script>
		
	</script>
	
</body>
