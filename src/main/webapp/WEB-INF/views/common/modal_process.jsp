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
      

       
        .list_area{
            background-color: gray;
            margin-top: 10px;
            width: 400px;
            height: 650px;
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
		
		
		
		
		
		
		
		
		
		.modal_name_internal{
            width: 700px;
            height: 50px;
            background-color: white;
        }
        
		
		  .modal_size_process{
            width: 700px;
            height: 800px;
           
        }
		.h2_enternal{
            margin-left: 10px;
        }
        
        
         .process_search{
            width: 300px;
            height: 30px;
            border: 1px solid #626262;
            box-shadow: black;
            margin-left: 10px;
        }

        .btn_process_search{
            width: 70px;
            height: 30px;
            background-color:gold;

        }
        .left_menu_search{
        	width: 300px;
        	height : 650px;
        	margin: 15px;
        	border: 1px solid #626262;
        	float: left;
        }
        
        .middle_menu_buttons{
       		width: 100px;
        	height : 650px;
        	float: left;
        }
        .btn_approver{
        	width:80px;
        	height: 50px;
        	color:black;
        	
        }
        .btn_collaborator_person{
        	width:80px;
        	height: 50px;
        	color:black;
        	background-color:yellow;
        }
        .btn_consensual_person{
        	width:80px;
        	height: 50px;
        	background-color:red;
        }
        .btn_Recipient_person{
        	width:80px;
        	height: 50px;
        	background-color:green;
        	
        }
        .btn_circular_person{
        	width:80px;
        	height: 50px;
        	color:black;
        	background-color:white;
        }
        
    </style>
</head>
<body>-->
<style>

/* ???????????? ?????? ????????? */
.list_area_dept_info_user_process{

	width: 280x;
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
 /* ????????????          */
.list_area_dept_info_process{

	width: 295px;

    display: flex;
	height: 28px;
    -webkit-box-align: center;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 1px solid #dae2ea;
    border-radius: 3px;
	
}

/* ???????????? css ????????? (?????????) */
.list_click{
	border : 2px solid blue;
}

.list_click_blue{
	border : 2px solid blue;
}

/* ?????????????????? ???????????? ????????????      s  */
.p_square{
	font-size: 25px;
	display:inline;
}

.square{
	width: 30px;
	height: 40px;
	background-color: gold;
	border : 1px solid black;
	text-align: center;
	margin-right:15px;
	margin-left:15px;
}

.profile_img{
	width : 30px;
	height: 30px;
	border-radius : 70%;
	orverflow:hidden;
	
}

.profile{
	width : 30px;
	height: 30px;
	object-fit: cover;
	margin-right:15px;
}

.process_user_list_process{
	width: 220px;
	height: 40px;
	
	
}




/* ???????????? ?????? ??????     */


</style>

    <div class="modal_size_process">
        <div class="modal_name_internal_process">
            <h2 class="h2_enternal">???????????? ??????</h2>
        </div>
        <!-- ????????? ?????? ?????? ??????   -->
        <div>
        <!-- ????????????  -->
        <div class=left_menu_search_process>
        <div>
            <input type="text" name="process_search" id="process_search" class="process_search" placeholder="??????, ??????/??????, ?????? ??????">
            <input type="button" value="??????" id="btn_process_search" name="btn_circular_search" class="btn_enternal_search">
        </div>        
       
        <div class="list_area_process" id="list_area_process">

		<c:forEach items="${dept_info }" var="dept">
		<div class="list_area_dept_info_process" id="list_area_dept_info_process">
			<span class="material-icons label-info">keyboard_arrow_down</span> <label class="dept_name">${dept.dept_name}</label>
		</div>
			
			<c:forEach items="${user_info}" var="user">
			
					<c:if test="${dept.dept_id eq user.dept_id}">
					
					<div class="list_area_dept_info_user_process" id="${ user.user_id}" name="${user.user_name }">
						<label class="user_name">${ user.user_name}</label>
					</div>
						
						
					</c:if>
				
			</c:forEach>
		</c:forEach>
		
        </div>
        <div class="list_area_process" id="list_area_process_search" style="display:none">
        
        </div>
        </div>
        
        <!-- ?????? ?????? ?????? 5???  -->
        <div class="middle_menu_buttons">
        <button id="btn_approver_person" name="btn_approver_person" class="btn_approver">?????????<span class="material-icons">arrow_right</span></button><br>
        <button id="btn_collaborator_person" name="btn_collaborator_person" class="btn_collaborator_person">????????? <span class="material-icons">arrow_right</span></button><br>
        <button id="btn_consensual_person" name="btn_consensual_person" class="btn_consensual_person">????????? <span class="material-icons">arrow_right</span></button><br>
        <button id="btn_Recipient_person" name="btn_Recipient_person" class="btn_Recipient_person">????????? <span class="material-icons">arrow_right</span></button><br>
        <button id="btn_circular_person" name="btn_circular_person" class="btn_circular_person">????????? <span class="material-icons">arrow_right</span></button>
        </div>
        
        <!-- ?????????  ???????????? ???????????? -->
        <div class="right_menu_sequence">
        	<div class="modal_process_sequence_text">
        		<p class="p_process_text"> ???????????? (????????????) </p>
        	</div>
        	<span id="process_list_area">
        		<span class='process_user_list_process' id='user_info_div'>
							<span class='square' style='background-color : #EFEFEF; '><p class='p_square'>1</p></span>
							<!-- <span class='profile_img'><img class='profile' src='#' ></span> -->
										<label>${login_user_info.user_name }</label>
							<span class='material-icons md-16 md-dark icon_clear'>clear</span><br>
				</span>
        	</span>
        	<div class="modal_process_sequence_text">
        		<p class="p_process_text"> ????????? </p>
        	</div>
        	<div id="Recipient_area_list">
   
        	  <p class="p_text_recipient"  style="font-size: 12px;">????????? ???????????? ????????????.</p>
        	
        	</div>
        	<div class="modal_process_sequence_text">
        		<p class="p_process_text"> ????????? </p>
        		
        	</div>
        	<div id="circular_area_list">
        	  <p class="p_text_recipient" style="font-size: 12px;">????????? ???????????? ????????????.</p>
        	</div>
        </div>
        
        
        </div>
        
     <div>
        	<input type="button" id="modal_process_close" name="modal_process_close" value="??????" class="btn_internal_close">
        	<input type="button" id="modal_process_confirm" name="modal_process_confirm" value="??????" class="btn_internal_low_process">
        
        </div> 
    </div>
<script>
/* 
//????????? ??????
var approver_person_id = new Array();
var approver_person_name = new Array();
//????????? ??????
var collaborator_person_id = new Array();
var collaborator_person_name = new Array();
//????????? ??????
var consensual_person_id = new Array();
var consensual_person_name = new Array();
//????????? ??????
var Recipient_person_id = new Array();
var Recipient_person_name = new Array();
//????????? ??????
var circular_person_id = new Array();
var circular_person_name = new Array();  
 */
 var user_id = $('#user_id').val();
 var user_name = $('#user_name').val();

// ?????? ?????? ??????
var approver_person_array = new Array();
//?????? ?????? ?????? 
var result_person_array_id = new Array();	//id
var result_person_array_name = new Array();	//name
var result_person_role = new Array();		//?????? 

var $process_list_area = $('#process_list_area');
 
 //????????? ??? ?????? ??????
 $(function(){
	 console.log("user_id"+user_id);

	result_person_array_id.push(user_id);
	result_person_array_name.push(user_name);
	result_person_role.push("approver");

	//?????????
	
 });

/* ????????? ??????     */
$('#btn_approver_person').click(function(){
	


	$process_list_area.html("");
	
	 approver_person_array = (document.getElementsByClassName("list_click"));
	 
	 for( var q = 0; q <approver_person_array.length; q ++){
		 result_person_array_id.push(approver_person_array[q].id);
		 result_person_array_name.push(approver_person_array[q].innerText);
		 result_person_role.push("approver");
		 
		 console.log(result_person_array_id[q]);
		 console.log(result_person_array_name[q]);
		
	 }
	
	 /* ??????..  */
	for(var i =0 ; i < result_person_array_name.length; i++){
		
		var k = i + 1;
			
		// ????????? ?????? ??????
		var $user_img = $("<span class='profile_img'><img class='profile' src='#' ></span>");
		// ???????????? ?????????????????? ???????????? div    
		var $user_info_div = $("<span class='process_user_list_process' id='user_info_div'>");
		//?????? ?????? ???????????? ????????? 
		var $user_order = $("<span class='square'><p class='p_square'>"+k+"</p>");
		// x ??????
		var $user_delete = $("<span class='material-icons md-16 md-dark icon_clear' id='delete_person_"+k+"'>clear</span><br>");		
		
		console.log("result_person_role[i]" + result_person_role[i]);
		
		if(result_person_role[i] == ("approver")){
			$user_order = $("<span class='square' style='background-color : #EFEFEF; '><p class='p_square'>"+k+"</p></div>");
		}else if(result_person_role[i] ==("collaborator")){
			$user_order = $("<span class='square' style='background-color : yellow; '><p class='p_square'>"+k+"</p></div>");
		}else if(result_person_role[i] == ("consensual")){
			$user_order = $("<span class='square' style='background-color : red; '><p class='p_square'>"+k+"</p></div>");
		}else if(result_person_role[i] == ("Recipient")){
			$user_order = $("<span class='square' style='background-color : green; '><p class='p_square'>"+k+"</p></div>");
		}else if(result_person_role[i] == ("circular")){
			$user_order = $("<span class='square' style='background-color : white; '><p class='p_square'>"+k+"</p></div>");
		}
		
		//?????? ?????????????????? ??????
		var $user_name_label = $("<label>"+result_person_array_name[i]+"</label>");  
		
		$user_info_div.append($user_order);
		//$user_info_div.append($user_img);
		$user_info_div.append($user_name_label);
		$user_info_div.append($user_delete);
		
		
		$process_list_area.append($user_info_div);
		
		$("#delete_person_"+k).click(function(){
			
			console.log("????????? ?????? ?????? ?????????");
			
			
			k = k - 1;
			console.log("k??? ??? " + k);
			$(this).parent().remove();
			
			result_person_array_name.splice(k,1);
			result_person_array_id.splice(k,1);
			result_person_role.splice(k,1);
			
			console.log("????????? ????????? :" + result_person_array_name);
			console.log("????????? ????????? :" + result_person_array_id);
			console.log("????????? ????????? :" + result_person_role);
			
			 if(result_person_array_name.length == 0){
					$process_list_area.html('');
					$('#process_list_area').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
				}
		}); 
	}
});
 
/* ????????? ??????      */
$('#btn_collaborator_person').click(function(){

	$process_list_area.html("");



 approver_person_array = (document.getElementsByClassName("list_click"));
 
 for( var q = 0; q <approver_person_array.length; q ++){
	 
	 result_person_array_id.push(approver_person_array[q].id);
	 result_person_array_name.push(approver_person_array[q].innerText);
	 result_person_role.push("collaborator");
	 
	 console.log(result_person_array_id[q]);
	 console.log(result_person_array_name[q]);
 }

 /* ??????..  */
for(var i =0 ; i < result_person_array_name.length; i++){
	
	var k = i + 1;
		
	// ????????? ?????? ??????
	var $user_img = $("<span class='profile_img'><img class='profile' src='#' ></span>");
	// ???????????? ?????????????????? ???????????? div  
	var $user_info_div = $("<span class='process_user_list_process id='user_info_div'>");
	//?????? ?????? ???????????? ????????? 
	var $user_order = $("<span class='square'><p class='p_square'>"+k+"</p></div>");
	// x ??????
	var $user_delete = $("<span class='material-icons md-16 md-dark icon_clear' id='delete_person_collaborator_"+k+"'>clear</span><br>");		
	
	
	console.log("result_person_role[i]" + result_person_role[i]);
	
	if(result_person_role[i] == ("approver")){
		$user_order = $("<span class='square' style='background-color : #EFEFEF; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] ==("collaborator")){
		$user_order = $("<span class='square' style='background-color : yellow; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("consensual")){
		$user_order = $("<span class='square' style='background-color : red; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("Recipient")){
		$user_order = $("<span class='square' style='background-color : green; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("circular")){
		$user_order = $("<span class='square' style='background-color : white; '><p class='p_square'>"+k+"</p></div>");
	}
	
	//?????? ?????????????????? ??????  
	var $user_name_label = $("<label>"+result_person_array_name[i]+"</label>");  
	
	$user_info_div.append($user_order);
	//$user_info_div.append($user_img);
	$user_info_div.append($user_name_label);
	$user_info_div.append($user_delete);
	
	$process_list_area.append($user_info_div);
	
	
	$("#delete_person_collaborator_"+k).click(function(){
		k = k - 1;
		console.log("k??? ??? " + k);
		$(this).parent().remove();
		
		result_person_array_name.splice(k,1);
		result_person_array_id.splice(k,1);
		result_person_role.splice(k,1);
		
		console.log("?????? ??? :" + result_person_array_name);
		console.log("?????? ????????? :" + result_person_array_id);
		console.log("?????? ????????? :" + result_person_role);
		
		 if(result_person_array_name.length == 0){
				$process_list_area.html('');
				$('#process_list_area').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
			}
	}); 
	}
});

/* ????????? ??????      */
$('#btn_consensual_person').click(function(){

	$process_list_area.html("");



 approver_person_array = (document.getElementsByClassName("list_click"));
 
 for( var q = 0; q <approver_person_array.length; q ++){
	 result_person_array_id.push(approver_person_array[q].id);
	 result_person_array_name.push(approver_person_array[q].innerText);
	 result_person_role.push("consensual");
	 
	 console.log(result_person_array_id[q]);
	 console.log(result_person_array_name[q]);
 }

 /* ??????..  */
for(var i =0 ; i < result_person_array_name.length; i++){
	
	var k = i + 1;
		
	// ????????? ?????? ??????
	var $user_img = $("<span class='profile_img'><img class='profile' src='#' ></span>");
	// ???????????? ?????????????????? ???????????? div  
	var $user_info_div = $("<span class='process_user_list_process' id='user_info_div'>");
	//?????? ?????? ???????????? ????????? 
	var $user_order = $("<span class='square'><p class='p_square'>"+k+"</p></div>");
	// x ??????
	var $user_delete = $("<span class='material-icons md-16 md-dark icon_clear' id='delete_person_"+k+"'>clear</span><br>");		
	
	console.log("result_person_role[i]" + result_person_role[i]);
	
	if(result_person_role[i] == ("approver")){
		$user_order = $("<span class='square' style='background-color : #EFEFEF; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] ==("collaborator")){
		$user_order = $("<span class='square' style='background-color : yellow; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("consensual")){
		$user_order = $("<span class='square' style='background-color : red; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("Recipient")){
		$user_order = $("<span class='square' style='background-color : green; '><p class='p_square'>"+k+"</p></div>");
	}else if(result_person_role[i] == ("circular")){
		$user_order = $("<span class='square' style='background-color : white; '><p class='p_square'>"+k+"</p></div>");
	}
	
	//?????? ?????????????????? ?????? 
	var $user_name_label = $("<label>"+result_person_array_name[i]+"</label>");  
	
	$user_info_div.append($user_order);
	//$user_info_div.append($user_img);
	$user_info_div.append($user_name_label);
	$user_info_div.append($user_delete);
	
	$process_list_area.append($user_info_div);
	
	$("#delete_person_"+k).click(function(){
		k = k - 1;
		console.log("k??? ??? " + k);
		$(this).parent().remove();
		
		result_person_array_name.splice(k,1);
		result_person_array_id.splice(k,1);
		result_person_role.splice(k,1);
		
		console.log("????????? ????????? :" + result_person_array_name);
		console.log("????????? ????????? :" + result_person_array_id);
		console.log("????????? ????????? :" + result_person_role);
		
		 if(result_person_array_name.length == 0){
				$process_list_area.html('');
				$('#process_list_area').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
			}
	});
	} 

});



// ????????? ??????
var selected_users_name_person = new Array();
var result_name_person = new Array();
// ????????? id
var selected_users_id_person = new Array();
var result_id_person = new Array();
// ????????? ????????? ??????
var selected_users_role_person = new Array();


/* ????????? ??????     */
$('#btn_Recipient_person').click(function(){
	var $Recipient_area_list = $('#Recipient_area_list');
	$Recipient_area_list.html('');
 	
	
	
 	approver_person_array = (document.getElementsByClassName("list_click"));
 	
	 for( var q = 0; q <approver_person_array.length; q++){
		 selected_users_id_person.push(approver_person_array[q].id);
		 selected_users_name_person.push(approver_person_array[q].innerText);
		 selected_users_role_person.push("Recipient");
		 
	 }
	 
	 $.each(selected_users_name_person,function(i,value){
		    if(result_name_person.indexOf(value) == -1 ) result_name_person.push(value);
		});
	 $.each(selected_users_id_person,function(i,value){
		    if(result_id_person.indexOf(value) == -1 ) result_id_person.push(value);
		});
	

	 
	 
	 
	 for(var l = 0 ; l < result_name_person.length; l++){
			
		 //????????? ??????   
			var $br = $("<br>");
			// ???????????? ?????????????????? ???????????? div     
			var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
			//?????? ?????????????????? ??????  
			var $user_name_label = $("<label class='internal_user_name_label'>"+result_name_person[l]+"</label>");  
			// ?????? ?????? x  
			var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_"+l+"'>clear</span>");
	 	
			if(selected_users_role_person[l] == "Recipient"){
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
			}
			
		
	
			$("#delete_"+l).click(function(){
				l = l - 1;
				console.log("i??? ??? " + l);
				$(this).parent().remove();
				
				result_name_person.splice(l,1);
				result_id_person.splice(l,1);
				selected_users_role_person.splice(l,1);
				
				console.log("????????? ????????? :" + result_name_person);
    			console.log("????????? ????????? :" + result_id_person);
    			console.log("????????? ????????? :" + selected_users_role_person);
    			
    			 if(result_name_person.length == 0){
    					$Recipient_area_list.html('');
    					$('#Recipient_area_list').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
    				}
			}); 
			
			}
	
});


//????????? ??????
var circular_selected_users_name_person = new Array();
var circular_result_name_person = new Array();
//????????? id
var circular_selected_users_id_person = new Array();
var circular_result_id_person = new Array();
//????????? ????????? ??????
var circular_selected_users_role_person = new Array();

/* ????????? ??????     */
$('#btn_circular_person').click(function(){
	var $circular_area_list = $('#circular_area_list');
	$circular_area_list.html('');
 	
	
	
 	approver_person_array = (document.getElementsByClassName("list_click"));
 	
	 for( var q = 0; q <approver_person_array.length; q++){
		 circular_selected_users_id_person.push(approver_person_array[q].id);
		 circular_selected_users_name_person.push(approver_person_array[q].innerText);
		 circular_selected_users_role_person.push("circular");
		 
	 }
	 
	 $.each(circular_selected_users_name_person,function(i,value){
		    if(circular_result_name_person.indexOf(value) == -1 ) circular_result_name_person.push(value);
		});
	 $.each(circular_selected_users_id_person,function(i,value){
		    if(circular_result_id_person.indexOf(value) == -1 ) circular_result_id_person.push(value);
		});
	
	 
	 
	 
	 for(var l = 0 ; l < circular_result_name_person.length; l++){
			
		 //????????? ??????   
			var $br = $("<br>");
			// ???????????? ?????????????????? ???????????? div     
			var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
			//?????? ?????????????????? ??????  
			var $user_name_label = $("<label class='internal_user_name_label'>"+circular_result_name_person[l]+"</label>");  
			// ?????? ?????? x  
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
		
			
			/* ????????? ?????? */
			$("#delete_circular_"+l).click(function(){
				l = l - 1;
				console.log("i??? ??? " + l);
				$(this).parent().remove();
				
				circular_result_name_person.splice(l,1);
				circular_result_id_person.splice(l,1);
				circular_selected_users_role_person.splice(l,1);
				
				console.log("????????? ????????? :" + circular_result_name_person);
    			console.log("????????? ????????? :" + circular_result_id_person);
    			console.log("????????? ????????? :" + circular_selected_users_role_person);
    			
    			 if(circular_result_name_person.length == 0){
    					$circular_area_list.html('');
    					$('#circular_area_list').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
    				}
			});
			
			}

});


/* span????????? ????????? ?????? */	
$('.list_area_dept_info_process').click(function(){
	$(this).nextUntil(".list_area_dept_info_process").slideToggle();
	});

/* ??????????????? ????????? ???????????? ????????? */
$('.list_area_dept_info_user_process').click(function(){
	//???????????? ????????? ??????????????? 
	$(this).toggleClass("list_click");
	
});

	/* ?????? ?????? ajax ??????,??????, ??????,  ??????        */
	$('#btn_process_search').click(function(){
		
		
		var search = $('#process_search').val();
		
		if(search ==""){

			$('#list_area_process').css('display','block');
			$('#list_area_process_search').css('display','none');
		}else{
			$.ajax({
    			type:"POST",
    			url : "search",
    			data : {search:search},
    			dataType :"json",
    			success:function(data){
    				
    				$('#list_area_process').css('display','none');
    				$('#list_area_process_search').css('display','block');
    				console.log(data[0].user_name);
    				
    				$('#list_area_process_search').html('');
    				
    				
    				var $div_class_list_area = $("#list_area_process_search");
					var $div_2 = $("<div>");
				
    				
    				$.each(data,function(index,value){
    			
    					var $div_1 = $("<div class='list_area_dept_info_user_process' style='display:block;' id="+value.user_id+" name="+value.user_name+"><label class='user_name'>"+value.user_name+"</label></div>");
    					var $label = $("<label class='user_name'>"+value.user_name+"</label></div>");
    					
    				
    					$div_class_list_area.append($div_1);
    					
    					
    					
    					
    				});
    				
    				/* ????????? ?????? ??????   */
    				$('.list_area_dept_info_user_process').click(function(){
    					
    					console.log("?????????.");
    					
    					var border = $(this).css("border");
    		    		
    		    		if( border == '1px solid rgb(218, 226, 234)' ){  			
    		    			$(this).addClass("list_click");
    		    	
    		    		}else{
    		    			$(this).css('border','1px solid #dae2ea');	
    		    			$(this).addClass("list_click");
    		    		}
    					
    				});

    				
    		    	$('#process_search').val("");
    			}
    			
    		});
		
		}
		
	});	
	
	/* ?????? ???????????? ??????????????? ??????????????? ?????????
	?????????,?????????,????????? ???????????? ??????
	var result_person_array_id = new Array();	//id
	var result_person_array_name = new Array();	//name
	var result_person_role = new Array();		//??????

	// ????????? ?????? ??????????????? ??????
	var result_name_person = new Array();
	// ????????? id ??????????????? ??????
	var result_id_person = new Array();
	// ????????? ????????? ?????? 
	var selected_users_role_person = new Array();
	
	*/
	
	/* ?????? ????????? ?????? ??? ????????? ??? */
	$('#modal_process_confirm').click(function(){
		
		console.log("?????? ????????? :" + result_name_person);
		console.log("????????? :" + result_id_person);
		console.log("????????? :" + selected_users_role_person);
		
		console.log("?????? ????????? :" + circular_result_name_person);
		console.log("?????????:" + circular_result_id_person);
		console.log("????????? :" + circular_selected_users_role_person);
		
		
		var $process_man = $("#process_man");
		
		$process_man.html("");
		
		for(var i =0 ; i < result_person_array_name.length; i++){
			
			var k = i + 1;
				
			// ????????? ?????? ??????
			var $user_img = $("<span class='profile_img'><img class='profile' src='#' ></span>");
			// ???????????? ?????????????????? ???????????? div    
			var $user_info_div = $("<span class='process_user_list_process' id='user_info_div'>");
			//?????? ?????? ???????????? ????????? 
			var $user_order = $("<span class='square'><p class='p_square'>"+k+"</p>");
			
			console.log("result_person_role[i]" + result_person_role[i]);
			
			if(result_person_role[i] == ("approver")){
				$user_order = $("<span class='square' style='background-color : #EFEFEF; '><p class='p_square'>"+k+"</p></div>");
			}else if(result_person_role[i] ==("collaborator")){
				$user_order = $("<span class='square' style='background-color : yellow; '><p class='p_square'>"+k+"</p></div>");
			}else if(result_person_role[i] == ("consensual")){
				$user_order = $("<span class='square' style='background-color : red; '><p class='p_square'>"+k+"</p></div>");
			}else if(result_person_role[i] == ("Recipient")){
				$user_order = $("<span class='square' style='background-color : green; '><p class='p_square'>"+k+"</p></div>");
			}else if(result_person_role[i] == ("circular")){
				$user_order = $("<span class='square' style='background-color : white; '><p class='p_square'>"+k+"</p></div>");
			}
			
			//?????? ?????????????????? ??????
			var $user_name_label = $("<label>"+result_person_array_name[i]+"</label><br>");  
			
			$user_info_div.append($user_order);
			//$user_info_div.append($user_img);
			$user_info_div.append($user_name_label);
		
			
			
			$process_man.append($user_info_div);
			
			
		}
		
		//write ????????? ????????? ????????? ??????
		var $internal_receiver_area = $('#internal_receiver_area');
		
		$internal_receiver_area.html("");
		
		console.log("result_name_person" + result_name_person);
		console.log("result_name_person.length" + result_name_person.length);
		
		 for(var l = 0 ; l < result_name_person.length; l++){
				
			 //????????? ??????   
				var $br = $("<br>");
				// ???????????? ?????????????????? ???????????? div     
				var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
				//?????? ?????????????????? ??????  
				var $user_name_label = $("<label class='internal_user_name_label'>"+result_name_person[l]+"</label>");  
				// ?????? ?????? x  
				var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_"+l+"'>clear</span>");
		 	
			
					if((l % 3) == 0){
						$user_info_div.append($br);
						$user_info_div.append($user_name_label);
		    			$user_info_div.append($user_delete);
		    			
		    			
		    			$internal_receiver_area.append($user_info_div);
		    			
					}else{
						$user_info_div.append($user_name_label);
		    			$user_info_div.append($user_delete);
		    			
		    			
		    			$internal_receiver_area.append($user_info_div);
					
				}
				
			
		
				$("#delete_"+l).click(function(){
					l = l - 1;
					console.log("i??? ??? " + l);
					$(this).parent().remove();
					
					result_name_person.splice(l,1);
					result_id_person.splice(l,1);
					selected_users_role_person.splice(l,1);
					
					
	    			
	    			 if(result_name_person.length == 0){
	    					$internal_receiver_area.html('');
	    					$('#internal_receiver_area').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
	    				}
				}); 
				
				}
		
		
		 
		
			
			
		//write ????????? ????????? ????????? ??????
		var $circular_reader_area = $('#circular_reader_area');
		
		$circular_reader_area.html("");
		
		 for(var m = 0 ; m < circular_result_name_person.length; m++){
				
			 //????????? ??????   
				var $br = $("<br>");
				// ???????????? ?????????????????? ???????????? div     
				var $user_info_div = $("<div class='internal_user_list' id='user_info_div'>");
				//?????? ?????????????????? ??????  
				var $user_name_label = $("<label class='internal_user_name_label'>"+circular_result_name_person[m]+"</label>");  
				// ?????? ?????? x  
				var $user_delete = $("<span class='material-icons md-12 md-light icon_clear' id='delete_circular_reader'>clear</span>");
		 	
				
					if((m % 3) == 0){
						$user_info_div.append($br);
						$user_info_div.append($user_name_label);
		    			$user_info_div.append($user_delete);
		    			
		    			
		    			$circular_reader_area.append($user_info_div);
		    			
					}else{
						$user_info_div.append($user_name_label);
		    			$user_info_div.append($user_delete);
		    			
		    			
		    			$circular_reader_area.append($user_info_div);
					}
				
				
			
		
				$("#delete_circular_reader").click(function(){
					m = m - 1;
					console.log("i??? ??? " + m);
					$(this).parent().remove();
					
					circular_result_name_person.splice(m,1);
					circular_result_id_person.splice(m,1);
					circular_selected_users_role_person.splice(m,1);
					
				
	    			 if(result_name_person.length == 0){
	    					$circular_reader_area.html('');
	    					$('#circular_reader_area').append(" <p class='p_text_recipient'  style='font-size: 12px;'>????????? ???????????? ????????????.</p>");
	    				}
				}); 
				
				}
		
		
				modal_process.style.display = "none";
		
		
		 
		/* $.ajax({
			type:"POST",
			url : "modalProcessToController",
			data : {result_person_array_id :result_person_array_id,
				result_person_array_name :result_person_array_name ,
				result_person_role :result_person_role ,
				result_name_person : result_name_person ,
				result_id_person :result_id_person ,
				selected_users_role_person :selected_users_role_person ,
				circular_result_name_person :circular_result_name_person ,
				circular_result_id_person :circular_result_id_person ,
				circular_selected_users_role_person :circular_selected_users_role_person 
					},
			dataType :"json",
			success:function(data){
				
			
			}
		}); */
		
		
	});
</script>
 <!--    
</body>
</html> -->
