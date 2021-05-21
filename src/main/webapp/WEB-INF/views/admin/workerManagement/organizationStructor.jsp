<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
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
.menu_category_left {
	background-color: white;
	width: 250px;
	height: 750px;
	float: left;
	border: 2px solid #dbdbdb;
} 

.menu_right {
	width: 830px;
	height: 750px;
	margin-left: 20px;
	background-color: white;
	float: left;
	border: 2px solid #dbdbdb;
}

span {
	
}

.card-header {
	padding: 14px;
	font-sixe: 27px;
}

.header-cate {
	font-size: 25px;
	float: left;
	/* margin-right: 100px; */
	font-weight: 550;
	color: #4A4A4A;
}

.fa-plus-square:before {
	color: black;
	font-size: 2em;
	
	
}

.cloumn-right {
	padding-left: 20px;
}

.header-div {
	border-bottom: 2px solid #dbdbdb;
	height: 58px;
}

.organization-boxes-list {
	padding: 20px 30px;
}

.organization-list {
	max-width: calc(100% - 15px + 15px);
	max-height: 100%;
	width: calc(100% - 15px + 15px);
}

.org-table {
	padding: 15px 25px;
}

.add-org {
	border: 2px solid #dbdbdb;
	width: 200px;
	height: 33px;
}



.company-name {
	border: 2px solid #dbdbdb;
	width: 210px;
	height: 40px;
	border-radius: 5px;
	border: 2px solid #9BA7AB;
	background: #F8FDFF;
}

#append_table {
	padding: 5px 25px;
}

#org-part {
	border: 1px solid #9BA7AB;
	width: 178px;
	height: 40px;
	color: black;
	float: left;
	border-radius: 5px;
	padding: 5px;
	background: #F8FDFF;
}

.append_row {
	border: none;
}

.select-box {
	color: black;
	width: 50px;
	heighy: 20px;
}

.selected-working_type {
	text-align: left;
	/* padding-left: 30px;
	padding-top: 15px */
}

.selectList_page {
	width: 110px;
	height: 35px;
	border: 2px solid #dbdbdb;
	float: left;
	margin-right: 550px;
	border-radius: 5px;
}

.header {
	width: 828px;
	height: 56px;
	border-bottom: 2px solid #dbdbdb;
	padding: 10px 25px;
}

#icons {
	color: black;
}

#trash-icons {
	color: black;
	font-size: 1.8em;
}

.add_delete_buttons {
	/* text-align: left; */
	/* 	padding:20px; */
	
}

.worker-div {
	padding: 50px 50px;
}

.worker-table {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
	border-radius: 15px;
	border: 2px solid #dbdbdb;
}

.worker-table td, .worker-table th {
	border: 2px solid #dbdbdb;
	padding: 8px;
	color: black;
	text-align: center;
	border: 2px solid #dbdbdb;
}

.addWorker-btn {
	border: none;
	width: 20px;
	/* margin-right: 15px; */
}

.deleteWorker-btn {
	border: none;
	height: 20px;
}

.modal-bg {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 100vh;
	background-color: rgba(0, 0, 0, 0.5);
	display: flex;
	justify-content: center;
	align-items: center;
	visibility: hidden; /*connot see absoultely nothing*/
	opacity: 0; /*hide everything basically*/
	transition: visibility 0s, opacity 0.5s;
}

.bg-active {
	visibility: visible;
	opacity: 1;
}

.modal {
	background-color: white;
	color: black;
	/* height: 70%; */
	/* width: 44%; */
	/* display:flex; */
	justify-content: space-aroudn; /*  center is so weird */
	/* align-items:center; */
	flex-direction: colum;
	border-radius: 10px;
}

#modal-header-search {
	position: fixed;
	top: 0;
	left: 0;
	width: 40%;
	height: 70vh;
	align-items: center;
	/* visibility: hidden; /*connot see absoultely nothing*/ */
	opacity: 0; /*hide everything basically*/
	transition: visibility 0s, opacity 0.5s;
	display: none;
	margin-left: 1100px;
	margin-top: 150px;
	/* border:2px solid #dbdbdb;
	background:red; */
	color: black;
}

