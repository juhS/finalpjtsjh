<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>라벨관리 - 라벨문서관리</title>
<link href="<%= request.getContextPath() %>/resources/css/label/label.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../../common/menubar.jsp"/>
	<div class="box">
    	 <nav class="label_left paperBar br5">
            <div class="bb_line mrgt10 pb10 pl10 fwb">문서양식</div>
            <ul class="paperBarB hN">
                <li class="hover pl10">
                    <a class="CompanyNameBtn">betterflow</a>
                    <ul class="paperCategory paperBarB">
                        <li><a class="personnelSub cSub mrgl17">인사</a>
                            <ul class="personnelShow">
                                <li><a class="cShow mrgl30">휴가신청서</a></li>
                            </ul>
                        </li>
                        <li><a class="financialSub cSub mrgl17">재무</a>
                            <ul class="financialShow">
                                <li><a class="cShow mrgl30">지출결의서</a></li>
                            </ul>
                        </li>
                        <li><a class="reportSub cSub mrgl17">보고</a>
                            <ul class="reportShow">
                                <li><a class="cShow mrgl30">주간업무보고</a></li>
                            </ul>
                        </li>
                        <li><a class="cSub mrgl17">업무</a></li>
                        <li><a class="cSub mrgl17">총무</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
		<div class="label_right br5 t_line">
			<br>
	        <div class="search-box fl mrgl2 mrgr500">	
                <input type="search" class="search-txt bgbtn br5" name="" placeholder="검색어를 입력하세요" value="">	                
                <button id="labelSortModal mrgr500 br5" class="search-btn bgbtn" onclick="labelSearchBtn();">▼</button>
            </div>
			<!-- 오른쪽 검색정보 시작 -->
				<div id="sortModal" class="br5 smstyle w446 t127 mrgl1 din p1">
			        <div>
			            <div><label class="fl fs13 mrgr30">제목 + 내용</label></div>
			            <div><input type="search" name="serchText" class="fs13 bgbtn br5"></div>
			        </div>
			        <div class="mrgt4">
			            <div><label class="fl fs13 mrgr70">상태</label></div>
			            <div>
			                <select name = "" class="w30 h23 t_line br5">
			                   <option value="coice">선택</option>
			                   <option value="ing">결재중</option>
			                   <option value="final">최종승인</option>
			                   <option value="return">반려</option>
			                   <option value="dicide">전결</option>
			               </select>
			            </div>
			        </div>
			        <div  class="mrgt4">
			            <div><label class="fl fs13 mrgr58">기안자</label></div>
			            <div>
			                <input type="search" name="serchFirstUser" class="bgbtn br5">
			                <input type="button" class="fs13 br5 bgbtn" value="찾기">
			            </div>
			        </div>
			        <div  class="mrgt4">
			            <div><label class="fl fs13 mrgr58">기안일</label></div>
			            <div><input type="date" name="date" class="fs13 bgbtn br5"><span> ~ </span><input type="date" name="date" class="fs13 bgbtn br5"></div>
			        </div>
			        <div  class="mrgt4">
			            <div><label class="fl fs13 mrgr33">최종결재자</label></div>
			            <div>
			                <input type="search" name="serchFirstUser" class="bgbtn br5">
			                <input type="button" class="fs13 br5 bgbtn" value="찾기">
			            </div>
			        </div>
			        <div  class="mrgt4">
			            <div><label class="fl fs13 mrgr33">최종결재일</label></div>
			            <div><input type="date" name="date" class="fs13 bgbtn br5"><span> ~ </span><input type="date" name="date" class="fs13 bgbtn br5"></div>
			        </div>
			        <div> 
			            <div class="searchTBtn">
			                <button type="submit"class="fs13 br5 bgbtn">검색</button>
			                <input type="reset" class="fs13 br5 bgbtn" value="리셋">
			            </div>
			        </div>
			    </div>
			<!-- 오른쪽 검색정보 끝 -->
	        <input type="button" class="update bgbtn br5" value="라벨지정">
			<input type="button" class="line bgbtn br5" onclick="alignBtn();" value="정렬">
			<!-- 체크박스 정렬 시작 -->
			<div id="alignContent" class="din smstyle bgbtn mrgl644 br5 p1">
				<input type="radio" name="align" value="state">상태<br>
				<input type="radio" name="align" value="writerName">기안자<br>
				<input type="radio" name="align" value="writeDate">기안일<br>
				<input type="radio" name="align" value="LastName">최종결재자<br>
				<input type="radio" name="align" value="LastDate">최종승인일<br> 
			</div>
	        <br>
			<!-- 체크박스 정렬 끝 -->
	        <div class="label-list" id="labelArea" >
	        	<!-- 오른쪽 title --> 
	        	<ul class="mrgt3">
	            	<li class="w4 h43 bt_line pt10 rt_line tc bb_line "><input type="checkbox"></li>
	            	<li class="w10 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">상태</li>
	               	<li class="w30 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">문서명</li>
	               	<li class="w10 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">기안자</li>
	               	<li class="w10 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">기안일</li>
	               	<li class="w12 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">최종결재자</li>
	               	<li class="w12 h43 bt_line pt10 fs17 rt_line fwb tc bb_line">최종승인일</li>
	               	<li class="w12 h43 bt_line pt10 fs17 fwb tc bb_line">라벨</li>
				</ul>  
	            <!-- 오른쪽 list -->   
	            <ul>
		            <li class="w4 h30 fs15 rt_line pt5 tc bb_line"><input type="checkbox"></li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">승인 완료</li>
		            <li class="w30 h30 fs15 rt_line pt5 pl5 bb_line">품질보고서-주현주현-1202-3<img alt="" src=""></li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">주현주현</li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">20-11-06</li>
		            <li class="w12 h30 fs15 rt_line pt5 tc bb_line">박재서</li>
		            <li class="w12 h30 fs15 rt_line pt5 tc bb_line">20-11-06</li>
		            <li class="w12 h30 fs15 pt5 pl5 bb_line">
		            	<div class="fs10 bgb oln clw w80 br5 pl5"> 문서분류라벨 <button class="bgn clw oln fwb br0">x</button></div>
		            </li>
	            </ul>
	              
	            <ul>
		            <li class="w4 h30 fs15 rt_line pt5 tc bb_line"><input type="checkbox"></li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">승인 완료</li>
		            <li class="w30 h30 fs15 rt_line pt5 pl5 bb_line">품질보고서-주현주현-1202-2<img alt="" src=""></li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">주현주현</li>
		            <li class="w10 h30 fs15 rt_line pt5 tc bb_line">20-11-06</li>
		            <li class="w12 h30 fs15 rt_line pt5 tc bb_line">이동엽</li>
		            <li class="w12 h30 fs15 rt_line pt5 tc bb_line">20-11-06</li>
		            <li class="w12 h30 fs15 pt5 pl5 bb_line">
		            	<img alt="" src="">
		            </li>
		            
	            </ul>
	         </div>
			<!-- labelSort paging 시작 -->
			<div class="mrgt640">
				<ul class="fn mrgl35 lN">
				    <li class="disabled" ><a href="#" class="fl pg br5"><span>«</span></a></li>
				    <li><a href="#" class="fl pg br5">1</a></li>
				    <li><a href="#" class="fl pg br5">2</a></li>
				    <li><a href="#" class="fl pg br5">3</a></li>
				    <li><a href="#" class="fl pg br5">4</a></li>
				    <li><a href="#" class="fl pg br5">5</a></li>
				    <li class="disabled"><a href="#" class="fl pg br5"><span>»</span></a></li>
				</ul>              
			</div>	
			<!-- labelSort paging 끝 -->
		</div>
	</div>
    
    
