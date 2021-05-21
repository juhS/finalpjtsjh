<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>공유정보 - 전사공지(none)</title>
</head>

<style> 
/* 전체 */

body .box{background:white;}
.box a, .box th, .box *{
	color:black;
	text-decoration: none;
}
/* [왼쪽영역] */
.notice_left{ 	
    width: 530px; 	
    height: 750px;  	
    float: left; 
    border: 1px solid lightgray;
    border-radius: 5px;
}  
/* [오른쪽영역] */
.notice_right{ 	
    width: 550px; 	
    height: 750px; 	 	
    margin-left: 20px;  	
    float: left; 
    border: 1px solid lightgray;
    border-radius: 5px;
}

/* 폰트크기 */
.fs13{font-size:13px;}
.fs26{font-size:26px;}
/* 폰트위치 */
.tc {text-align:center; }
/* 폰트굵기 */
.fw{font-weight:bold;}
/* border-radius */
.br5{ border-radius: 5px;}
.t_line {border-right:solid 1px lightgray;}
.lt_line {border-bottom:solid 1px lightgray;}
/* padding */
.p2{padding:2%;}
.pl78{padding-left: 78%;}
.pl80{padding-left: 80%;}
.pb2{padding-bottom:2%;}
/* margin */
.mrg2{margin:2%;}
.mrgt625{margin-top:625px;}
.mrgt2{margin-top:2%;}
.mrgt5{margin-top:5%;}
.mrgl4{margin-left:4px;}
.mrgl2{margin-left: 2%;}
.mrgl9{margin-left: 9%;}
.mrgl40{ margin-left: 40%;}
.mrgl50{ margin-left: 50%;}
.mrgl82{margin-left:82%;}
.mgr3{margin-right: 3.5%;}
.mgr11{margin-right: 11%;}
.mrgr2{margin-right:2%;}
.mrgr4{margin-right:4%;}
.mrgr69{margin-right: 69%;}
.mrgr70{margin-right:70%;}
.mrgr78{margin-right: 78%;}
/* float */
.fl{float:left;}
.userdetail{margin-bottom:1.5%;}
/* width */
.w27 {width:27px; }
.w31{width:31px;}
.w10 {width:10%; }
.w15 {width:15%; }
.w60 {width:60%; }
.w91{width:91%;}
.w235{width:235px;}
.w400{width:400px;}
/* height */
.h27{height:27px;}
.h33{height:33px;}

/* 기타 */
.notice_left>ul li{list-style:none;}
.notice_right>ul li{list-style:none;}
.bgbtn{
    background:none; 
    border :1px solid lightgray;
    outline:none; 
}
.none{
	border: none;
    background: none;
    outline:none; 
}
/* 검색영역 */
.noticeSearchBtn{outline:none;}
.bdr{ 
    border: 1px solid lightgray;
    border-radius: 8px;
    background: none;
}
.icon{
    border-radius: 8px;
    background: none;
}
/* 검색조건띄우기 */
#searchModal{display:none;}
.smstyle{
    outline:none; 
    border :1px solid lightgray;
    background: white;
    position: absolute;
}
.mgrtl10{
    margin-top:-10px;
    margin-left:10px;
}
.searchTBtn{
    margin-left: 73%;
    padding: 1%;
}
/* notice 목록 */
.notice {width: 530px; margin:0; padding:0;}

.title {
	height: 50px;
	line-height: 50px;
	background: lightgray;
	font-weight: bold;
}
.list {
	height: 40px;
	line-height: 40px;
}
/* 페이징영역 */
.pg:hover, .pg:focus{
	border:1px solid #F9AD1B;
	background-color:#F9AD1B;
}
.pagination>ul{
    list-style:none;
	float:left;
	display:inline;
}
.pagination>ul li{ float: left;}
.pgf{margin-left:28%;}
.pg{
	padding:5px;
	margin-right:3px;
	width:24px;
	color:#000;
	font:bold 12px tahoma;
	text-align:center;
	text-decoration:none; 
    border: 1px solid lightgray;
    margin-top:5%
}

