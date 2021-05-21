<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라벨관리 - 라벨추가모달</title>
<link href="<%= request.getContextPath() %>/resources/css/label/label.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

    <jsp:include page="../../common/menubar.jsp"/>
        <div class="box">
           <!-- 메뉴바 라벨추가 수정해야함. -->
           <div id="labelModalBtn">
           	<button type="button" id="labelAddition">라벨추가</button>
           </div>

			<div id="labelModal">
				<div class="modalContent bgbtn br5">
					<h2 class="w398">라벨추가</h2>
					<br>
					<p class="w398 pb5">* 라벨명</p>
					 <input type="color" name="color" class="mrgl3">
					 <input type="text" class="w398 bgbtn br5 p1">
					 <br>
					 <button type="button" id="modalContentAdd" class="bgbtn br5 mrgl76">추가</button>
					 <button type="button" id="modalContentClose" class="bgbtn br5 mrgl1">취소</button>
				</div>
				<div class="modal-layer"></div>
			</div>
        </div>
        

<!--label 모달창 시작-->        
<script>
	    $("#labelAddition").click(function(){
	        $("#labelModal").attr("style", "display:block");
	    });
	   
	     $("#modalContentClose").click(function(){
	        $("#labelModal").attr("style", "display:none");
	    });      
</script>
<!--label 모달창 끝--> 
</body>
</html>