<!-- 왼쪽 문서양식 카테고리 -->
<script>
	$('.CompanyNameBtn').click(function(){
	    $('.paperCategory').toggleClass("dis");
	});
	$('.personnelSub').click(function(){
	    $('.personnelShow').toggleClass("dis");
	});
	$('.financialSub').click(function(){
	    $('.financialShow').toggleClass("dis");
	});
	$('.reportSub').click(function(){
	    $('.reportShow').toggleClass("dis");
	});
</script>
	
<!--왼쪽 페이징 숫자 클릭하면 색바꾸기 -->
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
    
<!--오른쪽 검색조건▼ 클릭하면 동작 -->        
<script>
    var content = document.getElementById("sortModal");
    var btn = true;
    function labelSearchBtn(){    
        if(btn==false){
            content.style.display ="none";
            console.log("검색 none")
            btn=true;
        }else{
           	btn = false;
            content.style.display = "block";
            console.log("검색 block")
        }
    }       
</script>       

<!--오른쪽 정렬 클릭하면 동작 -->        
<script>
    var aligncontent = document.getElementById("alignContent");
    var alignB = true;
    function alignBtn(){    
        if(alignB==false){
        	aligncontent.style.display ="none";
        	 console.log("정렬 none")
        	alignB=true;
        }else{
        	alignB = false;
        	aligncontent.style.display = "block";
        	 console.log("정렬 block")
        }
    }       
</script>   
    
</body>
</html>