<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <!--
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
<body> -->

<style>
/*  부서정보   */
.list_area_dept_info_circular{
width: 395px;
	height: 34px;
    display: -webkit-box;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
}
/* 부서이름  */
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
/* 유저들 이름 */
.list_area_dept_info_circular_user{

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

/* 유저들 이름 */
.list_area_dept_info_circular_user_search{

	width: 360px;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;


	
}

</style>

    <div class="modal_size">
        <div class="modal_name_internal">
            <h2 class="h2_enternal">회람자 추가</h2>
        </div>
        <div>
            <input type="text" name="circular_search" id="circular_search" class="internal_text" placeholder="이름, 직위/직책, 부서 검색">
            <input type="button" value="검색" id="btn_circular_search" name="btn_circular_search" class="btn_enternal_search">
        </div>        
          <div class="list_area" id="list_area_circular">
          <!--    부서 나오게 하기       -->
		<c:forEach items="${dept_info }" var="dept">
		
		<div class="list_area_dept_info_circular" id="list_area_dept_info_circular">
			<span class="material-icons label-info">keyboard_arrow_down</span> <label class="dept_name">${dept.dept_name}</label>
		</div>
			
			<c:forEach items="${user_info}" var="user">
			
					<c:if test="${dept.dept_id eq user.dept_id}">
					
					<div class="list_area_dept_info_circular_user" id="${ user.user_id}" name="${user.user_name }">
						<label class="user_name">${ user.user_name}</label>
					</div>
						
						
					</c:if>
				
			</c:forEach>
		</c:forEach>
        </div>
          <div class="list_area" id="list_area_circular_search" style="display:none">
          
          </div>
        
        <div class="confirm_and_close_area">
        	<input type="button" id="modal_circular_close" name="modal_circular_close" value="닫기" class="btn_internal_close">
        	<input type="button" id="modal_circular_confirm" name="modal_circular_confirm" value="확인" class="btn_internal_low_internal">
        
        </div>
    </div>
<script>
	$(function(){
		//회람자 목록들
		var selected_users_name_circular = new Array();
    	var selected_users_id_circular = new Array();
		
    	/* span태그에 온클릭 넣기 sss s*/	
    	$('.list_area_dept_info_circular').click(function(){
    		$(this).nextUntil(".list_area_dept_info_circular").slideToggle();
    		/* 
    			선생님이 알려주신거  
    			$(this).nextUntil(".list_area_dept_info_circular").toggle();	
    			$(this).nextUntil(".list_area_dept_info_circular").slideToggle();	
    			$(this).nextUntil(".list_area_dept_info_circular").fadeToggle();	
    		
    		*/
    			console.log($(this).nextUntil(".list_area_dept_info_circular"));
    		});
    	
    	//클릭 했을때 css 고치고 array에 추가또는 삭제 되는거
    	$('.list_area_dept_info_circular_user').click(function(){
    		var border = $(this).css("border");
    		
    		if( border == '1px solid rgb(218, 226, 234)' ){  			
    			$(this).css('border','2px solid blue');
    			selected_users_name_circular.push($(this).attr('name'));
    			selected_users_id_circular.push($(this).attr('id'));   		
    			selected_users_role_person.push("circular");
    			
    			console.log("selected_users_name_circular"+selected_users_name_circular);
    			console.log("selected_users_id_circular"+selected_users_id_circular);
    		}else{
    			$(this).css('border','1px solid #dae2ea');	
    			selected_users_id_circular.splice(selected_users_id_circular.indexOf($(this).attr('id')), 1 );
    			selected_users_name_circular.splice(selected_users_name_circular.indexOf($(this).attr('name')), 1 );
    			selected_users_role_person.splice(selected_users_role_person.indexOf("circular"), 1 );
    			console.log("selected_users_name_circular"+selected_users_name_circular);
    			console.log("selected_users_id_circular"+selected_users_id_circular);
    		}
    		
    	});
    	
    	
	//확인 눌렀을때 작동하는 기능
    	$('#modal_circular_confirm').click(function(){
    		
    		
    		console.log("박의 현재 회람자 :" + circular_result_name_person);
    		console.log("밖의 회람자:" + circular_result_id_person);
    		console.log("회람자 :" + circular_selected_users_role_person);
    		
    		
    		// createPaper에 수신자 공간 
    		var $circular_reader_area = $('#circular_reader_area');
    	
    		//유저 이름 중복 해제
   		 $.each(selected_users_name_circular,function(i,value){
   			    if(circular_result_name_person.indexOf(value) == -1 ) circular_result_name_person.push(value);
   			});
   		 /* 유저 id 중복 해제   */
   		 $.each(selected_users_id_circular,function(i,value){
			    if(circular_result_id_person.indexOf(value) == -1 ) circular_result_id_person.push(value);
			});
    		
   		console.log("박의 현재 회람자 :" + circular_result_name_person);
		console.log("밖의 회람자:" + circular_result_id_person);
		console.log("회람자 :" + circular_selected_users_role_person);
    		
    		if(circular_result_name_person.length > 0 ){
    			$circular_reader_area.html("");
    		}else if(circular_result_name_person.length == 0 ){
    			$circular_reader_area.html("");
    			$('#circular_reader_area').append("<p class='p_text_recipient'>등록된 회람자가 없습니다.</p>");
    		}
    	
    		
    		$.each(circular_result_name_person,function(index,value){
    			//밑줄로 가기  
    			var $br = $("<br>");
    			// 하나하나 생성될때마다 들어가는 div     
    			var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
    			//유저 이름들어가는 라벨   
    			var $user_name_label = $("<label class='internal_user_name_label'>"+value+"</label>");  
    			// 유저 뒤에 x  
    			var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_cir_"+index+"'>clear</span>");
    	 	
    			
    			if((index % 4) == 0){
    				$user_info_div.append($br);
    				$user_info_div.append($user_name_label);
        			$user_info_div.append($user_delete);
        			
        			
        			$circular_reader_area.append($user_info_div);
    			}else{
    				$user_info_div.append($user_name_label);
        			$user_info_div.append($user_delete);
        			
        			
        			$circular_reader_area.append($user_info_div);
    			}
    			$circular_reader_area.append($user_info_div);
    			
    			$("#delete_cir_"+index).click(function(){
    				$(this).closest('#user_info_div').remove();
    				circular_result_name_person.splice(index, 1 );
    				circular_result_id_person.splice(index, 1 );
    				console.log("circular_result_name_person : "+circular_result_name_person);
        			console.log("circular_result_id_person : "+circular_result_id_person);
    			});
    			
    		
    		});	
    		
    		/* $.ajax({
    			type:"POST",
    			url : "circularReaderToController",
    			data : {
    				circular_result_name_person:circular_result_name_person,
    				circular_result_id_person:circular_result_id_person ,
    				circular_selected_users_role_person:circular_selected_users_role_person 
    					},
    			dataType :"json",
    			success:function(data){
    				
    			
    			}
    		}); */
    		
    		
    	}); 
    	
    	
    	
    	/* 검색 하기 ajax 이름,직위, 직책, 부서     */
    	$('#btn_circular_search').click(function(){
    		
    		
    	
    		var search = $('#circular_search').val();
    		
    		if(search == ""){
    			$("#list_area_circular_search").css("display",'none');
				$("#list_area_circular").css("display",'block');
    		}else{
    			$.ajax({
        			type:"POST",
        			url : "search",
        			data : {search:search},
        			dataType :"json",
        			success:function(data){
        				
        				$("#list_area_circular_search").css("display",'block');
        				$("#list_area_circular").css("display",'none');
        				console.log(data[0].user_name);
        				
        				$('#list_area_circular_search').html('');
        				
        				
        				var $div_class_list_area_circular = $("#list_area_circular_search");
    				
        				
    					
        				
        				$.each(data,function(index,value){
        			
        					var $div_1 = $("<div class='list_area_dept_info_circular_user_search' id="+value.user_id+" name="+value.user_name+"><label class='user_name'>"+value.user_name+"</label></div>");
        					
        					
        					$div_class_list_area_circular.append($div_1);
        					
        				});
        				
        				/* 검색한 유저 클릭  */
        		    	$('.list_area_dept_info_circular_user_search').click(function(){
        		    		var border = $(this).css("border");
        		    		
        		    		if( border == '1px solid rgb(218, 226, 234)' ){  			
        		    			$(this).css('border','2px solid blue');
        		    			selected_users_name_circular.push($(this).attr('name'));
        		    			selected_users_id_circular.push($(this).attr('id'));   			
        		    			console.log("회람자 검색후 클릭한 유저의 이름 : "+selected_users_name_circular);
        		    			console.log("회람자 검색후 클릭한 유저의 아이디 : "+selected_users_id_circular);
        		    		}else{
        		    			$(this).css('border','1px solid #dae2ea');	
        		    			selected_users_name_circular.splice(selected_users_id.indexOf($(this).attr('id')), 1 );
        		    			selected_users_id_circular.splice(selected_users_name.indexOf($(this).attr('name')), 1 );
        		    			console.log("회람자 검색후 클릭한 유저의 이름 지운후 : "+selected_users_name_circular);
        		    			console.log("회람자 검색후 클릭한 유저의 아이디 지운후 : "+selected_users_id_circular);
        		    		}
        		    		
        		    	});
        				
        		    	$('#circular_search').val("");
        			}
        			
        		});
    		}
    		
    		
    	});
    	
	})
</script>
 <!--    
</body>
</html> -->
