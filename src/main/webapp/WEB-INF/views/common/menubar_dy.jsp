<!DOCTYPE html>
<html lang="UTF-8">
<%@ page language="java" contentType="text/html; charset=UTF-8"     
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sidebar Menu with sub-Menu</title>
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
</head>
<style>
.main-page{
    width: 1440px;
    height: 1024px;

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
    height: 48px;
    background: white;
    float: left;
    border-top: 1px solid #F6F6F6;
    border-bottom: 3px solid #F6F6F6;
    padding: 15px 0 0 0;
}
.sidebar{
    position: fixed;
    width: 250px;
    height: 100%;
    left: 0;
    background: #1b1b1b;
    overflow: scroll; 
    /* <!--sidebar 스크롤--> */
    margin: 0;
    padding: 0;
    user-select: none;
    box-sizing: border-box;
    color: white;
    font-family: 'Nanum Gothic', sans-serif;
    
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
.com_name{
color: black;
    float: left;
    text-align: left;
    padding-left: 290px;
    font-weight: 600;
}
.box{
    width: 1100px;
    height: 750px;
    background: skyblue;
    margin-top: 40px;
    margin-left: 295px;
    float: left;
}
.user-id-inner{
	text-align: right;
    padding-right: 5px;
    padding-top: 9px;
    font-size: 1.2em;
    /* color: gold; */
    margin-right: 33px;
}
#header-icons{
	padding-left:7px;
	cursor:pointer; 
	color:black; 
	font-size:19px;
}
#header-icons-login{
	padding-left:0;
	cursor:pointer; 
	color:black; 
	font-size:19px;
}
#header-icons:hover ,#header-icons-login:hover{
    color: darkgoldenrod;
}
.nav *{
    padding: 0;
    user-select: none;
    box-sizing: border-box;
}
.sidebar *{
	margin: 0;
    padding: 0 8px;
    user-select: none;
    box-sizing: border-box;
}
</style>
<body>
    
    <div class="nav">
	    <div class="nav-inner">
	    	
	    	<div class="user-account">
	    		<div class="user-id">
	    			<div class="user-id-inner">
	    				<div class="com_name">
	    					<span>HsPring</span>
	    				</div>
	    				<a href="#" id="header-icons" class="alarm"><i class="far fa-comments" style="color:gold; font-size:28px; font-weight:bold;"></i></a>
	    				<a href="#" id="header-icons" class="messenger"><i class="far fa-bell" style="color:gold; font-size:28px; font-weight:bold;"></i></a>
	    					<c:if test="${login != null}">
	    						<a onclick="logoutUser();" id="header-icons" class="username">${login.user_name}님 환영합니다</a>
	    					</c:if>
	    					<c:if test="${login == null}"> 
	    						<a id="header-icons" class="username">비회원은 제한된 기능을 이용합니다</a>
	    						<a href="${pageContext.request.contextPath}" id="header-icons-login" class="username">로그인</a>
	    					</c:if> 
	    				
	    			</div>
	    		</div>
	    	</div>
    	</div>
    </div> 
        
    <!-- <div class="side-bar"></div> -->
    <nav class="sidebar">
        <div class="text">betterFlow</div>
        <ul>
            <li>
                <!--btn : button-->
                <i class="fa fa-user" aria-hidden="true"></i>
                <a href="#" class="admin-btn">관리자</a>
                <ul class="admin-show">
                    <li><a class="workerManagement-btn">인사관리</a>
                        <ul class="workerManagement-sub">
                            <li><a href="${pageContext.request.contextPath}/workerManagement/workingSetting">인사설정</a></li>
                            <li><a href="${pageContext.request.contextPath}/workerManagement/organizationStructor">조직도/조직원관리</a></li>
                            <li><a href="${pageContext.request.contextPath}/workerManagement/personnelDepartment">인사정보관리</a></li>
                            <li><a href="${pageContext.request.contextPath}/vacationManagement/vacationType">휴가종류관리</a></li>
                            <li><a href="${pageContext.request.contextPath}/vacationManagement/vacationHistoryUserlist">휴가내역관리</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="workingHours-btn">근태관리</a>
                        <ul class="workingHours-sub">
                            <li><a href="${pageContext.request.contextPath}">출퇴근반영기준</a></li>
                            <li><a href="${pageContext.request.contextPath}">출퇴근관리기록부</a></li>
                        </ul>
                    </li>
                    <li><a href="#" class="paperPayment-btn">전자결재관리</a>
                        <ul class="paperPayment-sub">
                            <li><a href="${pageContext.request.contextPath}/admin/recommend">공유문서등록</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/manage">공유문서관리</a></li>
                            <%-- <li><a href="${pageContext.request.contextPath}">기안서통합관리</a></li>
                            <li><a href="${pageContext.request.contextPath}/admin/process">공유프로세스관리</a></li> --%>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}" class="">증명서발급관리</a></li>
                </ul>
            </li>
            <li>
                <i class="fas fa-tags"></i>
                <a href="#" class="label-btn">라벨관리</a>
                <ul class="label-show">
                    
                    <li><i class="far fa-plus-square"></i>
                    	<a href="${pageContext.request.contextPath}">라벨추가</a></li>
                    <li><a href="${pageContext.request.contextPath}">라벨관리</a></li>
                </ul>
            </li> 
            <li>
                <!-- 전자결재 -->
                <i class="far fa-copy"></i>
                <a href="#" class="paperwork-btn">전자결재</a>
                <ul class="paperwork-show">
                    <li><a href="${pageContext.request.contextPath}/document/main" class="paperForm-btn">문서양식</a>
                        <ul class="paperForm-sub">
                            <li><a href="${pageContext.request.contextPath}">지출결의서</a></li>
                            <li><a href="${pageContext.request.contextPath}">휴가신청서</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/document/mydocument">내 결제관리</a></li>
                 <%--sss    <li><a href="${pageContext.request.contextPath}">내 프로세스관리</a></li> --%>
                </ul>
            </li> 
            <li>
                <i class="fas fa-sitemap"></i>
                <a href="#" class="sharingInfo-btn">공유정보</a>
                <ul class="sharingInfo-show">
                    <li><a href="${pageContext.request.contextPath}/sharingInfo/noticeMain">전사공지</a></li>
                    <li><a href="${pageContext.request.contextPath}">전사규정</a></li>
                    <li><a href="${pageContext.request.contextPath}">전사자료</a></li>
                    <li><a href="${pageContext.request.contextPath}">사내소식</a></li>
                    <li><a href="${pageContext.request.contextPath}">일정관리</a></li>
                    <li><a href="${pageContext.request.contextPath}">익명게시판</a></li>
                    
                </ul>
            </li> 
            <li>
                <i class="far fa-address-card"></i>
                <a href="#" class="myInfo-btn">나의정보</a>
                <ul class="myInfo-show">
                    <li><a href="${pageContext.request.contextPath}/myinfo/personinfo">나의 인사정보</a></li>
                    <li><a href="${pageContext.request.contextPath}">출퇴근기록부</a></li>
                    <li><a href="${pageContext.request.contextPath}/vacationManagement/vacationTypeManagement">나의휴가정보</a></li>
                    <li><a href="${pageContext.request.contextPath}">증명서발급</a></li>

                </ul>
            </li> 
        </ul>
    </nav>



   



    <script>
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
	
        
     	function logoutUser(){
     		var msg = confirm("정말 로그아웃 하시겠습니까?");
     		if(msg){
     			location.replace("${pageContext.request.contextPath}/member/logout");
     		} else {
     			return;
     		}
     	}
    </script>
</body>
</html>