.modal-search {
	background-color: white;
	    height: 220px;
	width: 230px;
	/* display:flex; */
	justify-content: space-aroudn; /*  center is so weird */
	/* align-items:center; */
	flex-direction: colum;
	border-radius: 10px;
	border: 4px solid tan;
}

p {
	color: black;
}

.add-person {
	float: left;
	font-weight: bold;
	font-size: 25px;
	margin-right: 415px;
}

.delete-modal {
	border: none;
	background-color: white;
}

.fa-times-circle {
	color: black;
	font-size: 30px;
}

.modal-header {
	padding: 15px 25px;
	border-bottom: 1px solid #dbdbdb;
}

button {
	background-color: white;
}

.subject-md {
	float: left;
	font-size: 15px;
	text-align: center;
	flex-basis: 0;
}

.input-md {
	
}

.worker-name {
	margin-bottom: 10px;
}

.input {
	width: 400px;
	height: 39px;
	box-shadow: inset 0 1px 2px rgba(10, 10, 10, 0.1);
	border-radius: 5px;
	cursor: pointer;
	padding: 7px;
}

.control-select {
	width: 400px;
	height: 39px;
	box-shadow: inset 0 1px 2px rgba(10, 10, 10, 0.1);
	border-radius: 5px;
	cursor: pointer;
}

.label-required {
	color: black;
}

.filed-normal {
	float: left;
	flex-basis: 0;
	flex-grow: 1;
	margin-right: 1.5rem;
	text-align: right;
	margin-top: 10px;
}

.field-horizontal {
	margin-bottom: 10px;
}

.colum {
	padding: 30px 60px;
}

.control {
	margin-left: 100px;
}

#modal-btn {
    color: white;
    background-color: #008CBA;
    border-radius: 5px;
    width: 70px;
    height: 40px;
    font-size: 18px;
    border: none;
    margin-bottom: 25px;
    margin-top: 25px;
}

.right-button {
	margin-left: 490px;
}

.modal-close {
	top: 10px;
	right: 10px;
	cursor: pointer;
}
.minus {
	color: black;
}

.td-icon {
	color: black;
	display: inline-block;
}

.add_worker_td {
	float: left;
}

.td_input {
	float: left;
}

.fa-pencil-alt {
	color: black;
}

.fa-trash-alt {
	color: black;
}

.fa-search:before {
	border: none;
	font-size: 20px;
	color: black;
}

.searchWorker-div {
	float: left;
	/* margin-left: 20px;
	margin-top: 8px; */
}

.modal-search-inner {
	padding: 10px 20px;
}

.modal-horizontal {
	margin-bottom: 10px;
}

.modal-normal-n {
	font-size: 18px;
	margin-bottom: 5px;
}

.modal-normal {
	margin-bottom: 8px;
}

.form-control {
	border: 2px solid #dbdbdb;
	width: 200px;
	height: 40px;
	border-radius: 5px;
}

.data-table {
	
	width: 200px;
	height: 40px;
	border-radius: 5px;
	padding-left: 1px;
}

.btn-save {
	width: 50px;
	height: 20px;
}.btn-box{
	margin-top: -13px;
}.th-css{
	height: 46px;
    display: flex;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 3px solid tan;
    border-radius: 5px;
    font-size: 1.14286rem;
   /*  width: 190px; */
    padding-left: 10px;
}
.save{
	width:25px;
	height:25px;
	float:left;
	/* margin-left:1px; */
	
}
.remove{
	width:25px;
	height:25px;
	
}
.dept_name{
	/* width: px; */
    height: 33px;
   border:none;
    
    
}
.fa-minus-square{
	color:black;
	font-size:2em;
}
.remove{
	border:none;
	margin-top:2px;
}
.save{
	border:none;
}#user_status{
	float:left;
}
/* .append_td{
	border:none !important;
} */
#userCliend_check{
	width:15px;
	height:15px;
}
.popUp_userName{
	height: 28px;
    margin-top: 10px;
}.search_div{
 	float:left;
 	margin-left:100px;
}.submit_btn{
	margin-left: 8px;
	width: 50px;
    height: 30px;
    border-radius: 5px;
    background: #337CF6;
    color: white;
    border: none;
}.search_btn{
width: 50px;
    height: 30px;
    border-radius: 5px;
    background: gold;
    color: white;
    border: none;
}
.submit_div{
	margin-right:5px;
}
.each_div{
	    border: 2px solid black;
    padding: 20px 30px;
    margin-bottom: 30px;
    width: 250px;
    border-radius:5px;
}.worker-table{
	border:none;
}.selectList_tr{
	border:2px solid black;
}
.td_css{
	height: 38px;
    display: flex;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 2px solid tan;
    border-radius: 5px;
    font-size: 1.14286rem;
    width: 165px;
    padding-left: 10px;
    margin-left: 22px;
}.tdtrtr{
	    background: #f2f2f2;
    font-size: 1rem;
    font-weight: lighter;
}
	.worker-trtr:nth-child(even){background-color: #f2f2f2
    }.menu_category_left{
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
    }.menu_right{
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
    }
    #add_input{
    	font-color:yellow;
    }

