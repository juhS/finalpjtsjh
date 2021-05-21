<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- as -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
   integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
   crossorigin="anonymous">
</head>
<style>
.working-form-setting-section {
   margin-bottom: 20px;
}

.working-card-section {
   margin-bottom: 20px;
}

.card-header {
   padding: 20px 30px 20px;
   border-bottom: 1px solid #dbdbdb;
}

span {
   color: black;
}

.working-boxes {
   width: 1100px;
	height: 330px;
   background: white;
   border: 2px solid #dbdbdb;
   /* padding: 20px 30px; */
   margin-bottom: 20px;
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
}

.working-hours-section {
   padding: 20px 30px;
}

.card-section-item {
   margin-bottom: 20px;
}

.card-section-item {
   margin-bottom: 10px;
}

div {
   color: black;
}

p {
   color: black;
  
}

.cate-title {
   maring-bottom: 10px;
}

.title-name {
   float: left;
   margin-right: 10px;
   p
}

.checked-boxes-items {
   margin-right: 3px;
   float: left;
}

.checked-days-items {
   margin-right: 10px;
   float: left;
}

.boxes {
   float: left;
   margin-right: 5px;
   margin-top: -2px;
}

.input-boxes {
   width: 40px;
   height: 20px;
   border: 2px solid #dbdbdb;
    border-radius: 5px;
}

.span-title {
   font-weight: bold;
   font-size: large;
   margin-bottom: 15px;
}

.card-body {
   /* border-bottom: 1px solid #dbdbdb; */
   padding: 20px 30px;
}

.card-body1 {
   border-bottom: 1px solid #dbdbdb;
   padding: 20px 30px;
   width: 1100px;
   height: 250px;
   margin-bottom: 50px;
}

.check-radio {
   margin-bottom: 10px;
}

.date-fiexed {
   float: left;
}

.date-span {
   float: left;
}

.date-div {
   float: right;
}

.month-div {
   float: left;
}

.month {
   float: left;
}

.days-div {
   float: right;
}

.workingList-setting {
   margin-bottom: 20px;
   background: white;
   border: 2px solid #dbdbdb;
   width: 1100px;
   height: 500px;
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
}

.workingList-setting-title {
   padding: 20px 30px 20px;
}

.input-box {
   float: left;
   width: 850px;
   height: 35px;
}

.fa-plus {
   width: 35px;
   height: 35px;
}

.add-column {
   margin-bottom: 20px;
}

.fa-plus-square:before {
   content: "\f0fe";
   color: #F9AD1B;
   font-size: 3em;
}

.org-position {
   color: black;
   float: left;
}



.input-box {
  /*  color: black; */
}

#add-position {
   color: black;
   width: 850px;
   height: 35px;
   float: left;
   /*    border: 2px solid #bdbdbd; */
   border-radius: 5px;
}

.sub-header-section {
   margin-bottom: 20px;
}

.sub-header-text {
   margin-bottom: 20px;
}

.working-position-setting {
   padding: 20px 5px;
   border: 2px solid #dbdbdb;
}

#add-working-type {
   color: black;
   width: 850px;
   height: 35px;
   float: left;
   border-radius: 5px;
   padding: 2px 3px;
}

.working-type-table {
   float: left;
}

.input-boxes {
   color: black;
   width: 38px;
   height: 25px;
}

.select {
   color: black;
   width: 38px;
   height: 33px;
}

.delete-position {
   color: black;
}

.delete-working-type {
   color: black;
}

.fa-minus-square:before {
   color: black;
   font-size: 2em;
}

button {
   border: none;
    background: #F9AD1B;
    color: white;
    height: 38px;
    border-radius: 5px;
    width: 37px;
    margin-left: 3px;
   
}

.fas fa-minus-square {
   font-size: em;
}

.submit-btn {
   color: white;
   background-color: #F9AD1B;
   border-radius: 5px;
   width: 70px;
   height: 40px;
   font-size: 18px;
   border: none;
}

