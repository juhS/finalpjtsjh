<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
  <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />


<title>Insert title here</title>
<style type="text/css">

/* The Modal (background) */
.modal_info {
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
.modal-content_info {
	background-color: #fefefe;
	margin: 5% auto; /* 15% from the top and centered */

	border: 1px solid #888;
	width : 600px; /* Could be more or less, depending on screen size      */
	height: 500px;
}

.top_text_area{
	width : 600px;
	height: 30px;
	background-color: green;
}

.p_top_text{
	font-size: 15px;
	color: blue;
}

.middle_area{
	width : 600px;
	height: 400px;
	background-color: white;
	border: 1px solid #626262;
}

.bottom_btns{
	width: 50px;
	height: 30px;
	background-color: gold;
	color : black;
	border : 1px solid #626262;
	margin-top: 15px;
	margin-left: 15px;
}
.bottom_btns_his{
	width: 60px;
	height: 30px;
	background-color: gold;
	color : black;
	border : 1px solid #626262;
	margin-top: 15px;
	margin-left: 15px;
}
/* asd as asas a */

</style>
</head>
<body>
	<script>
		$(function() {

			/* 수신자 모달창 스크립트 */
			// Get the modal
			var modal_info = document.getElementById('modal_info');

			// Get the button that opens the modal
			var btn_info = document.getElementById("end_payment");

			// Get the <span> element that closes the modal
			var span_2 = document.getElementById("document_close");

			// When the user clicks on the button, open the modal 
			btn_info.onclick = function() {
				modal_info.style.display = "block";
			}
			// When the user clicks on <span> (x), close the modal
			span_2.onclick = function() {
				modal_info.style.display = "none";
			}
			// When the user clicks anywhere outside of the modal, close it
			window.onclick = function(event) {
				if (event.target == modal_info) {
					modal_info.style.display = "none";
				}
			}
			/* 수신자 모달창 스크립트 종료  */

		});
	</script>
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
   
    var editor = new toastui.Editor({
       
        el:document.querySelector("#editor"),
        previewStyle : 'tab',
        height: '400px',
        


       
        hooks:{
            "addImageBlobHook" : function(blob,callback){
              
                var fd = new FormData();
                fd.append("im",blob);     

                $.ajax({
                    url:"http://localhost:8089/spring18/toast/upload",
                    type:"post",
                    data:fd,
                    processData:false,            
                    contentType:false,                  
                    success:function(result){
                       console.log(result);
                         
                        callback(result);
                    }
                });
            }
        },

    });

</script>

	<!-- The Modal 수신자 회람자   -->
	<div id="modal_info" class="modal_info">

		<!-- Modal content -->
		<div class="modal-content_info">
			

			<!-- 모달에 들어가는 div  -->
			<div class="top_text_area">
				<p class="p_top_text"> 전체(5) | 기안자(1) 결재자(1) 수신참조(1) 공유자(2)</p>
			</div>
			
			<div class="middle_area">
				
					<div id="editor" class="editor"></div>
				
				
			</div>
			<div class="bottom_btn_area">
				<button id="document_modify"  name="document_modify" class="bottom_btns"> 수정 </button>
				<button id="document_delete"  name="document_delete" class="bottom_btns"> 삭제  </button>
				<button id="document_close"   name="document_close"  class="bottom_btns"> 닫기  </button>
				<button id="document_history" name="document_history" class="bottom_btns_his"> 히스토리  </button>
			</div>
			
		</div>
	</div>
</body>
</html>