#werid{
	    border: 2px solid tan;
    border-radius: 5px;
	
}
</style>
<body>

	<jsp:include page="../../common/menubar.jsp"></jsp:include>

	<div class="box">

		<div class="menu_category_left">




			<div class="org-table" id="list-table">

				<!-- 부서추가하는데 -->
				<!-- <form action=""> -->
				<div class="right-btn;" style="margin-bottom: 30px;">
						<header class="card-header">
							<p class="column-header-text">
							<div>
								<span class="header-cate">조직도</span>
							</div>
							</p>

							<!-- icon있는데 ㅜ -->
							<div class=cloumn-right>
							
							</div>
				
					</header>
					
				<div class="btn-box">	
					<button type="submit" class="btn-save" id="btn-save" style="border: none; padding-left: 88px;">
						<i class="far fa-plus-square" id="add-input"></i>
					</button>
				</div>	
				</div>
					<div class="form-group" id="input-append">
						
					</div>
			<!-- 	</form> -->

				<div class="table-data-div">
					<table class="data-table">
						<thead>
							<th class="th-css">Hspring</th>
						</thead>
						
						<tbody class="data-tbody">
							<c:forEach var="dept" items="${deptList}">
								<tr>
									<td class="td_css">
										<span style="color:black;">${dept.dept_name}</span>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>

			</div>

		</div>



		<!-- 오른쪽 페이지 상단바 -->
		<div class="menu_right">

		
		
			<!-- 상단부분 -->
			<div class="header">
				<div class="header-inner-Cdiv">
					<div class="selected-working_type">
						<span class="select-box">
						 <select class="selectList_page">
							 <c:forEach var="emp" items="${empList}">
							 	<option name="${emp.emp_type_id }">${emp.emp_type_name}</option>
							 </c:forEach>
						</select>
						</span>
					</div>
				</div>

				<div class="add_delete_buttons">

					<div class="searchWorker-div"
						style="margin-right: 17px; margin-top: 8px;">
						<button class="searchWorker-btn" style="border: none">
							<a href="#"><i id="search-icons" class="fas fa-search"></i></a>
						</button>
					</div>
					<div class="searchWorker-div" style="margin-right: 21px;">
						<button class="addWorker-btn">
							<a href="#"><i id="icons" class="far fa-plus-square"
								style="margin-top: 5px"></i></a>
						</button>
					</div>
					<div class="searchWorker-div">
						<button class="deleteWorker-btn" onclick="delete_userClientList(this)">
							<a href="#"><i id="trash-icons" class="far fa-trash-alt"
								style="margin-top: 6px"></i></a>
						</button>
					</div>

				</div>



			</div>
			<!-- search modal -->
			<div id="alien">
			<div id="modal-header-search">

				<div class="modal-search">
					<div class="modal-search-inner">
						<section class="modal-search-section">
						<div class="modal-horizontal">
							 <div class="modal-normal">
							 	<label class="modal-normal-n">이름</label>
							 	<div class="modal-body">
							 		<div class="modal-contorl">
							 			<input type="text" id="popUp_userName" class="popUp_userName">
							 		</div>
							 	</div>
							 </div>
						</div>
							<%-- <div class="modal-horizontal">
								<div class="modal-normal">
									<label class="modal-normal-n">권한</label>
								</div>
								<div class="modal-body">
									<div class="modal-control">
										<select class="modal-selector"
											style="width: 150px; height: 30px;">
											<c:forEach var="userClient" items="${userClientList}">
												<option>${userClient.author_id}</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div> --%>
							<div class="modal-horizontal">
								<div class="modal-normal">
									<label class="modal-normal-n">직위/직책</label>
								</div>
								<div class="modal-body">
									<div class="modal-control">
										<select class="modal-selector" id="job_name"
											style="width: 150px; height: 30px;">
											<c:forEach var="job" items="${jobList}"> <!-- 여기는 Model로 controller에서 뿌려주는거 만들어야함 	 -->
													<option name="${job.job_id}">${job.job_name}</option>
												</c:forEach>
										</select>
									</div>
								</div>
							</div>
						
							<div class="search_div">
								<button class="search_btn" id="search_btn" onclick="search_btn(this);">검색</button>
							</div>
							
							<!-- <div class="submit_div">
								<button class="submit_btn" id="submit_btn">저장</button>
							</div>
							 -->
						</section>
					</div>

				</div>

			</div>
			</div>

			<!-- 모달창 제일 크게 감싼 div! -->
			<div class="modal-bg">
				
				<div class="modal">

					<!-- 모달헤더창 -->
					<div class="modal-header">

						<header class="modal-header-card">
							<p class="add-person" style="writing-mode: horizontal-tb;">조직원
								추가</p>
							<span class="modal-close"><i class="far fa-times-circle"></i></span>
						
						</header>
					</div>
					

					<!-- 바디섹션부분 -->
					<section class="modal-card-body">
						<div class="modal-body">
							<div class="colum">
 
 								<!-- 이름 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 이름 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<input type="text" placeholder="이름" class="input" id="user_name" name="user_name">
										</div>
									</div>
								</div>

								<!-- 이메일 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 이메일 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<input type="text" placeholder="이메일" class="input" id="user_email" name="user_email">
										</div>
									</div>
								</div>
								
								<!-- 부서  -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 부서 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<select class="control-select" id="dept_name" name="dept_name">
												<c:forEach var="dept" items="${deptList}"><!-- items 객체명 -->
								                  	<option name="${dept.dept_id}">${dept.dept_name}</option> 
								                </c:forEach>
											</select>
										</div>
									</div>
								</div>
								
								<!-- 직위/직책	 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 직위/직책 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<select class="control-select job_value" id="job_name" name="job_name">
												<c:forEach var="job" items="${jobList}"> <!-- 여기는 Model로 controller에서 뿌려주는거 만들어야함 	 -->
													<option name="${job.job_id}">${job.job_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								
								<!-- 사번 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 사번 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<input type="text" placeholder="사번" class="input" id="user_id" name="user_id">
										</div>
									</div>
								</div>
								
								<!-- 입사일 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required"> 입사일 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<input type="date" placeholder="입사일" class="input" id="user_join_date" name="user_join_date">
										</div>
									</div>
								</div>
								
								<!-- 권한 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required" > 권한 </label>
									</div>
									<div class="field-body">
										<div class="control">
											<select class="control-select" id="author_name" name="author_name">
												<c:forEach var="authority" items="${authorityList}">
													<option name="${authority.author_id}">${authority.author_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
								</div>
								
								<!-- 조직원상태 -->
								<div class="field-horizontal">
									<div class="filed-normal">
										<label class="label-required" id="user_status" name="user_status"> 조직원 상태 </label>
									<div class="field-body">
										<div class="control">
											<select class="control-select" id="emp_type_name" name="emp_type_name">
												
												<c:forEach var="empType" items="${empList}">
													<option name="${empType.emp_type_id}">${empType.emp_type_name}</option>
												</c:forEach>
											</select>
										</div>
									</div>
									</div>
								</div>
							</div>
						</div>
					</section>

					<!-- footer 저장/취소버튼 -->
					<section class="modal-card-footer">
						<div>
							<footer class="card-foot">
								<div class="right-button">
									<button id="modal-btn" type="submit" class="btn-modal-submit">저장</button>
									

								</div>
							</footer>
						</div>
					</section>

				</div>
				</form>
			</div>








			<!-- 하단부분 -->
			<div class="worker-table-div">
				<div class="worker-div">
				
					<table class="worker-table">
						
							<tr class="tdtrtr">
								<th></th>
								<th>이름</th>
								<th>이메일</th>
								<th>권한</th>
							</tr>
							<tbody class="worker-ttbody">
							<c:forEach 	var="userClient" items="${userClientList}"> 
								<tr class="worker-trtr">
									<td><input type="checkbox" id="userCliend_check" name="${userClient.user_id}"></td>
									<td>${userClient.user_name}</td>
									<td>${userClient.user_email}</td>
									<td>${userClient.author_name}</td>
								</tr>
							
							</c:forEach> 
							
						</tbody>
					</table>
				</div>

			</div>

	
		</div>
	</div>
	<script type="text/javascript">
	
	
	
	 var content = 0; 
	 
	$("#btn-save").on("click", function(){
		
	 if(content == 0){ //작동 1번 실행되게 되는 if문 
		 
		 //플러스버튼눌렀을때 append로 나오는 inputbox랑 buttons
		 
		$(".data-tbody").append("<tr><td style='border:none'><input id='werid' type='text' class='dept_name' ></td>"+
		"<td  style='border:none'><button name='save' class='save' onclick='save_btn(this);'><i class='fas fa-plus-square'></i></button></td>"
		+"<td  style='border:none'><button name='remove' class='remove' onclick='remove_btn(this)'><i class='fas fa-minus-square'></i></button></td></tr>")
	
		content = 1;
	
	 }
		});
	
	 
	//insert
	function save_btn(ta){
		
		console.log(ta);
		
		var dept_name = $(ta).parent().siblings().children("input").val();
		
		console.log(dept_name);
		
		
	 	$.ajax({
			type : "POST",
			//페이지의 betterflow 
			url :"${pageContext.request.contextPath}/organizationStructor/addDept",
			data:{dept_name:dept_name},
			dataType:"json",
			success:function(data){
				
				console.log("값보기 : " + dept_name);

				$(".data-tbody").html("");
				
		$.each(data, function(index, value){

			$(".data-tbody").append("<tr><td  class='append_td'><input id='werid' type='text' class='dept_name' name="+value.dept_id+" value="+value.dept_name+" readonly></td>"+
			"<td class='append_td'><button name='save' class='save' ><i class='fas fa-plus-square'></i></button></td>"
			+"<td class='append_td'><button name='remove' class='remove'  onclick='remove_btn(this)'><i class='fas fa-minus-square'></i></button></td></tr>")
				
			});  
		
		
			content = 0;
	
	 	
		}
		
	});
	

	}
	
	function remove_btn(re){
		
		//delete를 할려면 dept_id를 가져와야하는 input에 dept_id를 띄어서 여기서 선택자로 name을 명시해서 가져옴 
		var dept_id = $(re).parent().siblings().children("input").attr("name");
		
		console.log("아아아아");
		console.log(dept_id);
		
		$.ajax({
			
			type:"POST",
			url:"${pageContext.request.contextPath}/organizationStructor/removeDept",
			data:{dept_id:dept_id},
			dataType:"json",
			success:function(data){
				
				$(".data-tbody").html("");
			
				$.each(data, function(index, value){

					$(".data-tbody").append("<tr><td><input id='werid' type='text' class='dept_name' name="+value.dept_id+" value="+value.dept_name+" ></td>"+
					"<td><button name='save' class='save' ><i class='fas fa-plus-square'></i></button></td>"
					+"<td><button name='remove' class='remove'  onclick='remove_btn(this)'><i class='fas fa-minus-square'></i></button></td></tr>")
						
					});  
				
					}
				});
		
		
	}

	</script>

	<script type="text/javascript">
		$("#append_row").on(
				"click",
				function() {
					$("#append_table").append(
							$("<tr>").append(
									$("<td>").append($("#org-part").val())));

				});

		var modalBtn = document.querySelector('#icons'); //아이콘 눌렀을때 	
		var modalBg = document.querySelector('.modal-bg'); //모달창 가장 큰 div	
		var modalClose = document.querySelector('.modal-close'); //이거는 span태그에있는 modal-close(cursor:pointer)

		var modalSearch = document.querySelector('#search-icons');
		//	var modalHeaderSearch = document.querySelector('.modal-header-search');
		var modalHeaderSearch = document.getElementById("modal-header-search");
		var modalDiv = document.querySelector('#alien');
		
		//아이콘 눌렀을때 modalBg떠서 
		modalBtn.addEventListener('click', function() {
			modalBg.classList.add('bg-active');

		});

		modalClose.addEventListener('click', function() {
			modalBg.classList.remove('bg-active');

		});

		//search이모티콘을 눌렀을때 
		 modalSearch.addEventListener('click', function() {
			//여기에 보이는 모달창 만들기 

			console.log("asdasdasdas");
			//	modalHeaderSearch.classList.add('bg-active');
			modalHeaderSearch.style.display = "block";
			
		

		}); 
		
	 	 /*  modalDiv.addEventListener('click', function(){
			
			 console.log("넌 너와???ㅜㅜㅜ");
			 
			 modalHeaderSearch.style.display = "none";
			 
			 
			 
		 }); */
		 
		 
		  window.onclick = function(event){
			  
			  if(event.target == modalHeaderSearch){
				  modalHeaderSearch.style.display = "none";
			  }
			  
		  }
		
	
		
		
		
		
		/* modalSearch.addEventListener('click', function(){
			console.log("추어ㅜ어ㅜ어ㅜ어");
			modalHeaderSearch.style.display = "none";
		});
		 */
		 
		/*  $(document).mouseup(function(e){
			
			 var container = $("#modal-header-search");
			 
			 if(!container.is(e.taget)&&container.has(e.target).length === 0)
				 
				 container.css("display","none");
			 
		 });
		 */
	</script>
	<script>
	
	
	$("#modal-btn").on("click", function(){
		
	
		//이름 
		var user_name = $('input[name=user_name]').val();
		console.log(user_name);
		
		//이메일
		var user_email = $('input[name=user_email]').val();
		console.log(user_email);
		
		//부서
		var dept_name = $("#dept_name option:selected").attr("name");
		console.log(dept_name);
		
		//직위/직책
		var job_name = $(".job_value option:selected").attr("name");
		console.log(job_name);
		console.log( $("#job_name option:selected").text());
		
		//사번
		var user_id = $("input[name=user_id]").val();
		console.log(user_id);
		
		//입사일
		var user_join_date = $("input[name='user_join_date']").val();
		/* var user_join_date = $("input[name='user_join_date']").attr("name"); */
		console.log(user_join_date);
		
		//권한
		/* var author_name = $("#author_name option:selected").text(); */
		var author_id = $("#author_name option:selected").attr("name");
		console.log(author_id);
		
		//조직원상태 	
		/* var emp_type_name = $("#emp_type_name option:selected").text(); */
		var emp_type_name = $("#emp_type_name option:selected").attr("name");
		console.log(emp_type_name);
		
		
  	 
		$.ajax({
			type:"POST",
			url:"insertUserClient" ,
			data:{user_name:user_name,user_email:user_email,dept_id:dept_name,job_id:job_name,user_id:user_id,user_join_date:user_join_date,author_id:author_id, emp_type_id:emp_type_name},
			dataType:"json",
			success:function(data){
					
			
/* 				
				$(".worker-ttbody").html(""); */
			 	
				

					//여기다가 데이터 띄어줄것 
					 $(".worker-ttbody").append("<tr><td><input type='checkbox' name="+user_id+"></td><td>"+user_name+"</td><td>"+user_email+"</td><td>"+author_id+"</td></tr>"); 
						
		
			}
		}); 

	});
	
	//list delete버튼 	 
	function delete_userClientList(de){
		
		//user_id로 값 빼와서 맞는 유저id값으로 맞춰서 삭제하기  
		//근데 이게 1개만 잡히네 껄껄 
	/* 	var user_id = $("input[type='checkbox']:checked").attr("name");
		console.log(user_id);*/
		
		//배열로 여러개 다중으로 checkbok되게하기 
		
			var check = []; 
		
		 $("input[type='checkbox']:checked").each(function(){
			 var user_id = $(this).attr("name");
			 
			 console.log(user_id);
			 
			 check.push(user_id);
			 
			 $.ajax({
				 type:"POST",
				 url:"deleteUserClientList",
				 data:{user_id:user_id},
				 dataType:"json",
				 success:function(data){

					 $(".worker-ttbody").html("");

					 
						$.each(data, function(index, value){
					
									 
					 $(".worker-ttbody").append("<tr><td><input type='checkbox' name="+value.user_id+"></td><td>"+value.user_name+"</td><td>"+value.user_email+"</td><td>"+value.author_name+"</td></tr>"); 
					
						});
					 
				 }
				 
			 });
			 
		 })
		
		
	}
	
	</script>
	<script type="text/javascript">
		
	function search_btn(se){
		
		//이름 
		var user_name = $("#popUp_userName").val();
		console.log(user_name);
	
		
		//직위/직책   //#은 id고유번호 말하는거 
		var job_id= $("#job_name option:selected").attr("name");
		console.log(job_id);
		
		
		$.ajax({
			type:"POST",
			url:"searchUserClient",
			data:{user_name:user_name, job_id:job_id},
			dataType:"json",
			success:function(data){
				
				console.log(data);
				
				
				$(".worker-table").html("");
				
				$.each(data, function(index, value){
					
					$(".worker-table").append("<div class='each_div'><tr><td>"+value.user_name+"</td><hr style='border:none;'></tr><tr><td>"+value.user_email+"</td></tr></div>")
					
				});
				
				
			}
			
		});
		 
	}
		
	</script>
	<script type="text/javascript">
	
	//select change 될떄 화면 페이지 값이 바뀌는거 
	
	$("select[class=selectList_page]").change(function(){
		
		 var emp_type_id = $(".selectList_page option:selected").attr("name");
			console.log(emp_type_id);
			
			
		$.ajax({
			type:"POST", 
			url:"selectListPage",
			data:{emp_type_id:emp_type_id},
			dataType:"json",
			success:function(data){
				
				console.log(data);
				
				
				 $(".worker-ttbody").html(""); 
					
					/* $(".worker-table").append("<tr><th><td>이름</td><td>이메일</td><td>권한</td></th></tr>");			 */
				
					$.each(data, function(index, value){
						
						$(".worker-ttbody").append("<tr class='selectList_tr'><td></td><td>"+value.user_name+"</td><td>"+value.user_email+"</td><td>"+value.author_name+"</td></tr>")
						
						
						
				});
				
				
				
				
			}
			
		});	
			
	});
	
	
	
		
	</script>
	
	<script type="text/javascript">
		
	/* 	$("for")
				.submit(
						function(e) {
							e.preventDefault(); //고정으로 띄어주는거 이거안하면 데이터 보여졌다가 사라짐 
							
							console.log("안녕");
							
							var name = $("input[name='name']").val();

							//data값 띄어오는거 	
							$(".data-table tbody")
									.append(
											"<tr data-name='"+name+"'><td>"
													+ name
													+ "</td><td><button class='btn btn-danger btn-lg btn-delete' type='button' float='left'><i class='fas fa-trash-alt'></i></button>&nbsp;&nbsp;<button class='btn btn-danger btn-lg btn-edit' type='button'><i class='fas fa-pencil-alt'></i></button></td></tr>");

							$("iput[name='']").val("");
							
							//값 잘해 	
							//$("#input-tag").val("");
							//$("#input-tag").remove("");
							
						//	$("#input-append").append("<input type='text' name='name' class='form-control' value='' id='input-tag'>");	
						$(".add-input").html("<input type='text' name='name' class='form-control' value='' id='input-tag'>"); //계속
							
						}); */

		
	/* 	//삭제 	
		$('body').on('click', '.btn-delete', function() {
			$(this).parents('tr').remove();

		});
		
		//수정
		$('body')
				.on('click','.btn-edit',function() {
					
							var name = $(this).parents('tr').attr('data-name');

							//find'td'' 인덱스 0번 부터 ?
							$(this).parents('tr').find('td:eq(0)').html("<input name='edit_text' value='"+name+"'>");
							//이거 update할수있는 저장하는 버튼 
							$(this).parents('tr').find('td:eq(1)').prepend("<button type='button' class='btn btn-update'><i class='fas fa-save' style='color:black'></i></button>");
							//할떄 숨겨줌 
							$(this).hide();

						});
		//저장하고 
		$('body').on('click','.btn-update',function() {
					var name = $(this).parents('tr').find(
							"input[name='edit_text']").val();

					$(this).parents('tr').find('td:eq(0)').text(name);

					$(this).parents('tr').attr('data-name', name);

				}); */
	</script>
</body>
</html>