/* [오른쪽화면] */
/* 에디터 강제설정 */
#editor{height: 625px !important;}
.CodeMirror-wrap{min-height: 600px !important;}
/* 에디터 강제설정 끝 */
.write{
    background-color: white;
    padding: 2px;
    border-radius: 5px;
    color:black;
}
.r_center{
	border-bottom: 1px solid lightgray;
	height: 522px;
}
.spanContent{
	margin-top:0.8%;
	font-size:14px;
}
.spanContentIcon{
	float: left;
    margin-right: 86%;
}

.comment{
	resize: none;
	width:100%;
	padding:1%;
}
/* 파일박스 이미지 변경 */
.fileboxA{
	position:absolute; 
	overflow:hidden;
}
.fileboxB{
	position: absolute; 
	right: 0; 
	top: 0; 
	filter: alpha(opacity = 0); 
	cursor: pointer;
	border:none;
	outline:none;
	
}
.fileboxC{
	margin:3px 0 3px 0; 
	vertical-align:bottom;
}

</style>


<body style="color:black;">
	<jsp:include page="../../common/menubar.jsp"/>
	 <div class="box">
        <div class="notice_left">  
           <!-- notice search / write -->
            <div>
                <div class="p2">	
                    <input type="search" class="bdr h27 w235" name="" placeholder="검색어를 입력하세요">
                    <button class="bdr h27 w27 bgbtn" id="noticeSearchBtn" onclick="noticeSearchBtn();">▼</button>
                    <a href="#" class="mrgl40 icon">
                        <img src="<c:url value='/resources/icon/icon_write.png'/>">
                    </a>
                </div>
            </div>

            <!-- 검색조건 띄우기 -->
            <div id="searchModal" class="br5 smstyle w400 mgrtl10">
                <div>
                    <div><label class="fl fs13 mgr3">제목 + 내용</label></div>
                    <div><input type="search" name="serchText" class="fs13 bgbtn br5"></div>
                </div>
                <div>
                    <div><label class="fl fs13 mgr11">작성자</label></div>
                    <div>
                        <input type="search" name="serchFirstUser" class="bgbtn br5">
                        <input type="button" class="fs13 br5 bgbtn" value="찾기">
                    </div>
                </div>
                <div>
                    <div><label class="fl fs13 mgr11">작성일</label></div>
                    <div><input type="date" name="date" class="fs13 bgbtn br5"><span> ~ </span><input type="date" name="date" class="fs13 bgbtn br5"></div>
                </div>
                <div>
                    <div class="searchTBtn">
                        <button type="submit"class="fs13 br5 bgbtn">검색</button>
                        <button type="reset" class="fs13 br5 bgbtn">리셋</button>
                    </div>
                </div>
            </div>	

            <!---notice title--->
            <ul class="notice">
                <li class="fl tc w10 title t_line ">번호</li>
                <li class="fl tc w60 title t_line">제목</li>
                <li class="fl tc w15 title t_line">작성자</li>
                <li class="fl tc w15 title t_line">작성일</li>
            </ul>
            <!--- notice list --->
            <ul class="notice nClick">
                <li class="fl tc w100 list t_line lt_line">게시글이 없습니다.</li>
            </ul>
        </div>


        <div class="notice_right" id="rightThree">
	        <ul class="notice nClick">
	            <li class="tc mrgt50">게시글이 없습니다.</li>
	        </ul>
	        <div>
			    <button class="bgbtn mrgl36 mrgt2 br5" onclick="">
			    	<img src="<c:url value='/resources/icon/icon_write.png'/>">
			    	<span>게시글 작성하기</span>
		    	</button>	    	
	        </div>
        </div> 	
    </div>
    
<!--왼쪽 검색조건 클릭하면 동작 -->        
<script>
    var content = document.getElementById("searchModal");
    var btn = true;
    function noticeSearchBtn(){    
        if(btn==false){
            content.style.display ="none";
            btn=true;
        }else{
           	btn = false;
            content.style.display = "block";
        }
    }       
</script>    

<!--왼쪽 페이징 클릭하면 색바꾸기 -->
<script>
    var nClick = document.getElementsByClassName('nClick');

    for (var i = 0; i < nClick.length; i++) {
        nClick[i].addEventListener('click', function(){
            for (var j = 0; j < nClick.length; j++) {
                nClick[j].style.color = "black";
            }
            this.style.color = "#F9AD1B";
        })
    }
</script> 
	
	
</body>
</html>