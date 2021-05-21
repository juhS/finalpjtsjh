<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
.paper_approval_div{
	background-color: white;
	width: 541px;
	height: 318px;
	float: left;
	border: 2px solid #dbdbdb;
	margin-bottom: 20px;
	margin-top: 20px;
} 

.menu_right {
	margin-top: 20px;
	width: 541px;
	height: 318px;
	margin-left: 556px;
	background-color: white;
	border: 2px solid #dbdbdb;
	margin-bottom: 20px;
}

.main_down_r {
	width: 541px;
	height: 318px;
	background-color: white;
	float: left;
	margin-bottom: 20px;
}

.box_div {
	width: 541px;
	height: 318px;
	background-color: white;
	margin-left: 556px;
	margin-bottom: 20px;
}

.box_header_inner {
	background-color: lightgrey;
	width: 1100px;
	height: 60px;
	border-radius:8px;
}
.com_name{
	color:black;
	font-size:20px;	
}
.company_name{
	text-align:left;
	padding:20px 20px;	
}.header_sub{
	color:black;
}.header_sub_div{
	text-align:left;
	padding:15px 15px;	
	border:2px solid #dbdbdb;
}
.append_tr{
	padding:0 20px;
	border-bottom:1px solid #dbdbdb;
}td{
	color:black;
}table{
	border-collapse:seperate;
	border-spacing: 20px 20px;
}
</style>
<body>

	<jsp:include page="../../common/menubar.jsp"></jsp:include>

	<div class="box">
		
		<!-- 헤더부분 -->
		<div class="box_header">
			<div class="box_header_inner">
				<div class="company_name">
					<span class="com_name">HsPring</span>
				</div>
			</div>
		</div>

		<!-- 결재 예정문서 -->
		<div class="paper_approval_div">
		
			
			 <div class="paper_approval">
			 	<div class="header_sub_div">
			 		<span class="header_sub">결재 예정 문서</span>
			 	</div>
			 	
			 	<div class="append_td_div">
			 		<table class="append_table">
			 			<tbody class="append_tbody">
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				<tr class="append_tr">
			 					<td>구매 요청서 - 박재서 20201030</td>
			 				</tr>
			 				
			 			</tbody>
			 		</table>
			 	</div>
			 	
			 	
			 </div>
		</div>

		<div class="menu_right">
			<div class="paper_approval">
				<div class="header_sub_div">
					<span class="header_sub">공지	사항</span>
				</div>
			</div>
		</div>

		<div class="main_down_r">
			<div class="paper_approval">
				<div class="header_sub_div">
					<span class="header_sub">나의휴가 </span>
				</div>
			</div>
		</div>

		<div class="box_div">
			<div class="paper_approval">
				<div class="header_sub_div">
					<span class="header_sub">이번주 일정</span>
				</div>
			</div>
		</div>
	</div>

</body>
</html>















