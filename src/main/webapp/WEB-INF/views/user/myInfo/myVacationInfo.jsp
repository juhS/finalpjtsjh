<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 정보 - 나의 휴가 정보</title>
<link href="<%= request.getContextPath() %>/resources/css/myInfo/myInfo.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<jsp:include page="../../common/menubar.jsp"/>
<div class="box">
	<div class="myVacation_top">
		<div class="mrgt1h mrgl1">
			<p class="fl mrgr60">${login.user_name }</p>
			<div><input type="date" name="date" class="fs13 bgbtn br5"><span> ~ </span>
				 <input type="date" name="date" class="fs13 bgbtn br5">
				 <input type="submit" value="검색" class="bgbtn2 h24 w4 br5">
			</div>
		</div>
	</div>
	<div class="myVacation_center">
		<div class="p1">
			<h3>휴가 일수</h3>
			<p>휴가 일수는 휴가 기준(입사일, 회계년도)에 따라 1년 단위로 집계됩니다. 검색 기간을 조정하여 이전 휴가 집계를 할 수 있습니다.</p>
			<span class="mrgl964 fs12">휴가 기준 : 회계연도</span>
		</div>
		<div class="vacation-list p1">		
           <div class="scr">
	           	<!-- vacation title 시작 -->
	            <ul class="w1470">
		            <li class="fwb bt_line bb_line rt_line lt_line tc fl fs15 w210">연차유급휴가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">경조휴가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">보상휴가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">보건휴가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">병가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">공가</li>
		            <li class="fwb bt_line bb_line rt_line tc fl fs15 w210">기타</li>
	            </ul>
	            <ul class="w1470">
		    		<li class="fwb bb_line tc fl rt_line lt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">부여일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">사용일수</li>
		            <li class="fwb bb_line tc fl rt_line wp70 h20 fs12 pt2p">잔여일수</li>
				</ul> 
	            <!-- vacation title 끝 -->
	            <!-- vacation list 시작-->        
				<ul class="w1470">
		            <li class="fwb bb_line tc fl rt_line lt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcb">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70 fcr">0</li>
		            <li class="fwb bb_line tc fl rt_line wp70">0</li>
				</ul>
				<!-- vacation list 끝-->
			</div>
		</div>
		
	</div>
	<div class="myVacation_bottom">
		<div class="p1">
			<h3>휴가 내역</h3>
			<p>부여된 휴가와 사용한 휴가 내역을 상세하게 확인할 수 있습니다. 검색 기간을 조정하여 이전 휴가 내역을 확인할 수 있습니다.</p>
		</div>
		<div class="mVB_wrapper mrgl1">
			<div class="bb_line p1">
				<label class="fl fs13 mgr11">휴가 종류 : </label>
			    <div>
			      	<select name = "vacationList" id="vacationList" class="h23 t_line w100 mrgl10">
			           	<option value="all" onclick="vacationF(this)">전체</option>
			           	<c:forEach items="${vacationTypeList }" var="vacation">
				            <option value="${vacation.vaca_kind_id }">${vacation.vaca_kind_name}</option>
			          	</c:forEach>
			        </select>
			    </div>
			</div>
			<div>
			    <div class="wrapper_left ">
			    	<div class="mrgt8 mrgl8 mrgb8">
			    		<p class="mrgr350 fl">휴가일수 부여 내역</p>
			    		<input type="button" class="line bgbtn br5" onclick="alignBtn();" value="정렬">
						<!-- 휴가일수 부여 정렬 시작 -->
						<div id="wrapperContent" class="din smstyle bgbtn mrgl402 br5 p1 pas">
							<input type="radio" name="align" value="vacationKind">휴가종류<br>
							<input type="radio" name="align" value="vacationReason">부여사유<br>
						</div>
			    	</div>
			    	<div class="lsn">
			    		<!-- 휴가일수 부여 title 시작 -->
			    		<ul>
				            <li class="fwb bb_line bt_line rt_line tc pt2 fl w25 h40">휴가 종류</li>
				            <li class="fwb bb_line bt_line rt_line tc pt2 fl w25 h40">부여일</li>
				            <li class="fwb bb_line bt_line rt_line tc pt2 fl w25 h40">부여 휴가 일수</li>
				            <li class="fwb bb_line bt_line tc pt2 fl w25 h40">부여 사유</li>
			            </ul>
			            <!-- 휴가일수 부여 title 끝 -->
			            <!-- 휴가일수 부여 list 시작 -->
					   <ul>
				   
					      <c:forEach items="${apprList }" var="apprList"> 
							 	<li class="bb_line tc fl rt_line w25"><c:out value="${apprList.vaca_kind_name }"/></li>
							    <li class="bb_line tc fl rt_line w25"><c:out value="${apprList.vaca_appr_date }"/></li>
							    <li class="bb_line tc fl rt_line w25"><c:out value="${apprList.vaca_appr_day }"/></li>
							    <li class="bb_line tc fl w25"><c:out value="${apprList.vaca_appr_reason }"/></li>
						   </c:forEach>  
					             
						</ul> 
				        <!-- 휴가일수 부여 끝 시작 -->
			    	</div>
				</div>	
				<div class="wrapper_right">
			    	<div  class="mrgt8 mrgl8 mrgb8">
			    		<p class="fl">휴가일수 사용(차감) 내역</p>
			    		<input type="button" class="line bgbtn br5 mrgl310" onclick="deductionBtn();" value="정렬">
						<!-- 휴가일수 차감 정렬 시작 -->
						<div id="deductionContent" class="din smstyle bgbtn mrgl405 br5 p1 pas">
							<input type="radio" name="align" value="vacationKind">휴가종류<br>
							<input type="radio" name="align" value="deductionReason">휴가사유<br>
						</div>
			    	</div>
			    	<div class="lsn">
			    		<!-- 휴가일수 차감 title 시작 -->
			    		<ul>
				            <li class="fwb bb_line bt_line rt_line pt2 tc fl w25 h40">휴가 종류</li>
				            <li class="fwb bb_line bt_line rt_line pt2 tc fl w45 h40">휴가 기간</li>
				            <li class="fwb bb_line bt_line rt_line tc fl w10 h40">휴가<br>일수</li>
				            <li class="fwb bb_line bt_line tc fl w20 h40">휴가<br>사유</li>
			            </ul>
			            <!-- 휴가일수 차감 title 끝 -->
			            <!-- 휴가일수 차감 list 시작 -->
			            <ul>
			            	<c:forEach items="${apprMList }" var="apprMList"> 
					    		<li class="bb_line tc fl rt_line w25"><c:out value="${apprMList.vaca_kind_name }"/></li>
					            <li class="bb_line tc fl rt_line w45"><c:out value="${apprMList.vaca_period }"/></li>
					            <li class="bb_line tc fl rt_line w10"><c:out value="${apprMList.vaca_usage_day }"/></li>
					            <li class="bb_line tc fl w20"><c:out value="${apprMList.vaca_reason }"/></li>
				            </c:forEach>
				        </ul>
				        <!-- 휴가일수 차감 끝 시작 -->
			    	</div>
			    </div>
			</div>
			<div class="wrapper_bottom">
				<div class="lsn">
			    		<ul>
				            <li class="fwb bb_line rt_line tc fl p05 w25">휴가 부여일수 합계</li>
				            <li class=" bb_line rt_line tc fl p05 w25">6</li>
				            <li class="fwb bb_line rt_line tc fl p05 w25">휴가 사용일수 합계</li>
				            <li class="fwb bb_line tc fl p05 w25">4</li>
			            </ul>
			            <ul>
				    		<li class="fwb tc fl rt_line p05 w536">휴가합계</li>
				           	<li class="tc fl p05 w50p">2</li>
				        </ul>
			    	</div>
			</div>
		</div>
	</div>
</div>

<!--휴가부여 정렬 클릭하면 동작 -->        
<script>
    var wrappercontent = document.getElementById("wrapperContent");
    var alignB = true;
    function alignBtn(){    
        if(alignB==false){
        	wrappercontent.style.display ="none";
        	 console.log("부여정렬 none")
        	alignB=true;
        }else{
        	alignB = false;
        	wrappercontent.style.display = "block";
        	 console.log("부여정렬 block")
        }
    }       
</script> 
<!--휴가사용 정렬 클릭하면 동작 -->        
<script>
    var deductionContent = document.getElementById("deductionContent");
    var alignC = true;
    function deductionBtn(){    
        if(alignC==false){
        	deductionContent.style.display ="none";
        	 console.log("체감정렬 none")
        	alignC=true;
        }else{
        	alignC = false;
        	deductionContent.style.display = "block";
        	 console.log("체감정렬 block")
        }
    }       
</script> 

<!-- 휴가종류 클릭하면 휴가일수 부여 내역 ajax -->
<!-- <script>
	function vacationF(val){
		var vacationF = $(val).val();
		console.log("이거 ?? : " + $(val).val());
	}
	
</script>
 -->
</body>
</html>







