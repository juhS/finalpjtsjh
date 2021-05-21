<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      
    <!-- 모달 뜨는거 ( 직원 검색 )  -->
  <style>
       
  
     
        .material-icons.md-18 { font-size: 18px; }
        
        .material-icons.md-24 { font-size: 24px; }
        
        .material-icons.md-36 { font-size: 36px; }

		.material-icons.md-48 { font-size: 48px; }
        
        /*  Rules for using icons as black on a light background.   */

		.material-icons.md-dark { color: rgba(0, 0, 0, 0.54); }

		.material-icons.md-dark.md-inactive { color: rgba(0, 0, 0, 0.26); }



		/* Rules for using icons as white on a dark background.  */

		.material-icons.md-light { color: rgba(255, 255, 255, 1); }

		.material-icons.md-light.md-inactive { color: rgba(255, 255, 255, 0.3); }
		
  
  
        .modal_size{
            width: 400px;
            height: 800px;
         
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

      
        
        .modal_name_internal{
            width: 400px;
            height: 50px;
            background-color: white;
        }
        
        .h2_enternal{
            margin-left: 10px;
        }
        
     /* btn asd*/
		.btn_internal_low{
			width: 40px;
			height: 25px;
			background-color:gold;
			float:right;
			margin-top: 15px;
			margin-bottom: 20px;
			margin-right: 10px;
			margin-left:5px;
			color:white;
			border-radius: 5px;
		}
		
		.btn_internal_close{
			width: 40px;
			height: 25px;
			background-color:white;
			float:right;
			margin-top: 15px;
			margin-bottom: 20px;
			margin-right: 10px;
			margin-left:5px;
			color:black;
			border-radius: 5px;
		}
		
		 .list_area{
            margin-top: 10px;
            width: 400px;
            height: 650px;
            border : 1px solid #626262;
        }
        
          .confirm_and_close_area{
        	width: 400px;
        	height: 50px;
        	background-color:#E8E8E8;
     		border: 1px solid #626262;
        	
		}
		.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
		
		 .modal-content-document-name_internal{
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */     
        }
        
         .search_zone{
       		width: 830px;
            height: 120px;
            background-color : white;
           
           	display: none;
		}
		/* 아이콘 버튼 */
		 .btn_option_writer_inte{
       	width:30px;
       	height:30px;
       	border: 2px solid #626262;
       }
	
		 .search_option_table_inte{
       		width: 830px;
       		height: 130px;
       		background-color: white;
            border : 1px solid black;
            border-radius: 5px;
            padding: 5px;
            background-color: white;
          
       }
         .label_option_inte{
        	color:black;
        	font-size: 15px;
        }
         .option_text_inte{
       	width: 500px;
       	height: 20px;
       	border : 2px solid #626262; 
       }
        .option_writer_inte{
       	color: black;
       	width: 500px;
       	height: 20px;
       	border : 2px solid #626262;
       }
       
       .btn_option_writer_inte{
       	width:30px;
       	height:20px;
       	border: 2px solid #626262;
       }
        .option_write_date_inte{
        	color: balck;
        	width: 200px;
        	height:20px;
        	border: 1px solid #888;
        }		

/* a */

    </style>
<!-- 직원 검색 끝 -->
    
<style>
		/*  왼쪽 카테고리 메뉴   */
        .menu_category_left{
           
            width: 250px;
            height: 750px;
        	background-color: white;
            float: left;
            border: 1px solid #626262;
            
        }
        
        .menu_right{
            width: 830px;
            height: 750px;           
            margin-left: 20px;
            float: left;
            background-color: white;
            border: 1px solid #626262;
        }
        /*  */

        .menu_font{
            color:#626262;
            margin-bottom: 7px;
        }

        .search_text{
            width: 200px;
            height: 30px;
            border-radius: 5px;
            border-color:#626262;
        }

        .button_search{
            width: 50px;
            height: 30px;
            border-radius: 5px;
            border-color:#626262;
            
            background-color:#F9AD1B;
        }
        .left_search{
            margin-left:50px ;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        .table_background{
            width: 830px;
            height: 530px;
            background-color: white;
      		position:absolute;
      		border: 1px solid #626262;
        }
        /* 비어 있게 만든거  */
        .empty_zone{
       		 width: 830px;
            height: 25px;
  
        }
        /* 버튼 종류 배경 */
        .payment_kind{
       	 	width: 830px;
            height: 50px;
        }
        .page_button_area{
            width: 830px;
            height: 60px;
            margin-top: 35px;
            text-align: center;
        }
        .btn_sort{
            width: 50px;
            height: 30px;
            border-radius: 5px;
            border-color:#626262;
            float: right;
            background-color:#F9AD1B;
            margin-right: 15px;

        }

        #menuTable{display: none;}
/* ㅁㄴ */
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
         /* 버튼들   */
        .btn_payment{
        	width: 70px;
        	height: 30px;
        	color: black;
        	background-color: white;
            margin:5px;
        	margin-top: 15px;
        }
       
        
        .delete_payment{
       		 width: 80px;
        	height: 30px;
        	color:gold;
        	background-color: white;
        	border: 1px solid gold;
        	float: right;
        }
        .insert_label{
        	width: 80px;
        	height: 30px;
        	color:gold;
        	background-color: white;
        	border: 1px solid gold;
        	float: right;
        	font-size: 12px;
        }
        
        .material-icons.md-36 { font-size: 18px; }
        
        .material-icons.md-36 { font-size: 24px; }
        
        .material-icons.md-36 { font-size: 36px; }

		.material-icons.md-48 { font-size: 48px; }
        
        /*  Rules for using icons as black on a light background.   */

		.material-icons.md-dark { color: rgba(0, 0, 0, 0.54); }

		.material-icons.md-dark.md-inactive { color: rgba(0, 0, 0, 0.26); }



		/* Rules for using icons as white on a dark background. */

		.material-icons.md-light { color: rgba(255, 255, 255, 1); }

		.material-icons.md-light.md-inactive { color: rgba(255, 255, 255, 0.3); }
		/* 가운데 테이블 css    */
        .middle_table{
        	width: 830px;
        	height: 530px;
        	position:relative;
        	z-index: 1;
        	table-layout: fixed;
        	border: 1px solid #626262;
     
        }
        /* 체크박스 css  */
        .checkbox_css{
        	width: 15px;
        	height: 15px;
        	margin: 15px;
        }
        
        /* 테이블 안쪽 보더 */
        .td_border{
        	border-right: : 1px solid black;
        	border-left: 1px solid black;
    		 padding: 10px;
        }
        
        /* 테이블 헤드 css */
        .table_head_css{
        	background-color: #F6F6F6;
        }
        </style>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<jsp:include page="../../common/menubar.jsp"/>
	<div class="box">
	 <div class="menu_category_left">
            <div>
                <h2 class="menu_font">문서양식</h2>
                <hr class="menu_font">
            </div>


         </div>
	<!-- 오른쪽 메뉴 -->
            <div class="menu_right">
                <div class="left_search">
                
                    <input type="text" name="search_text" id="search_text" class="search_text">
                    <input type="button" name="btn_search" id="btn_search" class="button_search" value="f107" onclick="search_option();">

				
                    <button id="btn_sort" name="btn_sort" class="btn_sort" onclick="sort_menu();"><span class="material-icons">
						more_vert</span></button>
                    
                    <button id="delete_payment" name="delete_payment" class="delete_payment">
                    <span class="material-icons">delete</span>
                    </button>
                    
					<button id="insert_label" name="insert_label" class="insert_label" >
					<span class="material-icons">label</span>
					라벨지정
					</button>
                    <div id="menuTable">
                        <table class="table_sort">
                            <tr>
                                <td>
                                    <input type="radio" name="rdo_sort" id="rbo_empty" value="empty" > 
                                </td>
                                <td>
                                    <label for="rbo_empty" class="label_radio">양식없음</label>
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
                  <hr>
                  <div class="search_zone" id="search_zone">
                  <table class="search_option_table_inte">
					 <tr>
                            <td>
                             		<label class="label_option_inte">제목 </label>
                                   
                            </td>
                            <td>
                                    <input type="text" name="option_name" id="option_name" class="option_text_inte" placeholder="제목"> 
                            </td>
                     </tr>
                     
                       <tr>
                       		<td>
                       			<label class="label_option_inte">기안자</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_writer" name="option_writer" class="option_writer_inte">
                       			<button id="btn_option_writer" name="btn_option_writer" class="btn_option_writer_inte" onclick="writer_click();"><span class="material-icons">
						person</span></button>
                       		</td>
                       </tr>
                       
                       <tr>
                       		<td>
                       			<label class="label_option">기안일</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_write_date_3" name="option_write_date_3" class="option_write_date_inte"> ~
                       			<input type="text" id="option_write_date_4" name="option_write_date_4" class="option_write_date_inte">
                       			
                       		</td>
                       </tr>
                       
                       <tr>
                       		<td>
                       			<label class="label_option">수신자/회람자</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_receiver" name="option_receiver" class="option_writer_inte">
                       			<button id="btn_option_receiver" name="btn_option_receiver" class="btn_option_writer_inte"><span class="material-icons">
						person</span></button>
                       		</td>
                       </tr>
					 </table>
                  </div>
                  <div class="payment_kind">
                  	 <div>
                  	 
                  	  <input type="button" class="btn_payment" id="all_payment" name="all_payment" value="전체">
                  	  <input type="button" class="btn_payment" id="modify_payment" name="modify_payment" value="기안중">
                  	  <input type="button" class="btn_payment" id="proceeding_payment" name="proceeding_payment" value="진행중">
                  	  <input type="button" class="btn_payment" id="companion_payment" name="companion_payment" value="반려">
                  	  <input type="button" class="btn_payment" id="end_payment" name="end_payment" value="결재">
                  
                   </div>
                  </div>
                  
                  
                  <!--  테이블이 채워질곳   -->
                  <div class="table_background" id="table_background">
                  	<table class="middle_table" id="middle_table">
                  		<thead class="table_head_css">
                  			<tr>
                  				<td><input type="checkbox" id="check_document" name="check_document" class="checkbox_css"></td>
                  				<td class="td_border">기안일자</td>
                  				<td class="td_border">문서명</td>
                  				<td class="td_border">등록자</td>
                  				<td class="td_border">결재자</td>
                  				<td class="td_border">상태</td>
                  				<td class="td_border">결재일</td>
                  				<td class="td_border">라벨</td>
                  			</tr>
                  		</thead>
                  		<tbody>
                  			<tr>
                  				<td><input type="checkbox" id="check_document" name="check_document" class="checkbox_css"></td>
                  				<td class="td_border">20.10.24</td>
                  				<td class="td_border">휴가신청서</td>
                  				<td class="td_border">주현주현</td>
                  				<td class="td_border"></td>
                  				<td class="td_border" >기안중</td>
                  				<td class="td_border"></td>
                  				<td class="td_border"></td>
                  			</tr>
                  		</tbody>
                  		
                  	</table>
                  </div>
                  <hr>
                    <!-- 페이징 버튼 구역 -->
                  <div class="page_button_area">
                  		<button id="btn_navigate_next_left" name="btn_navigate_next_left"><span class="material-icons">navigate_before</span></button>
						<button id="btn_navigate_next_right" name="btn_navigate_next_right"><span class="material-icons">navigate_next</span></button>
							
                  </div>
            </div>
     </div>
    <script>
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
        
        $(document).ready(function(){

            $("input:radio[name=rdo_sort]").click(function(){
                console.log($(this).val());
              

            });
        })
        
    </script>
    
    
    
    
    
    
    
    
<!-- The Modal 프로세스  -->
<div id="modal_writer" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content-document-name_internal">
      <span class="close">&times;</span>    
      
<!-- 모달에 들어가는 div  -->
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
      		  	<input type="button" id="modal_internal_close_2" name="modal_internal_close_2" value="닫기" class="btn_internal_close">
        		<input type="button" id="modal_internal_confirm" name="modal_internal_confirm " value="확인" class="btn_internal_low">
       	  </div>
        
   		</div>
    
    	
     </div>

</div> 



<!-- The Modal 수신자 회람자   -->
<div id="modal_optoin_receiver" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content-document-name_internal">
      <span class="close">&times;</span>    
      
<!-- 모달에 들어가는 div  -->
 <div class="modal_size">
        <div class="modal_name_internal">
            <h2 class="h2_enternal">조직도</h2>
        </div>
        
        <div>
            <input type="text" name="internal_search" id="internal_search" class="internal_text" placeholder="이름, 직위/직책, 부서 검색">
            <input type="button" value="검색" id="btn_receiver_search" name="btn_receiver_search" class="btn_enternal_search">
        </div>    

        <div class="list_area">

        </div>

        <div class="confirm_and_close_area">
        	<input type="button" id="modal_receiver_close_3" name="modal_receiver_close_3" value="닫기" class="btn_internal_close">
        	<input type="button" id="modal_receiver_confirm" name="modal_receiver_confirm" value="확인" class="btn_internal_low">
        </div>

   		</div> 	
    </div>
</div> 

<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script>
    var search_menu = document.getElementById("search_zone");
    var middle_table = document.getElementById("middle_table");
    var table_background = document.getElementById("table_background");
    var etc_search = true;
    
    function search_option(){

        if(etc_search==false){
            console.log(etc_search);
            search_menu.style.display ="none";
            middle_table.style.height = "530px";
          
            etc_search = true;
            }else{
              
            // 메뉴 보이게
            console.log(etc_search);
            etc_search = false;
            search_menu.style.display = "block";
            middle_table.style.height = "410px";
         
            }
       
          
        }
    
    
    $(function(){
           	
           	/* 수신자 모달창 스크립트 */
               // Get the modal
               var modal_1 = document.getElementById('modal_writer');
           
               // Get the button that opens the modal
               var btn = document.getElementById("btn_option_writer");
           
               // Get the <span> element that closes the modal
               var span_1 = document.getElementById("modal_internal_close_2");
              
               // When the user clicks on the button, open the modal 
               btn.onclick = function() {
               	modal_1.style.display = "block";
               }
               // When the user clicks on <span> (x), close the modal
               span_1.onclick = function() {
               	modal_1.style.display = "none";
               }
               // When the user clicks anywhere outside of the modal, close it
               window.onclick = function(event) {
                   if (event.target == modal_1) {
                   	modal_1.style.display = "none";
                   }
               }
               /* 수신자 모달창 스크립트 종료 */
               
               /* 수신자/회람자 모달창 스크립트 */
               // Get the modal
               var modal_2 = document.getElementById('modal_optoin_receiver');
           
               // Get the button that opens the modal
               var btn_2 = document.getElementById("btn_option_receiver");
           
               // Get the <span> element that closes the modal
               var span_2 = document.getElementById("modal_receiver_close_3");
              
               // When the user clicks on the button, open the modal 
               btn_2.onclick = function() {
               	modal_2.style.display = "block";
               }
               
               // When the user clicks on <span> (x), close the modal
               span_2.onclick = function() {
               	modal_2.style.display = "none";
               }
               
               // When the user clicks anywhere outside of the modal, close it
               window.onclick = function(event) {
                   if (event.target == modal_2) {
                   	modal_2.style.display = "none";
                   }
               }
               /* 수신자 모달창 스크립트 종료 */
               
    		});
           
    $("#option_write_date_4").datepicker({
   	 language:'ko',
   	 changeYear: true,
   	 changeMonth: true,
   	 nextText: '다음 달',
   	 prevText: '이전 달',
   	 currentText: '오늘 날짜',
   	 closeText: '닫기',
   	 dateFormat: "yymmdd"
   	/*  beforeShow:function(input){
   		 
   		 var i_offset = $(input).offset();
   		 setTimeout(function(){
   			 $('#ui-datepicker-div').css({'top':i_offset.top,'bottom':'200px','left':'10px'});
   		 })
   		 
   	 } */
    });
    
    $("#option_write_date_3").datepicker({
   	 language:'ko',
   	 changeYear: true,
   	 changeMonth: true,
   	 nextText: '다음 달',
   	 prevText: '이전 달',
   	 currentText: '오늘 날짜',
   	 closeText: '닫기',
   	 dateFormat: "yymmdd"
   	/*  beforeShow:function(input){
   		 
   		 var i_offset = $(input).offset();
   		 setTimeout(function(){
   			 $('#ui-datepicker-div').css({'top':i_offset.top,'bottom':'200px','left':'10px'});
   		 })
   		 
   	 } */
    });
    </script>
</body>
</html>