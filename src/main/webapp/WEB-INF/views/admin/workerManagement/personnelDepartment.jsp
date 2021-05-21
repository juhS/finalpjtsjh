<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL태그 으아아아!!!!	 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

.card-header {
	padding: 14px;
	font-sixe: 27px;
}

.header-cate {
	font-size: 25px;
	float: left;
	margin-right: 100px;
	font-weight: 550;
	color: #4A4A4A;
}

.company-name {
	border: 2px solid #dbdbdb;
	width: 210px;
	height: 40px;
	border-radius: 5px;
	border: 2px solid #9BA7AB;
	background: #F8FDFF;
	padding: 5px;
}

.add_worker_td {
	border: 1px solid #9BA7AB;
	width: 178px;
	height: 40px;
	color: black;
	float: left;
	border-radius: 5px;
	padding: 9px;
	background: #F8FDFF;
}

.org-table {
	padding: 15px 25px;
}

#append_table {
	padding: 5px 29px;
}

.table-data {
	text-align: center;
	border: 2px solid #dbdbdb;
	width: 700px;
}

.table-list-inner {
	/* text-align: center; */
	padding: 80px 65px;
}

.table-data td, .table-data th {
	
	padding: 8px;
	color: black;
	text-align: center;
	
}

#top {
	/* background-color: aliceblue; */
	width: 100%;
	height: 852px;
}
.dept_css{
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
}
.font_css{
	font-size:1rem;
	color:#585453;
}.company_th{
	height: 46px;
    display: flex;
    align-items: center;
    margin-bottom: 5px;
    background-color: #f8faff;
    border: 3px solid tan;
    border-radius: 5px;
    font-size: 1.14286rem;
    width: 190px;
    padding-left: 10px;
}.pfpf{
    font-size: 1.2rem;
    color: #4a4a4a;
    }
    .menu_category_left{
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
    }.menu_right{
    border-radius: 5px;
    border: 2.8px solid #dbdbdb;
    }
    .tb_tr:nth-child(even){background-color: #f2f2f2
    }
    .yyyy{
    	    background: #f2f2f2;
    font-size: 1rem;
    font-weight: lighter;
    }.table_th_css{
   	font-size: 1rem;
    font-weight: semi-bold;
    }

}
</style>
<body>

	<div id="top">
		<jsp:include page="../../common/menubar.jsp"></jsp:include>
		<div class="background_box">

			<div class="box">


				<div class="menu_category_left">

					<div class="header-div" style="border-bottom: 2px solid #dbdbdb;">
						<header class="card-header">
							<p class="column-header-text">
							<div class="header-cate">
								<p class="pfpf">조직도</p>
							</div>
							</p>

							<!-- icon있는데 ㅜ -->
							<div class=cloumn-right>
								<button type="button" id="append_row" style="border: none">

								</button>
							</div>
					</div>
					</header>


					<div class="org-table" id="list-table">
						<!-- 동적 테이블 -->
						<!-- 회사이름 -->

						 <div class="company_th">
						 	<span>Hspring</span>
						 </div>
						<!-- 조직도 테이블 -->
						<table >
						
							<tbody id="append_tbody">

								<c:forEach var="dept" items="${deptList}">
									<tr>
										<td class="dept_css"><span class="font_css">${dept.dept_name}</span></td>
									</tr>
								</c:forEach>


							</tbody>

						</table>

					</div>

				</div>

				<div class="menu_right">

					<div class="table-list-div">
						<div class="table-list-inner">
							<table class="table-data">
								

									<tr class="yyyy">
										<!-- <th>번호</th> -->
										<th class="table_th_css">이름</th>
										<th class="table_th_css">이메일</th>
										<th class="table_th_css">권한</th>
										<th class="table_th_css">부서</th>
										<th class="table_th_css">수정</th>
									</tr>
									
									<tbody class="update_tb">
									<c:forEach var="userClient" items="${userClientList}">

										<tr class="tb_tr">
											<input type="hidden" id="${userClient.user_id}">
											<td >${userClient.user_name}</td>
											<td >${userClient.user_email}</td>
											<td >${userClient.author_name}</td>
											<td >${userClient.dept_name}</td>
											<td ><button class="edit-btn" >수정</button></td>
										</tr>
									</c:forEach>





								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script>
		
		 //update
		  $(function(){
			  
			  $(".edit-btn").on("click", function(){
				  
				  
				 var user_id = $(this).parent().parent().find("input").attr("id");

				 console.log(user_id);
				
				  
					$(this).parents('tr').find('td:eq(1)').html("<input name='edit_text'>");
					$(this).parents('tr').find('td:eq(4)').prepend("<button type='button' class='btn-update' ><i class='fas fa-save' style='color:black'></i></button>");
					$(this).hide(); 
		
			 
			 $(".btn-update").on("click", function(){
				 
				 
				 var user_email = $(this).parent().parent().find("input[name=edit_text]").val();
				 
				 console.log(user_email);
				 
				  
				 
				 $.ajax({
					 type:"POST",
					 url:"editEmail",
					 data:{user_id:user_id, user_email:user_email},
					 dataType:"json",
					 success:function(data){
						 
						 
						 
 
						 
						 $(".update_tb").html("");
						 
					
								 
								 $.each(data, function(index, value){
									 
				    				
									 $(".update_tb").change("<tr><td>"+user_name+"</td><td>"+user_email+"</td><td>"+author_name+"</td><td>"+dept_name+"</td><td><i class='fas fa-save' style='color:black'></i></td></tr>");
				    				  
									 
				    			  })
						 
						 
						 
						 
					 }
					 
				 });
				 
			  });
				 
				 
			 })
			 
		 }); 
		 
		 
	</script>

</body>
</html>















