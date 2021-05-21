<!DOCTYPE html>
<html lang="UTF-8">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sidebar Menu with sub-Menu</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
</head>


    <script>
        $(function(){
        	
        	/* 수신자 모달창 스크립트  */ 
            // Get the modal
            var modal = document.getElementById('internal_Recipient');
        
            // Get the button that opens the modal
            var btn = document.getElementById("btn_external_receiver");
        
            var btn_close_internal_receiver = document.getElementById("modal_internal_confirm");
            
            // Get the <span> element that closes the modal
            var span = document.getElementById("modal_internal_close");
           
            // When the user clicks on the button, open the modal 
            btn.onclick = function() {
                modal.style.display = "block";
            }
           
            // When the user clicks on <span> (x), close the modal
            span.onclick = function() {
                modal.style.display = "none";
            }
            // 확인 버튼 누르면 닫치게
            btn_close_internal_receiver.onclick = function() {
                modal.style.display = "none";
            }
            
            
           
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
            /* 수신자 모달창 스크립트 종료 */
            
            
            /* 회람자 모달창 스크립트 시작 */
            // Get the modal
            var modal_circular = document.getElementById('circular_reader');
        
            // Get the button that opens the modal
            var btn_circular = document.getElementById("btn_circular");
        
            // Get the <span> element that closes the modal
            var span_circular = document.getElementById("modal_circular_close");
            
            // Get the <span> element that closes the modal
            var modal_circular_confirm = document.getElementById("modal_circular_confirm");
           
            // 확인 버튼 누르면 닫치게
            modal_circular_confirm.onclick = function() {
            	modal_circular.style.display = "none";
            }
            
            // When the user clicks on the button, open the modal 
            btn_circular.onclick = function() {
            	modal_circular.style.display = "block";
            }
            // When the user clicks on <span> (x), close the modal
            span_circular.onclick = function() {
            	modal_circular.style.display = "none";
            }
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal_circular) {
                	modal_circular.style.display = "none";
                }
            }
       
        /* 회람자 모달창 스크립트 종료 */
        
        
        
        /* 프로세스 설정 스크립트 시작 */
         // Get the modal
            var modal_process = document.getElementById('modal_process');
        
            // Get the button that opens the modal
            var btn_process = document.getElementById("btn_process");
        
            // Get the <span> element that closes the modal
            var modal_process_close = document.getElementById("modal_process_close");
           
           
            
            // When the user clicks on the button, open the modal   
          		  btn_process.onclick = function() {
            	modal_process.style.display = "block";
            	
            	var $Recipient_area_list = $('#Recipient_area_list');
            	$Recipient_area_list.html('');
            	
            	 for(var l = 0 ; l < result_name_person.length; l++){
         			
            		 //밑줄로 가기   
            			var $br = $("<br>");
            			// 하나하나 생성될때마다 들어가는 div  ss   
            			var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
            			//유저 이름들어가는 라벨   
            			var $user_name_label = $("<label class='internal_user_name_label'>"+result_name_person[l]+"</label>");  
            			// 유저 뒤에 x   
            			var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_"+l+"'>clear</span>");
            	 	
            		
            				if((l % 3) == 0){
            					$user_info_div.append($br);
            					$user_info_div.append($user_name_label);
            	    			$user_info_div.append($user_delete);
            	    			
            	    			
            	    			$Recipient_area_list.append($user_info_div);
            	    			
            				}else{
            					$user_info_div.append($user_name_label);
            	    			$user_info_div.append($user_delete);
            	    			
            	    			
            	    			$Recipient_area_list.append($user_info_div);
            				}
            		
            			
            		
            	
            			$("#delete_"+l).click(function(){
            				l = l - 1;
            				console.log("i의 값 " + l);
            				$(this).closest('#user_info_div').remove();
            				
            				result_name_person.splice(l,1);
            				result_id_person.splice(l,1);
            				selected_users_role_person.splice(l,1);
            				
            				console.log("지워진 수신자 :" + result_name_person);
                			console.log("지워진 수신자 :" + result_id_person);
                			console.log("지워진 수신자 :" + selected_users_role_person);
                			
                			 if(result_name_person.length == 0){
                					$Recipient_area_list.html('');
                					$('#Recipient_area_list').append(" <p class='p_text_recipient'  style='font-size: 12px;'>등록된 수신자가 없습니다.</p>");
                				}
            			}); 
            			
            			}
            	 
            	 /*  회람자 갱신 */
            	 var $circular_area_list = $('#circular_area_list');
            		$circular_area_list.html('');
            	 	
            		
            		
            		 
            		 
            		 for(var l = 0 ; l < circular_result_name_person.length; l++){
            				
            			 //밑줄로 가기   
            				var $br = $("<br>");
            				// 하나하나 생성될때마다 들어가는 div     
            				var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
            				//유저 이름들어가는 라벨  
            				var $user_name_label = $("<label class='internal_user_name_label'>"+circular_result_name_person[l]+"</label>");  
            				// 유저 뒤에 x  
            				var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_circular_"+l+"'>clear</span>");
            		 	

            				if((l % 3) == 0){
            					$user_info_div.append($br);
            					$user_info_div.append($user_name_label);
            	    			$user_info_div.append($user_delete);
            	    			
            	    			
            	    			$circular_area_list.append($user_info_div);
            	    			
            				}else{
            					$user_info_div.append($user_name_label);
            	    			$user_info_div.append($user_delete);
            	    			
            	    			
            	    			$circular_area_list.append($user_info_div);
            				}
            			
            				
            				/* 회람자 제거 */
            				$("#delete_circular_"+l).click(function(){
            					l = l - 1;
            					
            					$(this).closest('#user_info_div').remove();
            					
            					circular_result_name_person.splice(l,1);
            					circular_result_id_person.splice(l,1);
            					circular_selected_users_role_person.splice(l,1);
            					
            					console.log("지워진 회람자 :" + circular_result_name_person);
            	    			console.log("지워진 회람자 :" + circular_result_id_person);
            	    			console.log("지워진 회람자 :" + circular_selected_users_role_person);
            	    			
            	    			 if(circular_result_name_person.length == 0){
            	    					$circular_area_list.html('');
            	    					$('#circular_area_list').append(" <p class='p_text_recipient'  style='font-size: 12px;'>등록된 회람자가 없습니다.</p>");
            	    				}
            				});
            				
            				}
            	
            }
            // When the user clicks on <span> (x), close the modal
            modal_process_close.onclick = function() {
            	modal_process.style.display = "none";
            }
            // When the user clicks anywhere outside of the modal, close it
           
            window.onclick = function(event) {
                if (event.target == modal_process) {
                	modal_process.style.display = "none";
                }
            }
        /* 프로세스 설정 스크립트 종료 */
        
        	
        
            /* 관련문서 모달창 스크립트 시작 */
            // Get the modal
            
         /*    var modal_attachement_document = document.getElementById('modal_attachement_document');
        
            // Get the button that opens the modal
            var attach_document_add = document.getElementById("attach_document_add");
        
            // Get the <span> element that closes the modal
            var btn_document_cancle = document.getElementById("btn_document_cancle");
           
           
            
            // When the user clicks on the button, open the modal 
            attach_document_add.onclick = function() {
            	modal_attachement_document.style.display = "block";
            }
            // When the user clicks on <span> (x), close the modal
            btn_document_cancle.onclick = function() {
            	modal_attachement_document.style.display = "none";
            }
            // When the user clicks anywhere outside of the modal, close it
            window.onclick = function(event) {
                if (event.target == modal_attachement_document) {
                	modal_attachement_document.style.display = "none";
                }
            } */
       
        /* 회람자 모달창 스크립트 종료 */
        
        });
        
       
        
        
        
        </script>

