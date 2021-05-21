<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<!-- // jQuery UI CSS파일  -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<!-- // jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<!-- // jQuery UI 라이브러리 js파일 -->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>  
   
   
<title>Insert title here</title>
<!-- 모달 뜨는거 ( 직원 검색 )  -->
  <style>
  
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
		
    </style>
<!-- 직원 검색 끝 -->
<style>

	.main_document{
		width:1000px;
		height: 800px;
		
	}
	
	.main_text{
		width:1000px;
		height: 50px;
		background-color: #626262;
		border: 1px solid #626262;
	}
	
	.p_text{
		color: black;
		margin: 15px;
	}
	
	.main_middle{
		width:1000px;
		height:650px;
		color:balck;
		border: 1px solid #626262;
		background-color: blue;
		
	}
	
	/*asdsd as aasaaaa as asas*/
	.main_middle_left{
		width: 180px;
		height: 650px;
		background-color: white;
		float:left;
		margin: 10px;
	}
	
	.main_middle_right{
		width : 750px;
		height: 650px;
		background-color: yellow;
		float:left;
		margin-left: 30px;
		margin:10px;
		border: 1px solid #626262;
		
	}
	/* as */
	
	.main_bottom{
		width:1000px;
		height: 70px;
		background-color: orange;
	}
	
	.btn_document_confirm{
		width: 60px;
		height: 30px;
		color : black;
		float: right;
		margin:10px;
		margin-right: 0px;
	}
	
	.btn_document_cancle{
		width: 60px;
		height: 30px;
		color : white;
		background-color: gold;
		float: right;
		margin:10px;
	}
	
	.left_menu_text{
		width: 180px;
		height: 30px;
		
	}
	
	.p_document_text{
		color:black;
		margin: 10px;
		
	}
	
	.p_document_loadingmenu{
	width: 180px;
	height: 600px;
	background-color: green;

	}
	
	.right_search_area{
		width : 750px;
		height: 50px;
		background-color: white;
		
	}
	
	.left_search_area{
		width : 180px;
		height: 50px;
		background-color: white;
	}
	
	
	.document_search_text{
		width : 200px;
		height: 30px;
		border: 1px solid #626262;
		margin-left: 15px;
		margin-top: 10px;
	}
	
	.text_selectBox{
		width: 30px;
		height: 30px;
		border: 1px solid #626262;
		color : black;
		margin-top: 10px;
	}
	
	 .btn_sort{
            width: 50px;
            height: 30px;
            border-radius: 5px;
            border-color:#626262;
            float: right;
            background-color:#F9AD1B;
            margin-right: 15px;
            margin-top: 10px;
			position: absolute;
			top: 180px;
			left:1130px;
        }
        /* asd as aa */
        
     .table_sort{
            float: right;
            background-color: white;
            border : 2px solid black;
            border-radius: 5px;
            padding: 5px;
           	position: absolute;
			top: 220px;
			left:1090px;
        }
        /* a a a a a a*/
        #menuTable{display: none;}
         
       .label_radio{
            color: black;
        }
        
        .label_option{
        	color:black;
        	font-size: 12px;
        }
        
        
      
       
       .search_option_table{
       		width: 300px;
       		height: 300px;
       		background-color: white;
            border : 2px solid black;
            border-radius: 5px;
            padding: 5px;
            background-color: white;
          
       }
       
       .option_receiver{
       		width:170px;
       		height:30px;
       		
       }
       
       .option_text{
       	width: 200px;
       	height: 30px;
       	border : 2px solid #626262; 
       }
       
       .select_stable{
       	color: black;
       	width: 200px;
       	height: 30px;
       	border : 2px solid #626262; 
       }
       
       .select_text{
       	color: black;
       }
       
       .option_writer{
       	color: black;
       	width: 170px;
       	height: 30px;
       	border : 2px solid #626262;
       }
       
       .btn_option_writer{
       	width:20px;
       	height:30px;
       	border: 2px solid #626262;
       }
       
       
   /* The Modal (background) */
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
    
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
        
        .modal-content-document-name_internal{
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */     
        }
        
        .option_write_date{
        	color: balck;
        	width: 80px;
        	height:30px;
        	border: 1px solid #888;
        }
        
        
         *{
	 	color:black;
		}
       
      
