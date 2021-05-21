<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라벨관리-라벨관리</title>
<link href="<%= request.getContextPath() %>/resources/css/label/label.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../../common/menubar.jsp"/>
    
<div class="box">
	<div class="label_center">  
		<div class="label-list w60 h43" id="listArea" > 
			<!-- label big title -->
			<ul>
				<li class="fn fs19 fwb tl bb_line"><a class="bb3_line fcg">라벨</a></li>	
            </ul>		
           	<!-- label title 시작 -->
            <ul>
	            <li class="w60 h43 lh lt_line bb_line rt_line tc fwb fs15">라벨명</li>
	            <li class="w8 h43 lh bb_line rt_line tc fwb fs15">문서수</li>
	            <li class="w15 h43 lh bb_line rt_line tc fwb fs15">표시</li>
	            <li class="w17 h43 lh bb_line rt_line tc">
	            	<input type="button" class="w100 h24 bgw br5 oln t_line fwd" id="labelAddition" value=" + 라벨추가">
	            </li>
            </ul>
            <!-- label title 끝 -->
            <!-- modal label add 시작 -->
            <div id="labelModal" class="labelModal">
				<div class="modalContent mdStyle br5 w74">
					<h2 class="w398">라벨추가</h2>
					<br>
					<p class="w398 pb5">* 라벨명</p>
					 <input type="color" name="color" class="mrgl3">
					 <input type="text" class="w398 bgbtn br5 p1">
					 <br>
					 <button type="button" id="modalContentAdd" class="bgbtn br5 mrgl76 mBtn">추가</button>
					 <button type="button" id="modalContentClose" class="bgbtn br5 mrgl1 mBtn">취소</button>
				</div>
				<div class="modal-layer"></div>
			</div>
            <!-- modal label add 끝 -->
            <!-- label list 시작-->
			<ul>
	            <li class="w60 h43 lh lt_line bb_line rt_line fs12 pl1">
	            	<div class="color br5 fl mrgt8 mrgr4"></div>
	            	<span class="fs13">문서분류라벨</span>
	            </li>
	            <li class="w8 h43 lh bb_line rt_line tc fs13">0</li>
	            <li class="w15 h43 lh bb_line rt_line tc">
	            	<input type="range" name="point" min="0" max="2" value="10" step="2" class="w50">
	            </li>
	            <li class="w17 h43 lh bb_line rt_line tc">
	           		<input type="button" id="labelmodalUpdate" class="bgw w45 h24 br5 oln t_line" value="수정">
	          		<input type="button" class="bgw w45 h24 br5 oln t_line" value="삭제">	            
	            </li>
	    
			</ul>         
			<ul>
	            <li class="w60 h43 lh lt_line bb_line rt_line fs12 pl1">
	            	<div class="color br5 fl mrgt8 mrgr4"></div>
	            	<span class="fs13">휴가신청서라벨</span>
	            </li>
	            <li class="w8 h43 lh bb_line rt_line tc fs13">0</li>
	            <li class="w15 h43 lh bb_line rt_line tc">
	            	<input type="range" name="point" min="0" max="2" value="10" step="2" class="w50">
	            </li>
	            <li class="w17 h43 lh bb_line rt_line tc">
	           		<input type="button" id="labelmodalUpdate" class="bgw w45 h24 br5 oln t_line labelmodalUpdate" value="수정">
	          		<input type="button" class="bgw w45 h24 br5 oln t_line" value="삭제">	            
	            </li>
			</ul>
			<!-- label list 끝-->
			<!-- modal label update 시작 -->
            <div id="labelUpdate" class="labelUpdate">
				<div class="modalContent mdUStyle br5 w74">
					<h2 class="w398">라벨수정</h2>
					<br>
					<p class="w398 pb5">* 라벨명</p>
					 <input type="color" name="color" class="mrgl3">
					 <input type="text" class="w398 bgbtn br5 p1"  placeholder="문서라벨분류">
					 <br>
					 <button type="button" id="labelmodalUpdate" class="bgbtn br5 mrgl76 mBtn">수정</button>
					 <button type="button" id="modalClose" class="bgbtn br5 mrgl1 mBtn">취소</button>
				</div>
				<div class="modal-layer2"></div>
			</div>
            <!-- modal label update 끝 -->
		</div>
    </div>
 </div>
 
<!--label add 모달창 시작-->        
<script>
	    $("#labelAddition").click(function(){
	        $("#labelModal").attr("style", "display:block");
	    });
	    $("#modalContentClose").click(function(){
	        $("#labelModal").attr("style", "display:none");
	    });      
</script>
<!--label add 모달창 끝-->     
<!--label update 모달창 시작-->        
<script>
	    $("#labelmodalUpdate").click(function(){
	        $("#labelUpdate").attr("style", "display:block");
	    });
	    $("#modalClose").click(function(){
	        $("#labelUpdate").attr("style", "display:none");
	    });      
</script>
<!--label update 모달창 끝--> 
</body>
</html>