<style>
		/* 모달창 내부 스타일  */
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
            border-radius: 5px;
        }

        .btn_enternal_search{
            width: 70px;
            height: 30px;
            background-color:gold;
			border-radius: 5px;
  	      }
		/* 수신자들 중간 리스트 들어오는곳  */
        .list_area{
            margin-top: 10px;
            width: 400px;
            height: 650px;
            border : 1px solid #626262;
        }
        .modal_name_internal{
            width: 400px;
            height: 50px;
            background-color: white;
        }
        .h2_enternal{
            margin-left: 10px;
            color:black;
           
        }
        /* 내부 수신자 확인버튼 공간   */
        .confirm_and_close_area{
        	width: 400px;
        	height: 50px;
        	background-color:#E8E8E8;
     		border: 1px solid #626262;
        	
		}
		 .confirm_and_close_area_process{
        	width: 700px;
        	height: 50px;
        	background-color:#626262;
     
        	
		}
		/* 내부 수신자 확인 버튼  */
		.btn_internal_low_internal{
			width: 40px;
			height: 25px;
			background-color:gold;
			float:right;
			margin-top: 15px;
			margin-bottom: 20px;
			border-radius: 5px;
		}
		
		.btn_internal_low_process{
			width: 40px;
			height: 25px;
			background-color:gold;
			float:right;
			margin-top: 15px;
			margin-bottom: 20px;
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
/* 모달창 내부 스타일 끝 */

/* The Modal (background)  */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
           
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
        
         /* Modal Content/Box  */
        .modal-content-process {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /*  Could be more or less, depending on screen size */     
            z-index: 1;          
        }
        
       /* Modal Content/Box */
        .modal-content-document {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 70%; /* Could be more or less, depending on screen size */                          
        } 


*{
    margin: 0;
    padding: 0;
    user-select: none;
    box-sizing: border-box;
    color: white;
    font-family: 'Nanum Gothic', sans-serif;
    z-index:0;
}
.main-page{
    width: 1440px;
    height: 1024px;

}

.fa-user{   
    padding-left:20px;
}
.fa-copy{
    padding-left:20px;
}
.fa-tags{
    padding-left: 20px;
}
.fa-sitemap{
    padding-left: 20px;
}
.fa-address-card{
    padding-left: 20px;
}
.nav{
    width: 100%;
    height: 55px;
    background:  #1b1b1b;
    float: left; 

}
.sidebar{
    position: fixed;
    width: 250px;
    height: 100%;
    left: 0;
    background: #1b1b1b;
    overflow: scroll; 
    /* <!--sidebar 스크롤--> */   
}
/*여기는 로고부분*/
.sidebar .text{
    color: gold;
    font-size: 33px;
    font-weight: 600;
    line-height: 100px;
    text-align: center;
    background: #1e1e1e;
    letter-spacing: 2.5px;
    font-family: 'Lobster', cursive;
}
nav ul{
    background: #1e1e1e;
    height: 100%;
    width: 100%;
    list-style: none;
}
nav ul li{
    line-height: 60px;
    border-bottom: 1px solid rgba(255, 255, 255, 0.1);
}
nav ul li a{
    color: white;
    text-decoration: none;
    font-size: 18px;
    padding-left:10px;
    font-weight: 500;
    width: 100%;
    border-left: 3px solid transparent;
}
nav ul li.active > a{
    /* color:gold;  이거 하면 a*/
    background: #1e1e1e;
}
nav ul ul{
    position: static;
    display: none;
}
nav ul .admin-show.show{
    display: block;
}
nav ul .label-show.show1{
    display: block;
}
nav ul .paperwork-show.show2{
    display: block;
}
nav ul .sharingInfo-show.show3{
    display: block;
}
nav ul .myInfo-show.show4{
    display: block;
}
nav ul .workerManagement-sub.showMenu{
    display: block;
}
nav ul .workingHours-sub.showMenu1{
    display: block;
}
nav ul .paperPayment-sub.showMenu2{
    display: block;
}
nav ul .paperForm-sub.showMenu3{
    display: block;
}
nav ul ul li{
   line-height: 40px;
   border-bottom: none;
}
/* <!--여기는 관리자 > 인사관리--> */
nav ul ul li a{
    font-size: 17px;
    /* color: gold; */
    padding-left: 45px;
}
nav ul ul li ul li a{
/* <!--관리자 > 인사관리 >--> */
    font-size: 17px;
    /* color: gold; */
    padding-left: 70px;
}
nav ul li.active ul li a{
    color: #e6e6e6;
    background: #1e1e1e;
}
/*전자결제>문서양식 선택*/
nav ul ul li a:hover{
    color:gold!important;
    background: #1e1e1e!important;
}

nav ul li a span{
    position: absolute;
    top: 50%;
    right: 20px;
    
}
.box{
    width: 1150px;
    height: 750px;
    
    
    margin-left: 295px;
    float: left;
}


</style>
<body>
    <div class="main">
    <div class="nav"></div> 
        
    <!-- <div class="side-bar"></div> -->
    <nav class="sidebar">
        <div class="text">betterFlow</div>
        <ul>
            <li>
                <!--btn : button-->
                <i class="fa fa-user" aria-hidden="true" style="color:white;"></i>
                <a href="#" class="admin-btn">관리자</a>
                <ul class="admin-show">
                    <li><a href="#" class="workerManagement-btn">인사관리</a>
                        <ul class="workerManagement-sub">
                            <li><a href="#">인사설정</a></li>
                            <li><a href="#">조직도/조직원관리</a></li>
                            <li><a href="#">인사정보관리</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="workingHours-btn">근태관리</a>
                        <ul class="workingHours-sub">
                            <li><a href="#">출퇴근반영기준</a></li>
                            <li><a href="#">출퇴근관리기록부</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="paperPayment-btn">전자결재관리</a>
                        <ul class="paperPayment-sub">
                            <li><a href="#">공유문서등록</a></li>
                            <li><a href="#">공유문서관리</a></li>
                            <li><a href="#">기안서통합관리</a></li>
                            <li><a href="#">공유프로세스관리</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="">증명서발급관리</a></li>
                </ul>
            </li>
            <li>
                <i class="fas fa-tags" style="color:white;"></i>
                <a href="#" class="label-btn" >라벨관리</a>
                <ul class="label-show">
                    
                    <li><i class="far fa-plus-square"></i><a href="#">라벨추가</a></li>
                    <li><a href="#">라벨관리</a></li>
                </ul>
            </li> 
            <li>
                <!-- 전자결재 -->
                <i class="far fa-copy" style="color:white;"></i>
                <a href="#" class="paperwork-btn">전자결재</a>
                <ul class="paperwork-show">
                    <li><a href="#" class="paperForm-btn">문서양식</a>
                        <ul class="paperForm-sub">
                            <li><a href="#">지출결의서</a></li>
                            <li><a href="#">휴가신청서</a></li>
                        </ul>
                    </li>
                    <li><a href="#">내 결제관리</a></li>
                    <li><a href="#">내 프로세스관리</a></li>
                </ul>
            </li> 
            <li>
                <i class="fas fa-sitemap" style="color:white;"></i>
                <a href="#" class="sharingInfo-btn">공유정보</a>
                <ul class="sharingInfo-show">
                    <li><a href="#">전사공지</a></li>
                    <li><a href="#">전사규정</a></li>
                    <li><a href="#">전사자료</a></li>
                    <li><a href="#">사내소식</a></li>
                    <li><a href="#">일정관리</a></li>
                    <li><a href="#">익명게시판</a></li>
                    
                </ul>
            </li> 
            <li>
                <i class="far fa-address-card" style="color:white;"></i>
                <a href="#" class="myInfo-btn">나의정보</a>
                <ul class="myInfo-show">
                    <li><a href="#">나의 인사정보</a></li>
                    <li><a href="#">출퇴근기록부</a></li>
                    <li><a href="#">나의휴가정보</a></li>
                    <li><a href="#">증명서발급</a></li>

                </ul>
            </li> 
        </ul>
    </nav>

    <style>
        .menu_category_left{
            margin-top: 30px;
            background-color: white;
            width: 600px;
            height: 450px;
            border: 1px solid #626262;
            float: left;
        }
        /* 오른쪽   */
        .menu_right{
            width: 310px;
            height: 960px;
            margin-left: 830px;
            border: 1px solid #626262;
            float: left;
            background-color: white;
            position: absolute;
        }

        .btn_result{
            width:151px;
            height: 40px;
            background-color : gold;
            border: 1px solid #626262;
            color: white;
           
        }
        .btn_temporary{
            width: 151px;
            height: 40px;
            background-color: white;
            border: 1px solid #626262;
            color: #626262;
          
        }
/* as */
        .main{
            width: 1440px;
            height: 1024px;
        }
        .text_info{
            margin: 12px;
        }
        .label_info{
            height: 50px;
           
        }
        .btn_process{
            background-color: gold;
            width: 280px;
            height: 30px;
            border-radius: 4px;
            margin: 7px;
            margin-left: 12px;
        }
       
        .commit_process{
            color: black;
            margin-left: 15px;
            margin: 15px;
           
         	margin: 15px;
           	margin-left: 65px;
            background-color: white;
            
           	
        }
        /*as  s*/
        .text_recipient{
          white-space: nowrap;
            color: black;
            margin-left: 15px;
            margin: 15px;
            width: 110px;
            display: inline-block;
        }
        .process_man{
            color: black;
            margin-left: 15px;
            margin: 15px;
        }
        .btn_recipient{
            float: right;
            margin: 10px;
            color: black;
        }
        .p_text_recipient{
     
            color:#626262;
           text-align: center;
            margin: 15px;
        
        }
        
        
        
        
        /* 프로세스 설정 스타일 */
        
		.modal_name_internal{
            width: 400px;
            height: 50px;
            background-color: white;
        }
        .modal_name_internal_process{
            width: 700px;
            height: 50px;
            background-color: white;
        }
        
		/* 모달 프로세스 배경  */
		  .modal_size_process{
            width: 700px;
            height: 800px;
        }
		.h2_enternal{
            margin-left: 10px;
        }
        
        
         .process_search{
            width: 200px;
            height: 30px;
            border: 1px solid #626262;
            box-shadow: black;
            margin-left: 10px;
        }

        .btn_process_search{
            width: 50px;
            height: 30px;
            background-color:gold;

        }
        .left_menu_search_process{
        	width: 300px;
        	height : 600px;
        	margin: 15px;
        	border: 1px solid #626262;
        	float: left;
        }
        
        .middle_menu_buttons{
       		width: 100px;
        	height : 600px;
        	height : 1000px;
        	float: left;
        }
        .btn_approver{
        	width:80px;
        	height: 40px;
        	color:black;

        	
        }
        /* a ?? as  asa a as*/
       
        
        .btn_collaborator_person{
        	width:80px;
        	height: 40px;
        	color:black;
        	background-color:yellow;
        }
        .btn_consensual_person{
        	width:80px;
        	height: 40px;
        	background-color:red;
        }
        .btn_Recipient_person{
        	width:80px;
        	height: 40px;
        	background-color:green;
        	
        }
        .btn_circular_person{
        	width:80px;
        	height: 40px;
        	color:black;
        	background-color:white;
        }
        /* as as  as*/
        .list_area_process{
        	border:1px solid #626262;
            margin-top: 10px;
            width: 300px;
            height: 600px;
        }
        
        ..confirm_and_close_area_process{
        	width: 700px;
        	height: 50px;
        	background-color:#626262;
     		position: relative;
        	
		}
		/* as  s*/
		.right_menu_sequence{
			width: 250px;
			height : 640px;
			border : 2px solid #626262;
			float: left;
			margin-top:15px;
		}
		
		.modal_process_sequence_text{
			width:250px;
			height:40px;
			border:1px solid #626262;
			background-color: white;
		}
        /* 프로세스 설정 스타일 끝 */
        .p_process_text{
        	font-size: 15px;
        	color: black;
        	margin : 10px;
        }
     .attachement_style{
     		color: black;
            margin-left: 15px;
            margin-top: 15px;
		    background-color: white;
     }  
       
        
    .menu_button{
	width:360px;
	height : 40px;
	
	float:right;
	}
	.menu_button_chat{
	width:360px;
	float:right;
	}
	
	.chatting_area_range{
		width:308px;
		height: 500px;
	}
	
	.chatting_area{
		width:308px;
		height: 500px;
		
	}

	.attachment_area{
		width:308px;
		height: 400px;
		
	}
	
      .float_right_button_1{
      	width: 50px;
      	height: 120px;
      	float:left;
      	background-color: white;
      	border : 1px solid 	#626262;
      	
      }
      .right_menu_button  {
      	background-color: white;
      	width: 50px;
      	height:40px;
      	color: black;
      }
      #chat_menu_all{
      height: 900px;
      	display: none;
      }
      #attachments_menu{
      	height: 900px;
      	display: none;
      }
      /* 파일 올리는 구역 */
      .drag_and_drop{
      	width : 308px;
      	height : 100px;
      }
      
      .attach_delete_btn{
      	color:black;
      	float: right;
      }
      
      .attach_document_add_btn{
      	color:black;
      	float: right;
      }
      
      .attach_document_delete_btn{
      	color:black;
      	float: right;
      }
      .document_attachment{
      	width : 308px;
      	height : 50px;
      }
      /* 수신자 회람자 밑줄 안끊키게 만들기 */
      .p_tag_area{
      	width:308px;
      	heigth:49px;
      	border: 1px solid #626262;
      }
    
     
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
		
		.chat_submit{
			float: right;
			width : 50px;
			height: 30px;
			background-color: gold;
			color: white;
			margin : 15px;
		}
		
		/* 사용자의 이름 */
		.user_comment_id{
			font-size: 15px;
			color: black;	
			margin-right: 80px;
			margin-left:20px;
			margin: 20px;
			display: inline;
		}
		.user_comment_date{
			font-size : 8px;
			color: #626262;
			margin: 5px;
			display: inline;
		}
		/* 지우기 아이콘  */
		.user_comment_delete{
			width:30px;
			height:30px;
			margin: 5px;
			
		}
		/* 유저의 댓글 내용 */
		.user_comment_text{
			font-size: 12px;
			color:black;
			margin-left: 30px;
			margin: 15px;
			
		}
		
		/* 수신자 공간     */
		.internal_receiver_area{
		overflow:hidden;
		height: auto;
		width: 60px;
		}
		
		
		/* 직위 직책 그런거 입력하는 부분    */
		.menu_category_left_top{
			 margin-top: 30px;
            background-color: white;
            width: 600px;
            height: 225px;
            border: 1px solid #626262;
            float: left;
            display:inline;
            padding-top: 20px;
		
		}
		
		/* 각각의 내용을 위한 자리 배치  div    */
		.menu_in_content{
			width: 298px;
			height: 50px;			
		}
		
		.sign{
			width: 60px;
			height: 60px;
			border: 2px solid black;
		
			float: right;
			margin-right: 25px;
			
		}
		
		.menu_inline{
			position: absolute;
			
		}
		
		/* 문서 제 목    */
		.menu_name{
		 width: 600px;
         height: 50px;
         float:left;
         border: 1px solid black;
         padding-top: 15px;
         text-align: center;
		}
		/* 문서 제목 */
		.document_name_label{
			
			font-size: 20px;
		
		}
        </style>