.working-type-setting {
   border: 2px solid #dbdbdb;
   padding: 20px 30px 20px;
   width: 1100px;
   height: 300px;
}

.section-titleName {
   margin-bottom: 10px;
}

.checked {
   width: 20px;
   height: 20px;
   border: 2px solid #dbdbdb;
   margin-right: 3px;
}

.date-decided {
   float: left;
   margin-right: 6px;
}

.select-bx {
   width: 38px;
   height: 25px;
}

.submit-sending-div {
   margin-top: -50px;
   text-align: right;
   padding-right: 39px;
   padding-top: 15px;
}

#job_name {
   color: black;
   width: 850px;
   height: 35px;
   float: left;
   border-radius: 5px;
   padding: 2px 3px;
   border:none;
}

job_name_css {
   color: black;
   width: 850px;
   height: 35px;
   float: left;
   border-radius: 5px;
   padding: 2px 3px;
}
#emp_type_name{
	color: black;
   width: 850px;
   height: 35px;
   float: left;
   border-radius: 5px;
   padding: 2px 3px;
   border:2px solid tan;
}
.talble_css{
 	border:none !impotant;
 }
td {

  background-color: #f8faff;
    border: 2px solid tan;
  /*   width: 850px;  */
    height: 35px;
    border-radius: 5px;
    padding: 2px 3px;
} 

.button_div {
   float: right;
   padding-left: 80ppx;
   padding-right: 143;
   margin-top: -3px;
}
.addPosition_btn{
   background:none !important;
}
div.deptList_controller{
    overflow: scroll; 
    width:1400px;
    height:400px;
} 
.td_div_2{
   border:none !important;
}
.span1{
	     color: #585453;
    font-size: 14px;
    padding: 10px;
}
.n_div{
	border:none;
.job_name{
	border:none;
	
}.fa-minus-square:before {
    color :#F9AD1B;
    font-size: 3em;
 }
 .remove{
 	color:white;
 }
 .job_name{
 	border:none;
 }.span2{
 	color: #585453;
    font-size: 14px;
    padding: 10px;
 }#btn-color{
 	background-color: #F9AD1B;
 }
