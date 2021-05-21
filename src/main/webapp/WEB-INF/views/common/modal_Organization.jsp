  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        .modal_size{
            width: 400px;
            height: 800px;
            background-color: blue;
        }

        .internal_text{
            width: 300px;
            height: 30px;
            border: 1px solid #626262;
            box-shadow: black;
            margin-left: 10px;
        }

        .btn_enternal_search{
            width: 70px;
            height: 30px;
            background-color:gold;

        }

        .list_area{
            background-color: gray;
            margin-top: 10px;
            width: 400px;
            height: 650px;
        }
        .modal_name_internal{
            width: 400px;
            height: 50px;
            background-color: white;
        }
        .h2_enternal{
            margin-left: 10px;
        }
        .confirm_and_close_area{
        	width: 400px;
        	height: 50px;
        	background-color:#626262;
        	float:right;
        	
		}
		.btn_internal_low{
			width: 35px;
			height: 20px;
			background-color:gold;
		}
    </style>
</head>
<body>
    <div class="modal_size">
        <div class="modal_name_internal">
            <h2 class="h2_enternal">조직도</h2>
        </div>
        <div>
            <input type="text" name="internal_search" id="internal_search" class="internal_text" placeholder="이름, 직위/직책, 부서 검색">
            <input type="button" value="검색" id="btn_enternal_search" name="btn_enternal_search" class="btn_enternal_search">
        </div>        
        <div class="list_area">

        </div>
        <div class="confirm_and_close_area">
        	<input type="button" id="modal_internal_close" name="modal_internal_close" value="닫기" class="btn_internal_close">
        	<input type="button" id="modal_internal_confirm" name="modal_internal_confirm" value="확인" class="btn_internal_low">
        
        </div>
    </div>
    
</body>
</html>