<!-- ss   -->
    <div class="box">
    
    	<div class="menu_name" id="menu_name" name="menu_name">
    		<label id="document_name" class="document_name_label" >${document_info.draft_title }</label>
    		 <input type="hidden" id="document_content" name="document_content" value="${document_info.draft_content }">
    	</div>
    
    	<div class="menu_category_left_top">
   
    		<div class="menu_in_content">
    			<span class="menu_inline"  style="margin-left: 86px;">
    				<label style="margin-right:35px;">부서</label>
    				<input type="text" id="dept" name="dept" value="${dept }">
    			</span>
    		</div>
    			
    		<div class="menu_in_content">
    				<span class="menu_inline" style="margin-left: 42px;">
    					<label style="margin-right:35px;">직위  / 직책</label>
    					<input type="text" id="document_job" name="document_job" value="${job }"><br>
    				</span>
    		</div>
    		<div class="menu_in_content">
    			<span class="menu_inline" style="margin-left: 52px;">
    				<label style="margin-right:35px;">작성자 명</label>
    				<input type="text" id="document_writer" name="document_writer" value="${login_user_info.user_name }"><br>
    			</span>
    		</div>
    		<div class="menu_in_content">
    			<span class="menu_inline"  style="margin-left: 72px;">
    				<label style="margin-right:35px;">작성일</label>
    				<input type="text" id="document_date" name="document_date">
    			</span>
    		</div>
    	</div>
        <div class="menu_category_left" style="z-index:-1;">
          <jsp:include page="../../common/toust_editor.jsp"/>
        </div>

        <div class="menu_right">
            <div class="right_menu_1"> 
                 <div>
                    <button  name="btn_result" id="btn_result" class="btn_result">기안</button>
                    <button   name="btn_temporary" id="btn_temporary" class="btn_temporary">취소</button>
 					<!-- 회원의 정보를 담기 위한 히든   -->
 					<input type="hidden" id="user_id" name="user_id" value="${login_user_info.user_id }">
 					<input type="hidden" id="user_name" name="user_name" value="${login_user_info.user_name }">
 					<input type="hidden" id="document_id" name="document_id" value="${draft_no }">
             		
                 </div>
                 <div class="text_info"> 
                     <textarea name="text_information" id="text_information" cols="38" rows="4" style="resize: vertical;" value="${document_name }" readonly>${document_name }
                     </textarea>
                     
                 </div>
                 <hr style="color: #626262;">
                 <div class="label_info">
                 <!-- sss -->
                        <!-- <button id="btn_label" name="btn_label"> <span class="material-icons material-icons.md-light">label</span> </button> -->
                 </div>
                 <hr>
                 <div>
                     <input type="button" id="btn_process" name="btn_process" value="프로세스 설정" class="btn_process">
                 </div>
                 <hr style="color: #626262;">
                 <div>
                 
                 
                 
                 <!-- 프로세스 메뉴   -->
                 <div id="process_menu_all">
                 <div class="menu_button">
                	 <div class="float_right_button_1">
                		 <button id="right_menu_button_process" name="right_menu_button_process" class="right_menu_button" >
                		 <span class="material-icons">sync</span></button>
                 		 <button id="right_menu_button_chat" name="right_menu_button_chat" class="right_menu_button" >
                 		<span class="material-icons">textsms</span></button>
                 		  <button id="right_menu_button_attachments" name="right_menu_button_attachments" class="right_menu_button" >
                 		 <span class="material-icons">attach_file</span></button>
                	 </div>
                   
                    <p class="commit_process">프로세스 (결재순서)</p>
                 </div>
                 
                 <hr style="color: #626262;">
                 <div id="process_man" class="process_man">
                 
                 		<span class='process_user_list_process' id='user_info_div'>
							<span class='square' style='background-color : #EFEFEF; '> <p class='p_square'>1</p></span>
							<!-- <span class='profile_img'><img class='profile' src='#' ></span> -->
										<label>${login_user_info.user_name }</label>
							<span class='material-icons md-16 md-dark icon_clear'>clear</span><br>
				</span>
                 		
                 </div>
                
                 <div class="p_tag_area">
                 <p class="text_recipient">수신자</p><button id="btn_external_receiver" name="btn_external_receiver" class="btn_recipient"><span class="material-icons">person</span></button>
                   <!--  <button class="btn_recipient">외부</button>  -->
                 </div>
                
                
                    
                 <div id="internal_receiver_area">
                 
                    <p class="p_text_recipient">등록된 수신자가 없습니다.</p>
                    
                 </div>
                
                 <div class="p_tag_area" >
                    <p class="text_recipient">회람자</p>
                       <button class="btn_recipient" id="btn_circular" name="btn_circular" ><span class="material-icons">person</span></button>
                    </div>
                   
                   
                       
                    <div id="circular_reader_area">
                       <p class="p_text_recipient">등록된 회람자가 없습니다.</p>
                    </div>
                   
                   </div>
                   <!-- 프로세스 메뉴 끝  -->
                   
                   <!-- 채팅메뉴  -->
                   <div id="chat_menu_all">
                   <div class="left_menu_button">
                	

                	 </div>
                	 <div class="menu_button_chat">
                	  <div class="float_right_button_1">
                		 <button id="right_menu_button_process_1" name="right_menu_button_process" class="right_menu_button" >
                		<span class="material-icons">sync</span></button>
                 		 <button id="right_menu_button_chat_1" name="right_menu_button_chat" class="right_menu_button" >
							<span class="material-icons">textsms</span></button>
                 		  <button id="right_menu_button_attachments_1" name="right_menu_button_attachments" class="right_menu_button" >
							<span class="material-icons">attach_file</span></button>
                	 </div>
                	 <div style="background-color: white;">
                    <p class="commit_process">의견</p>
                       <hr style="color: #626262;">
                       </div>
                   </div>
                	
                	 <div id="chat_area" class="chatting_area">
                	 	<p class="user_comment_id">유빈 Song</p>  <p class="user_comment_date">20. 11. 17 오후 3:06 </p> <button id="user_comment_delete" name="user_comment_delete" class="user_comment_delete"><span class="material-icons material-icons.md-18">delete</span></button>
                		<p class="user_comment_text"> 댓글입니다.</p>
                	 </div>
                	 
                	 <div>
                	 	<textarea rows="5" cols="45"></textarea>
                	 	<button id="chat_submit" name="chat_submit" class="chat_submit">제출</button>
                	 </div>
                   </div>
                   
                   <!-- 채팅메뉴 -->
                   
                   
                   <!-- 첨부파일   -->
                   <div id="attachments_menu">
            
                   <div class="left_menu_button">
                	
					<!-- 메뉴 -->
                	 </div>
                	 <div class="menu_button_chat">
                	  <div class="float_right_button_1">
                		 <button id="right_menu_button_process_2" name="right_menu_button_process" class="right_menu_button" >
                		 <span class="material-icons">sync</span></button>
                 		 <button id="right_menu_button_chat_2" name="right_menu_button_chat" class="right_menu_button" >
                 		 <span class="material-icons">textsms</span></button>
                 		  <button id="right_menu_button_attachments_2" name="right_menu_button_attachments" class="right_menu_button" >
                 		  <span class="material-icons">attach_file</span></button>
                	 </div>
                	 <div style="background-color: white;">
                    <p class="commit_process">첨부파일 </p>
                    
                       </div>
                          <hr style="color: #626262;">
                   </div>
                   
                	<div class="attachment_area">
                	 <form method="post" enctype="multipart/form-data">
                		
                			<input multiple="multiple" type="file" id="fileupload" name="filename" accept=".jpg,.png,.gif,.hwp,.xlsx"/>
                			
							<div id="fileList">
							
							</div>
	
                		</form> 
                		<!-- 
                		<form name="fileForm" action="DraftFileUpload" method="post" enctype="multipart/form-data">
      						  <input multiple="multiple" type="file" name="file" />
							        <input type="text" name="src" />
							        <input type="submit" value="전송" />
    					</form>

                		 -->
                	</div>
              		
            	<hr style="color: #626262;">
              <!-- ssss -->
             <!--  <div class="document_attachment">
            
                  <p class="attachement_style">관련 문서</p>
					<button id="attach_document_delete" name="attach_document_delete" class="attach_document_delete_btn" ><span class="material-icons">delete</span></button>
                  	<button id="attach_document_add" name="attach_document_add" class="attach_document_add_btn" ><span class="material-icons">add</span></button>
			  </div> -->
                     <hr style="color: #626262;">
           	  </div>
               <!-- 첨부파일 -->

        </div>

          

    </div>