</style>
<body>

   <jsp:include page="../../common/menubar.jsp"></jsp:include>

   <div class="box">

      <!-- 방식은 post로  -->
     <!--  <form action="workingSetting" class="working-form-setting-section"
         method="post"> -->

         <!-- 인사기준 설정 -->
         <div class="working-boxes">
            <div class="working-card-section">
               <div class="card-header">
                  <span class="span-title">인사기준설정</span>
               </div>

               <div class="card-body">
                  <section class="card-section-item">
                     <strong><div class="header-text">근로 기준 설정</div></strong> <br>
                     <p>근로시간을 설정하여 휴가일수 등에 근로 기준으로 사용합니다.</p>
                  </section>
                <!--   <br> -->
                <!--   <div class="cate-title">
                     <div class="title-name">
                        <span>주간 근무일 : </span>
                    </div>
  checked-box
                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked">
                           <input type="checkbox" class="checked" name="mon" id="mon">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>
                     요일
                     <div class="checked-days-items">
                        <span>월요일</span>
                     </div>

                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked">
                           <input type="checkbox" class="checked" name="tue" id="tue">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>화요일</span>
                     </div>

                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked" >
                           <input type="checkbox" class="checked" name="wed" id="wed">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>수요일</span>
                     </div>

                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked" >
                           <input type="checkbox" class="checked" name="thu" id="thu">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>목요일</span>
                     </div>

                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked" >
                           <input type="checkbox" class="checked" name="fri" id="fir">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>금요일</span>
                     </div>

                     <div class="checked-boxes-items"> 
                        <div class="checked-boxes" checked="checked" >
                           <input type="checkbox" class="checked" name="sat" id="sat">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>토요일</span>
                     </div>

                     <div class="checked-boxes-items">
                        <div class="checked-boxes" checked="checked">
                           <input type="checkbox" class="checked"  name="sun" id="sun">
                           <div class="checkbox-inner">
                              <span class="check"></span>
                           </div>
                        </div>
                     </div>

                     <div class="checked-days-items">
                        <span>일요일</span>
                     </div>
                     
                     	 <div class="submit-sending-div">
                    	<div><button type="submit" class="submit-btn" onclick="checkedSave(this)">저장</button></div>
                     	</div>
                  </div> -->
                  
                  
                  
                  <div class="cate-title3">
                     <div class="title-name">
                        <span>1일 기준 근로시간 : </span>
                     </div>
                     <div class="boxes">
                        <input type="text" class="input-boxes" name="aday" >
                     </div>
                     <span> 시간</span>
                  </div>
                  <br>
                  <div class="cate-title3">
                     <div class="title-name">
                        <span>주당 근로 시간 : </span>
                     </div>
                     <div class="boxes">
                        <input type="text" class="input-boxes" name="aweek">
                     </div>
                     <span> 시간</span>
                  </div>
                  <br>
                  <div class="cate-title3">
                     <div class="title-name">
                        <span>주당 연장 근로 시간 : </span>
                     </div>
                     <div class="boxes">
                        <input type="text" class="input-boxes" name="extrawork">
                     </div>
                     <span> 시간</span>
                  </div>
               </div>

            </div>
            

            <div class="submit-sending-div">
               <button type="submit" class="submit-btn" onclick="checkSave(this)">저장</button>
            </div>
         </div>


  <!--     </form> -->

      <!-- 여기서부터 인사항목 설정 -->
      <div class="workingList-setting">
         <div class="workingList-setting-title">
            <span class="span-title">인사 항목 설정</span>
         </div>


         <div class="card-body">

            <div class="card-section-item">
               <section calss="card-section-item">
                  <div class="section-titleName">직위/직책 항목 설정</div>
                  <p>조직 내에서 사용하는 직위/직책을 자유롭게 입력하실 수 있습니다. 겸직인 경우 겸직인 직위/직책을 만드셔서
                     이용하실 수 있습니다.</p>
                  <p>(예)관리 이사 및 팀장</p>
               </section>
            </div>

            <div class="contents-card">
                         
                    <table >
                       <tbody>
                        <tr class="talble_css">
                        	<td class="talble_css1"><input  type="text" id="job_name" name="job_name"></td>
                        	<td class="talble_css"  style="border:none"> <button type="submit" class="addPosition_btn" id="addPosition_btn" onclick="save_btn(this)"> <i class="fas fa-plus-square"></i></button></td>
                        </tr>
                       	</tbody>
                     </table>
                        
                        
                        
            <!-- overflow:controll for table data -->
            <div class="scroll" style="overflow:scroll; width: 1045px; height:290px; border:none;" >
               
				<!--  -->
               <table class="org-position" id="org-position">
                  <tbody class="add-position-tbody">
				<!-- 	<tr> -->
               <c:forEach var="job" items="${jobList}"><!-- items 객체명 -->
                  <tr class="deptList_div">
                  	<td id="tdtd" style="width:850px; borer:none;">
                 		<span class="span1">${job.job_name}</span>
                 		
                  	</td>
                  	<td style="border:none;">
                  		<button id="btn-color" name="remove" class="remove" onclick="remove_btn(this)" value="삭제">삭제</button>
                  	</td>
                  </tr>
               </c:forEach>
                  </tbody>
               </table>
               
               <!-- insert할때 나오는 값 / 반복문 돌리는곳-->
          
            </div>
         </div>
         </div>
      </div>
      <!-- 고용형태 -->


      <div class="working-type-setting">

         <section class="sub-header-section">

            <div class="span-title">고용 형태 항목 설정</div>
            <p>조직 내에서 사용하는 고용 형태를 자유롭게 입력하실 수 있습니다.</p>
         </section>

         <div class="working-type-card">
         	
                        <!-- 고용형태/항목 insert, button-->
                        <input type="text" id="emp_type_name" name="emp_type_name"> <!-- 고용형태명 -->
                        <!-- 버튼    -->
                        <div class="button_div">
                           <p class="control">
                              <button type="submit" class="employType_btn" id="employType_btn" >
                                 <i class="fas fa-plus-square"></i>
                              </button>
                           </p>
                        </div>
                        
         		<div class="scroll2" style="overflow:auto; width:1045; height:130px; border:none;">
         		
         			<table class="org-empType" id="org-empType">
         			
         				<tbody class="add-empType-tbody">
			 					 <c:forEach var="emp_type" items="${empList}">
			 						<tr>
			 							<td style="width:850px;">
			 								<span class="span2">${emp_type.emp_type_name}</span>
			 							</td>
			 						</tr>
			 					</c:forEach>
						 
						</tbody>       			
         			</table>
         			
         		</div>
 



         </div>
      </div>
   </div>


   <script type="text/javascript">
   
   	$("#addPosition_btn").on("click", function(){
   		
   	 
		$(".add-position-tbody").append("<tr><td class='give_div' ><input type='text' class='job_name'></td>"+
	
		"<td class='n_div'><button id='btn-color' name='remove' class='remove' onclick='remove_btn(this)' value='삭제'>삭제</button></td></tr>")
		
   	});
   	
   	//insert 기능 
   	function save_btn(ta){
   		
   		console.log(ta);
   		
   		var job_name = $(ta).parent().siblings().children("input").val();
   		
   		console.log(job_name);
   		
   	 $.ajax({
         type : "POST", //ajax는 무조건 Post 
         url : "addJobPosition",  //postMapping
         data : {
            job_name : job_name //deptList List인 이유는 viewPage에 DB에있는 data다 긁어오기위해서 controller에서 return가져옴 
         },
         dataType : "json",
         success : function(data) { //deptList

            console.log(data);
			
        	$(".add-position-tbody").html(""); //이거 없으면 데이터 중복되어서 나와서 tbody.html();만들어줘야함 
       	
         	

			//반복문 
            $.each(data, function(index, value) {
               
           	 //append는 선택된 요소의 마지막에 새로운 HTML요소나 컨텐츠를 추가한다 
             	$(".add-position-tbody").append("<tr><td class='give_div' style='width:800px;'><input style='border:none;' type='text' class='job_name' name="+value.job_id+" value="+value.job_name+"></td>"+
			"<td class='n_div'><button name='remove' class='remove' onclick='remove_btn(this)' value='삭제'>삭제</button></td></tr>")
            
            });

         }
      
      });
   		
   		
   	}
	function remove_btn(re){
   		
   		console.log(re);
   		
   		var job_id = $(re).parent().siblings().children("input").attr("name");
   		
   		console.log(job_id);
   		
   	  $.ajax({
          type : "POST",
          url : "removeJobPosition", 
          data : {
             job_id : job_id 
          },
          dataType : "json",
          success : function(data) { 

             console.log("성공해서 나오는 배열");
          
          	$(".add-position-tbody").html("");
          
          
             $.each(data, function(index, value) {
                 
            		$(".add-position-tbody").append("<tr><td style='width:800px;' class='give_div'><input  id='pikabo' type='text' class='job_name' name="+value.job_id+" value="+value.job_name+" style='border:none;'></td>"+
            				
            				"<td class='n_div'><button name='remove' class='remove' onclick='remove_btn(this)' value='삭제'>삭제</button></td></tr>")
            		            
              //tr에 ;
              
              });
          
          }
    });         
   		
   	}
   	
   	
   	
        
      
      //고용 형태 항목 설정
      $("#employType_btn").on("click", function(){
    	 
    	  var emp_type_name = $('#emp_type_name').val();  //Value
    	  
    	  console.log("고용형태나오나요" + emp_type_name);
    	  
    	  $.ajax({
    		  
    		  type:"POST",
    		  url: "addEmpType",
    		  data : {emp_type_name : emp_type_name},  //이거 data Vo랑 똑같이 맞춰줘야함 	
    		  dataType:"json",
    		  success : function(data){
    			  
    			  console.log(data);
    			  
    			  $(".add-empType-tbody").html("");
    			  
    			  //반복문
    			  $.each(data, function(index, value){
    				  
    					 //append는 선택된 요소의 마지막에 새로운 HTML요소나 컨텐츠를 추가한다 
                      $("#org-empType").append($("<tr>").append($("<td style='width:800px;'>").append(value.emp_type_name), //prop는 attr과같이 속성값을 가져오는거 	
                            $("<a>").append($("<button id='remove_list'  name="+value.emp_type_id+">").prop("href", "#").addClass("remove_list").append("삭제"))));
                      
    				  
    			  })
    			  
    			  
    			  
    		  }
    		  
    	  });
    	  
      });
    
      //고용형태항목삭제 
      $("#org-empType").on("click", ".remove_list", function() {
              
    	  var emp_type_id = $(this).attr("name");
    	  
    	  console.log("고용형태 삭제할 id : " + emp_type_id);
    	  
    	  $.ajax({
    		 
    		  type:"POST",
    		  url:"removeEmpType",
    		  data:{emp_type_id : emp_type_id},
    		  dataType:"json",
    		  success:function(data){
    			  
    			  
    			  console.log("여기도 나오나?");
    			  
    			  $(".add-empType-tbody").html("");
    			  
    			  $.each(data, function(index, value){
    				  
    				  $("#org-empType").append($("<tr>").append($("<td style='width:800px;'>").append(value.emp_type_name),
                              $("<a>").append($("<button id='remove_list' name="+value.emp_type_id+">").prop("href", "#").addClass("remove_list").append("삭제"))));
                        											//button name???
    				  
    			  })
    			  
    			  
    			  
    		  }
    	  });
    	  
            });
      
      

       
    </script>
    <script type="text/javascript">
    
    	function checkSave(ch){
    			
    			var aday = $('input[name=aday]').val();
    			console.log(aday);
    			var aweek = $('input[name=aweek]').val();
    			console.log(aweek);
    			var extrawork = $('input[name=extrawork]').val();
    			console.log(extrawork);
    			
    	
    			/* var check = [];
    			
    		
    			$("input[type='checkbox']:checked").each(function(){
    				
    				var  working_id = $(this).attr("name");
    				
    				check.push(working_id);
    				
    				console.log("배열로 나오니 : " + working_id);
    				

    			}) */
    			/* console.log("체크 : " + check); */
    			
    			
				$.ajax({
				
					type:"POST",
					url:"insertWorkingStandard",
					data:{aday:aday, aweek:aweek, extrawork:extrawork},
				 	dataType:"json",
					success:function(data){
						
						
					}
				
				})	
				
    		
        			    			
    		
    		}
    	
    
    </script>
    
   <!--   <script type="text/javascript">
    
    	function checkedSave(ch){
    			
    		
    	
    			var check = [];
    			
    		
    			$("input[type='checkbox']:checked").each(function(){
    				
    				var  working_id = $(this).attr("name");
    				
    				check.push(working_id);
    				
    				console.log("배열로 나오니 : " + working_id);
    				

    			}) 
    			
    			 console.log("체크 : " + check); 
    			
    			
				$.ajax({
				
					type:"POST",
					url:"insertWorkingdayStandard",
					data:{working_id:check},
				 	dataType:"json",
					success:function(data){
						
						
					}
				
				})	
				
    		
        			    			
    		
    		}
    	
    
    </script>

 -->
</body>
</html>










