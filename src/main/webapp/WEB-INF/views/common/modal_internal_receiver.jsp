<!--<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

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
<body>-->

<style>

/* 태그안에 있는 유저들 */
.list_area_dept_info_user{

	width: 360px;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	margin-left: 20px;
	display:none;
	
}

.list_area_dept_info_user_search{

	width: 360px;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	margin-left: 20px;

	
}
 /* 부서정보        */
.list_area_dept_info{

	width: 395px;

    display: flex;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	
}

.dept_name{
	-webkit-box-flex: 1;
    flex: 1 1 auto;
    font-size: 15px;
    max-width: 100%;
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
	margin-left:20px;
}

/* 라벨 사람이름     */
.user_name{
	font-size: 14px;
	margin-left : 20px;
	padding:5px;
}


/* 여기서부터는 프로세스 잘못쓴거  */
.square{
	width: 20px;
	height: 20px;
	background-color: gold;
	border : 1px solid black;
	text-align: center;

}

.profile_img{
	width : 30px;
	height: 30px;
	border-radius : 70%;
	orverflow:hidden;
}

.profile{
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.process_user_list{
	width: 278px;
	height: 40px;
	border : 1px solid #626262;
}




/* 프로세스 잘못 쓴거     */

/* 수신자 css */
.icon_clear{
	margin-left: 5px;
}

.internal_user_name_label{
	font-size: 10px;
	color: white;
	margin-left: 8px;
	
}

.internal_user_list{
 	width: 60px;
 	height: 24px;
 	background-color: green;
 	display: flex;
 	margin: 10px;
 	display: inline;
}
.material-icons.md-12 { font-size: 12px; }
/* 수신자 끝    */


.div_height{
	width:398px;
	height: 400px;
}
</style>
    <div class="modal_size">
        <div class="modal_name_internal">
            <h2 class="h2_enternal">내부 수신자 추가</h2>
        </div>
        
        <div>
            <input type="text" name="internal_search" id="internal_search" class="internal_text" placeholder="이름, 직위/직책, 부서 검색">
            <input type="button" value="검색" id="btn_enternal_search" name="btn_enternal_search" class="btn_enternal_search">
        </div> 
               
        <div class="list_area" id="list_area_internal">
        
      <%--   <label>${user_info[0].list[0].user_name}</label> --%>
   

		<c:forEach items="${dept_info }" var="dept">
		<div class="list_area_dept_info" id="list_area_dept_info">
			<span class="material-icons label-info">keyboard_arrow_down</span> <label class="dept_name">${dept.dept_name}</label>
		</div>
			
			<c:forEach items="${user_info}" var="user">
			
					<c:if test="${dept.dept_id eq user.dept_id}">
					
					<div class="list_area_dept_info_user" id="${ user.user_id}" name="${user.user_name }">
						<label class="user_name">${ user.user_name}</label>
					</div>
						
						
					</c:if>
				
			</c:forEach>
		</c:forEach>
        </div>
        
       <div class="list_area" id="list_area_internal_search" style="display:none;">
        
        </div>
        <div class="confirm_and_close_area">
        	<input type="button" id="modal_internal_close" name="modal_internal_close" value="닫기" class="btn_internal_close">
        	<input type="button" id="modal_internal_confirm" name="modal_internal_confirm" value="확인" class="btn_internal_low_internal">
        
        </div>
    </div>
    
    <script>
    /* ? */
   
// 수신자 이름

var result_name_person = new Array();
// 수신자 id

var result_id_person = new Array();
// 수신자 회람자 구분
var selected_users_role_person = new Array();
    
    $(function(){
    	var selected_users_name = new Array();
    	var selected_users_id = new Array();
    	
    	/* span태그에 온클릭 넣기 sss s*/	
    	$('.list_area_dept_info').click(function(){
    		$(this).nextUntil(".list_area_dept_info").slideToggle();
    		/* 
    			선생님이 알려주신거  
    			$(this).nextUntil(".list_area_dept_info").toggle();	
    			$(this).nextUntil(".list_area_dept_info").slideToggle();	
    			$(this).nextUntil(".list_area_dept_info").fadeToggle();	
    		
    		*/
    			console.log($(this).nextUntil(".list_area_dept_info"));
    		});
    	
    	
    	$('.list_area_dept_info_user').click(function(){
    		var border = $(this).css("border");
    		
    		if( border == '1px solid rgb(218, 226, 234)' ){  			
    			$(this).css('border','2px solid blue');
    			selected_users_name.push($(this).attr('name'));
    			selected_users_id.push($(this).attr('id'));   
    			selected_users_role_person.push("Recipient");
    			console.log(selected_users_name);
    			console.log(selected_users_id);
    		}else{
    			$(this).css('border','1px solid #dae2ea');	
    			selected_users_name.splice(selected_users_id.indexOf($(this).attr('id')), 1 );
    			selected_users_id.splice(selected_users_name.indexOf($(this).attr('name')), 1 );
    			selected_users_role_person.splice(selected_users_name.indexOf("Recipient"), 1 );
    			console.log(selected_users_name);
    			console.log(selected_users_id);
    		}
    		
    	});
    	
    	//확인 버튼 
    	$('#modal_internal_confirm').click(function(){
    		
    		
    		
    		// createPaper에 수신자 공간 
    		var $internal_receiver_area = $('#internal_receiver_area');
    		//유저 이름 중복 해제 내부 수신자
    		 $.each(selected_users_name,function(i,value){
    			    if(result_name_person.indexOf(value) == -1 ) result_name_person.push(value);
    			});
    		 /* 유저 id 중복 해제 */
    		 $.each(selected_users_id,function(i,value){
 			    if(result_id_person.indexOf(value) == -1 ) result_id_person.push(value);
 			});
    		 
    		
    		 console.log("확인 누를때 현재 수신자 :" + result_name_person);
     		console.log("수신자 :" + result_id_person);
     		console.log("수신자 :" + selected_users_role_person);
     		
    		 
    		if(result_name_person.length > 0 ){
    			$internal_receiver_area.html("");
    		}else if(result_name_person.length == 0 ){
    			$internal_receiver_area.html("");
    			$('#internal_receiver_area').append("<p class='p_text_recipient'>등록된 수신자가 없습니다.</p>");
    		}
    	
    		
    		$.each(result_name_person,function(index,value){
    			//밑줄로 가기  
    			var $br = $("<br>");
    			// 하나하나 생성될때마다 들어가는 div     
    			var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
    			//유저 이름들어가는 라벨  
    			var $user_name_label = $("<label class='internal_user_name_label'>"+value+"</label>");  
    			// 유저 뒤에 x  
    			var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_"+index+"'>clear</span>");
    	 	
    			
    			if((index % 4) == 0){
    				$user_info_div.append($br);
    				$user_info_div.append($user_name_label);
        			$user_info_div.append($user_delete);
        			
        			
        			$internal_receiver_area.append($user_info_div);
    			}else{
    				$user_info_div.append($user_name_label);
        			$user_info_div.append($user_delete);
        			
        			
        			$internal_receiver_area.append($user_info_div);
    			}
    			
    			
    			
    			$internal_receiver_area.append($user_info_div);
    			
    			$("#delete_"+index).click(function(){
    				$(this).closest('#user_info_div').remove();
    				result_name_person.splice(index, 1 );
    				result_id_person.splice(index, 1 );
    			
    			});
    			
    		
    		});	
    		
    		/* $.ajax({
    			type:"POST",
    			url : "internalReceiverToController",
    			data : {result_name_person:result_name_person,
    				result_id_person:result_id_person,
    				selected_users_role_person:selected_users_role_person},
    			dataType :"json",
    			success:function(data){
    				
    			
    			}
    		});
    		 */
    		
    	}); 
    	
    	
    	
    	/* 
    	// 확인을 눌렀을때 write페이지에서 프로세스( 결재순서 )  추가되는 거
    	$('#modal_internal_confirm').click(function(){
    		// createPaper에 수신자 공간
    		var $internal_receiver_area = $('#internal_receiver_area');
    	
    		
 		
    		$.each(selected_users_name,function(index,value){
    			// 이미지 넣는 공간
    			var $user_img = $("<div class='profile_img'><img class='profile' src='#' >");
    			// 하나하나 생성될때마다 들어가는 div
    			var $user_info_div = $("<div class='internal_user_list'>");
    			//유저 순번 들어가는 사각형
    			var $user_order = $("<div class='square'>"+index+"</div>");
    			//유저 이름들어가는 라벨
    			var $user_name_label = $("<label>"+value+"</label>");  
    			//유저 옆에 들어가는 날짜
    			var $date = $(""); 
    			
    			
    			
    			$internal_receiver_area.append($user_info_div);
    			
    			
    		
    		}
    		
    	}); */
    	
    	
    	
		$('#modal_internal_close').click(function(){
			$('.list_area_dept_info_user').css('border','1px solid #dae2ea');	
    	}); 
    	
    	
    	
    	
    	
    	/* 검색 하기 ajax 이름,직위, 직책,  부서       */
    	$('#btn_enternal_search').click(function(){
    		
    		var search = $('#internal_search').val();
    		
    		if(search ==""){

				$('#list_area_internal').css('display','block');
				$('#list_area_internal_search').css('display','none');
    		}else{
    			$.ajax({
        			type:"POST",
        			url : "search",
        			data : {search:search},
        			dataType :"json",
        			success:function(data){
        				
        				$('#list_area_internal').css('display','none');
        				$('#list_area_internal_search').css('display','block');
        				console.log(data[0].user_name);
        				
        				$('#list_area_internal_search').html('');
        				
        				
        				var $div_class_list_area = $("#list_area_internal_search");
    					var $div_2 = $("<div>");
    				
        				
        				$.each(data,function(index,value){
        			
        					var $div_1 = $("<div class='list_area_dept_info_user_search' id="+value.user_id+" name="+value.user_name+"><label class='user_name'>"+value.user_name+"</label></div>");
        					var $label = $("<label class='user_name'>"+value.user_name+"</label></div>");
        					
        				
        					$div_class_list_area.append($div_1);
        					
        					
        					
        					
        				});
        				/* 검색한 유저 클릭  */
        		    	$('.list_area_dept_info_user_search').click(function(){
        		    		var border = $(this).css("border");
        		    		
        		    		if( border == '1px solid rgb(218, 226, 234)' ){  			
        		    			$(this).css('border','2px solid blue');
        		    			result_name_person.push($(this).attr('name'));
        		    			result_id_person.push($(this).attr('id'));   			
        		    		}else{
        		    			$(this).css('border','1px solid #dae2ea');	
        		    			result_name_person.splice(result_name_person.indexOf($(this).attr('id')), 1 );
        		    			result_id_person.splice(result_id_person.indexOf($(this).attr('name')), 1 );
        		    		
        		    		}
        		    		
        		    	});
        				
        		    	$('#internal_search').val("");
        			}
        			
        		});
    		
    		}
    		
    	});
    	
    	
    	
    });
    </script>

 <!--    
</body>
</html> -->