</div>

   



    <script>
    
  
    
    /* 파일 업로드  */
   $(document).ready(function(){
	  $('#fileupload').on("change",addFiles);

   });
   

   var filesTempArr = [];
   //아무것도 안들어갔을때도 고려해서
   /* 
   
   var formData = new FormData();
   
   
   formData.append("null","null"); */
   
   //파일 추가
   function addFiles(e){
	   var files = e.target.files;
	   console.log(files);
	   var filesArr = Array.prototype.slice.call(files);
	   console.log(filesArr);
	   var filesArrLen = filesArr.length;
	   var filesTempArrLen = filesTempArr.length;
	   
	   for(var i=0;i < filesArrLen; i++){
		   filesTempArr.push(filesArr[i]);
		   $("#fileList").append("<div>" + filesArr[i].name + "<span class='material-icons material-icons.md-18' onclick='deleteFile(event,"+(filesTempArrLen+i)+");'>delete</span></div>");
	   }
	   $(this).val('');
   }
   
   //파일 삭제
   function deleteFile(eventParam,orderParam){
	   filesTempArr.splice(orderParam,1);
	   var innerHtmlTemp = "";
	   var filesTempArrLen = filesTempArr.length;
	   for(var i = 0; i< filesTempArrLen;i ++){
		   innerHtmlTemp += "<div>" + filesTempArr[i].name +  "<span class='material-icons material-icons.md-18' onclick='deleteFile(event,"+i+");'>delete</span></div>";

	   }
	   $("#fileList").html(innerHtmlTemp);
   }
   
   $('#btn_temporary').click(function(){
	   var confirmflag = confirm("문서 작성을 취소하시겠습니까?");
	   
	   if(confirmflag){
		   location.replace('main');
	   }else{
		   
	   }
	   
		
   });
   
   //기안 버튼 클릭시
   $('#btn_result').click(function(){
	   //    부서/ 직위/ 작성자  /작성일 / 문서내용  이런식으로 배열로 보내자 그리고 이배열을 잘라서 insert하면 될듯. ss
	   var dept = $('#dept').val();
	   var job = $('#document_job').val();
	   var writer = $('#document_writer').val();
	   var date = $('#document_date').val();
	   var editor_content = editor.getHtml();
	 
	   var formData = new FormData();
	   
	   /* 라벨 가져오기 */
	   var document_name = $('#text_information').text();
	   console.log("text_information :" + document_name);
	   
	   //문서 제목  ???? 라벨은 특별하게 주문해야 하죠???  ssss
	   var document_title = $('label[id*="document_name"]').text();
	   console.log("문서의 제목: " + document_title);
	   
	   var document_content_all = document_title+"/"+dept +"/"+job+"/"+writer+"/"+date+"/"+editor_content;
	   //작성하는 유저의 id 
	   var user_id = $('#user_id').val();
	   console.log("작성하는 유저의 id : " + user_id);
	   //문서 첨부파일 배열로 저장
	  
	   // 해당양식 번호
	   var document_id = $('#document_id').val();
	    //파일 데이터  ? 
	    
	  
	    
		for(var i=0, filesTempArrLen = filesTempArr.length; i<filesTempArrLen; i++) {
   			formData.append("files", filesTempArr[i]);
		}

	    
	   	formData.append("document_content_all", document_content_all);
	   	formData.append("result_person_array_id", result_person_array_id);
	   	formData.append("result_person_array_name",result_person_array_name );
	   	formData.append("result_person_role",result_person_role );
	   	formData.append("selected_users_role_person", selected_users_role_person);
	   	formData.append("result_name_person",result_name_person );
	   	formData.append("result_id_person",result_id_person);
	   	formData.append("circular_result_name_person",circular_result_name_person );
	   	formData.append("circular_result_id_person",circular_result_id_person );
	   	formData.append("circular_selected_users_role_person",circular_selected_users_role_person );
	   	formData.append("document_id", document_id);
	   	formData.append("user_id", user_id);
	   	formData.append("document_title",document_title);
	   	formData.append("document_name",document_name );
	   
	   	$.ajax({
			  
			   type : "POST",
			   url : "DraftUpLoad",
			   processData : false,
 			   contentType: false,
 			   async: false,
 			   data : formData,
			   success : function(data){
				   alert("문서가 작성되었습니다. "); 
				  location.replace('main');
				  
			   }
			   
		   });
	    	   
   });
    
    
    
        $('.admin-btn').click(function(){
            $('nav ul .admin-show').toggleClass("show");
        });
        $('.label-btn').click(function(){
            $('nav ul .label-show').toggleClass("show1");
        });
        $('.paperwork-btn').click(function(){
            $('nav ul .paperwork-show').toggleClass("show2");
        });
        $('.sharingInfo-btn').click(function(){
            $('nav ul .sharingInfo-show').toggleClass("show3");
        });
        $('.myInfo-btn').click(function(){
            $('nav ul .myInfo-show').toggleClass("show4");
        });
        $('.workerManagement-btn').click(function(){
            $('nav ul .workerManagement-sub').toggleClass("showMenu");
        });
        $('.workingHours-btn').click(function(){
            $('nav ul .workingHours-sub').toggleClass("showMenu1");
        });
        $('.paperPayment-btn').click(function(){
            $('nav ul .paperPayment-sub').toggleClass("showMenu2");
        });
        $('.paperForm-btn').click(function(){
            $('nav ul .paperForm-sub').toggleClass("showMenu3");
        });


        // $('nav ul li').click(function(){
        //     $(this).addClass("active").siblings().removeClass("active");
        // });
        
        
        // 현재시간을 가져오는 코드문
        function getToday(){
        	    var now = new Date();
        	    var year = now.getFullYear();
        	    var month = now.getMonth() + 1;    //1월이 0으로 되기때문에 +1을 함.
        	    var date = now.getDate();
        	    var hours = now.getHours();
        	    var minutes = now.getMinutes();

        	    month = month >=10 ? month : "0" + month;
        	    date  = date  >= 10 ? date : "0" + date;
        	    hours  = hours  >= 10 ? hours : "0" + hours;
        	    minutes  = minutes  >= 10 ? minutes : "0" + minutes;
        	     // ""을 빼면 year + month (숫자+숫자) 됨.. ex) 2018 + 12 = 2030이 리턴됨.

        	    //console.log(""+year + month + date);
        	    return today = ""+year+"." + month+"." +date +"  "+ hours+":" + minutes; 
        	    
        	}
        
        
        $(function(){
        	var time = getToday();
        	 
        	$('#document_date').val(today);
        	
        	
        	
        	  var process_menu = document.getElementById("process_menu_all");
              var chat_menu = document.getElementById("chat_menu_all");
              var attachments_menu = document.getElementById("attachments_menu");
               
              
              		 
              		 $('#right_menu_button_process').click(function(){
              			 chat_menu.style.display = "none";
                   		process_menu.style.display = "block";
                   		attachments_menu.style.display = "none";
              		 });
              		 
              		 $('#right_menu_button_chat').click(function(){
              			 	process_menu.style.display = "none";
                  			chat_menu.style.display = "block";
                  			attachments_menu.style.display = "none";
              		 });

              		 $('#right_menu_button_attachments').click(function(){
           			 	process_menu.style.display = "none";
               			chat_menu.style.display = "none";
               			attachments_menu.style.display = "block";
           		 	});
              		 
              		
              		
              		 $('#right_menu_button_attachments_1').click(function(){
           			 	process_menu.style.display = "none";
               			chat_menu.style.display = "none";
               			attachments_menu.style.display = "block";
           		 	});
              		 
              		 
              		 $('#right_menu_button_process_1').click(function(){
              			 chat_menu.style.display = "none";
                   		process_menu.style.display = "block";
                   		attachments_menu.style.display = "none";
                
              		 });
              		 
              		 $('#right_menu_button_chat_1').click(function(){
              			 	process_menu.style.display = "none";
                  			chat_menu.style.display = "block";
                  			attachments_menu.style.display = "none";
                  		
              		 });
              		 
              		 
              		 $('#right_menu_button_attachments_2').click(function(){
            			 	process_menu.style.display = "none";
                			chat_menu.style.display = "none";
                			attachments_menu.style.display = "block";
            		 	});
               		 
               		 
               		 $('#right_menu_button_process_2').click(function(){
               			 chat_menu.style.display = "none";
                    		process_menu.style.display = "block";
                    		attachments_menu.style.display = "none";
                   
               		 });
               		 
               		 $('#right_menu_button_chat_2').click(function(){
               			 	process_menu.style.display = "none";
                   			chat_menu.style.display = "block";
                   			attachments_menu.style.display = "none";
                   			
               		 });
              		 
        });
      
       		
    </script>
    </div>
    
       
<!-- The Modal 내부 수신자 -->
<div id="internal_Recipient" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content">
      <span class="close">&times;</span>    
    <jsp:include page="../../common/modal_internal_receiver.jsp"/>
  
     </div>

</div>

      
<!-- The Modal 회람자 -->
<div id="circular_reader" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content">
      <span class="close">&times;</span>    
    <jsp:include page="../../common/modal_circular_reader.jsp"/>
  
     </div>

</div>

<!-- The Modal 프로세스-->
<div id="modal_process" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content-process">
      <span class="close">&times;</span>    
    <jsp:include page="../../common/modal_process.jsp"/>
  
     </div>

</div>

<!-- The Modal 프로세스-->
<div id="modal_attachement_document" class="modal">
 
    <!-- Modal content -->
    <div class="modal-content-document">
      <span class="close">&times;</span>    
    <jsp:include page="../../common/document_attachment.jsp"/> 
  
     </div>

</div> 
    
</body>
</html>
