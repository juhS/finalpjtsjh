<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
<title>공유정보 - 전사공지(editor)</title>
</head>

<body style="color:black;">
<div class="notice-content" id="contentArea1">
	
<form action="noticeRWrite" method="post">
	
	<div>
		<div>
			<div class="p2">
				<input type="text" placeholder="제목을 입력하세요" class="bdr h27 w91 mrgr2" name="board_title"  autocomplete="off">
				<input type="hidden" id="top_fixed" name="top_fixed" value="N">
				<button class="iconC bgw" id="fixedBtn" type="button" name="fixedBtn">
		        	<i class="fas fa-thumbtack iconS fs21"  id="fixedIcon"></i>
		        </button>
			</div>
		</div>
	</div>
	<div class="r_center">
			<div id="editor" class="editor"></div>
		    <div>
				<div class="p2">
			    	<!-- <span id="btnFileUpload" class="fileboxA">
					     <input type="file" id="image" name="image" onchange="setPath(this, 'FileBoxImg');" class="fileboxB"/>
					    <i class="fas fa-paperclip iconSF mrgt4"></i>
					</span> -->
			        <button type="submit" class="commentSubmit oln iconSS mrgl470" id="comment">게시</button>

			    </div>
			</div>
	</div>
</form>
</div>

</body>
</html>