</style>

</head>
<body>

	<div class="main_document">
		<div class="main_text">
			
			<p class="p_text">관련 문서 선택</p>
			
		</div>
		
		
		<div class="main_middle">
			<div class="main_middle_left">
			
				<div class="left_menu_text">
					<p class="p_document_text">문서 양식</p>
				</div>
				<hr>
				<div class="p_document_loadingmenu">
					
				</div>
				
			</div>
			<!--as  -->
			<div class="main_middle">
			<div class="main_middle_right">
				
				<div class="right_search_area">
					<input type="text" id="document_search_text" name="document_search_text" class="document_search_text"  placeholder="검색" >
					 <button id="text_selectBox" name="text_selectBox" class="text_selectBox" onclick="option_menu();"> o </button>
					 
					 <div id="search_option_table">
					 <table class="search_option_table">
					 <tr>
                            <td>
                             		<label class="label_option">제목 </label>
                                   
                            </td>
                            <td>
                                    <input type="text" name="option_name" id="option_name" class="option_text" placeholder="제목"> 
                            </td>
                     </tr>
                     
                     <tr>
								<td><label class="label_option">상태</label></td>
								<td>
									<select name="stable" class="select_stable">
										<option value="">선택</option>
										<option value="paymenting" class="select_text">결재중</option>
										<option value="agreement" class="select_text">최종승인</option>
										<option value="rejected" class="select_text">반려</option>
										<option value="Predecessor" class="select_text">전결</option>
									</select>
								</td>
							</tr>
                       <tr>
                       		<td>
                       			<label class="label_option">기안자</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_writer" name="option_writer" class="option_writer">
                       			<button id="btn_option_writer" name="btn_option_writer" class="btn_option_writer" onclick="writer_click();">o</button>
                       		</td>
                       </tr>
                       
                       <tr>
                       		<td>
                       			<label class="label_option">기안일</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_write_date" name="option_write_date" class="option_write_date"> ~
                       			<input type="text" id="option_write_date_2" name="option_write_date_2" class="option_write_date">
                       			
                       		</td>
                       </tr>
                       
                       <tr>
                       		<td>
                       			<label class="label_option">수신자/회람자</label>
                       		</td>
                       		<td>
                       			<input type="text" id="option_receiver" name="option_receiver" class="option_writer">
                       			<button id="btn_option_receiver" name="btn_option_receiver" class="btn_option_writer">o</button>
                       		</td>
                       </tr>
					 </table>
					 </div>
					 
					 
					
					 <button id="btn_sort" name="btn_sort" class="btn_sort" onclick="sort_menu();">정렬</button>
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
				</div>
			</div>
		
		</div>
		
		<div  class="main_bottom">
		<input type="button" id="btn_document_cancle" name="btn_document_cancle" class="btn_document_cancle" value="닫기">
			<input type="button" id="btn_document_confirm" name="btn_document_confirm" class="btn_document_confirm" value="확인">
			
			
		</div>
		
	</div>
	
<script>
    var menu = document.getElementById("menuTable");
    var etc = true;
    console.log(etc);
    
        function sort_menu(){

            if(etc==false){
                console.log(etc+"what?");
                    menu.style.display ="none";
                    etc=true;
                }else{
                  
                // 메뉴 보이게
                etc = false;
                console.log(etc+"why? ");
                menu.style.display = "block";
                }
           
              
            }
        /*as  */
        
        $(document).ready(function(){

            $("input:radio[name=rdo_sort]").click(function(){
                console.log($(this).val());
              

            });
        });
        
        
        var option = document.getElementById("search_option_table");
        var etc2 = true;
        console.log(option);

        function option_menu(){

            if(etc2==false){
                console.log(etc2+" option flase");
                option.style.display = "none";
                etc2 = true;
                }else{ 
                	
                // 메뉴 보이게
                etc2 = false;
                console.log(etc2 + " option true");
                option.style.display = "block";
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
        
 $("#option_write_date").datepicker({
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
 
 $("#option_write_date_2").datepicker({
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

</body>
</html>