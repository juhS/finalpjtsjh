<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="<%= request.getContextPath() %>/resources/css/notice/notice.css" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src='https://cdn.jsdelivr.net/npm/moment@2.27.0/min/moment.min.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.48.4/codemirror.min.css"/>
<link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />

<title>공유정보 - 전사공지(main)</title>
</head>
<body style="color:black;">
	<jsp:include page="../../common/menubar.jsp"/>
	 <div class="box">
        <div class="notice_left">  
           <!-- notice search / write -->
            <div>
                <div class="p2">	
                    <input type="search" class="bdr h27 w235" name="contentSearch" id="contentSearch" onkeypress="enterSearch()" placeholder="검색어를 입력하세요">
<!--                 <button class="bdr h27 w27 bgbtn" id="noticeSearchBtn" onclick="noticeSearchBtn();">▼</button>-->
                     
                     <!-- 권한이 슈퍼관리자(1) 또는 일반관리자(2)만 글 작성 가능하게  -->
                     
	                     <button class="iconB mrgl211" id="rightOne_writeBtn">
	                       <i class="fas fa-pen iconS"></i>
	                     </button>
                    
                </div>
            </div>

            <!-- 검색조건 띄우기 -->
<!--             <div id="searchModal" class="br5 smstyle w400 mgrtl10">
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
                        <input type="reset" class="fs13 br5 bgbtn" value="리셋">
                    </div>
                </div>
            </div>	 
-->

            <!---notice title--->
            <form name="readForm" role="form" method="post">
            	<input type="hidden" id="board_id" name="board_id" value="${read.board_id }">
            </form>
            <ul class="notice">
                <li class="fl tc w10 title t_line ">번호</li>
                <li class="fl tc w60 title t_line">제목</li>
                <li class="fl tc w15 title t_line">작성자</li>
                <li class="fl tc w15 title t_line">작성일</li>
            </ul>
            <!--- notice list --->
		    <ul class="notice nClick" id="listBody">
	            <c:forEach items="${list }" var="list">
	            	<c:if test="${list.top_fixed eq 'Y'}">
	            	
			        	<li class="fl tc w10 list t_line lt_line fw bgoR"><c:out value="${list.board_id }"/></li>
			            <li class="fl tc w60 list t_line lt_line fw bgoR"><a href="<%= request.getContextPath() %>/sharingInfo/noticeRead?board_id=${list.board_id}"><c:out value="${list.board_title }"/></a></li>
			            <li class="fl tc w15 list t_line lt_line fw bgoR"><c:out value="${list.user_name }"/></li>
			            <li class="fl tc w15 list t_line lt_line fw bgoR"><fmt:formatDate value="${list.board_create_date}" pattern="yy-MM-dd"/></li>
	           		</c:if>
	           		<c:if test="${list.top_fixed eq 'N'}">
			        	<li class="fl tc w10 list t_line lt_line"><c:out value="${list.board_id }"/></li>
			            <li class="fl tc w60 list t_line lt_line"><a href="<%= request.getContextPath() %>/sharingInfo/noticeRead?board_id=${list.board_id}"><c:out value="${list.board_title }"/></a></li>
			            <li class="fl tc w15 list t_line lt_line"><c:out value="${list.user_name }"/></li>
			            <li class="fl tc w15 list t_line lt_line"><fmt:formatDate value="${list.board_create_date}" pattern="yy-MM-dd"/></li>
	           		</c:if>
	            </c:forEach>

		    </ul>
            <!-- notice paging -->
            <ul class="mrgt625">
				<c:if test="${pageMaker_vo.prev }">
               		<li class="disabled" ><a href="noticeMain${pageMaker_vo.makeQuery(pageMaker_vo.startPage-1) }" class="fl pg br5 pgl35">이전</a></li>
                </c:if>
                <c:forEach begin="${pageMaker_vo.startPage }" end="${pageMaker_vo.endPage }" var="pagingNo">
                	<li><a href="noticeMain${pageMaker_vo.makeQuery(pagingNo) }" class="fl pg br5">${pagingNo }</a></li>
                </c:forEach>
                <c:if test="${pageMaker_vo.next && pageMaker_vo.endPage>0 }">
                	<li class="disabled"><a href="noticeMain${pageMaker_vo.makeQuery(pageMaker_vo.endPage+1) }" class="fl pg br5">다음</a></li>
                </c:if>
            </ul> 
        </div>

        <div class="notice_right" id="rightOne">
	    	<div class="notice-content" id="contentArea">
				<div>
					<div>
						<div class="mrgt2" id="mouseOver">
							<div>
								<div>
									<input type="text" readonly class="fl mrgl2 fs26 mgr23 fw w300 oln bdn" name="board_title" value="${read.board_title }">
								</div>
							</div>
							<div class=" mrgl80">
								<form name="readForm" role="form" method="post">
									<input type="hidden" id="board_id" name="board_id" value="${ read.board_id}">
									<input type="hidden" id="top_fixed" name="top_fixed" value="${ read.top_fixed}">
								</form>
								<c:if test="${ read.user_name eq sessionScope.login.user_name}"> 
									<div class="fl"><!-- 이미지->아이콘 url로 나중에 변경해야함. -->
									   	<button class="write iconB update_btn"><!-- 작성, 수정 -->
									   		<i class="fas fa-pen iconS fs21"></i>
									   	</button>
									</div>	
									<div class="fl mrgl4"> <!-- 이미지->아이콘 url로 나중에 변경해야함. -->
									  	<button class="delete iconB delete_btn"><!-- 삭제 -->
									  		<i class="far fa-trash-alt iconS fs21"></i>
										</button>
									</div>
								</c:if> 
									<div class="fl mrgl4"> <!-- 이미지->아이콘 url로 나중에 변경해야함. -->
										 <c:if test="${read.top_fixed eq 'Y'}">
											<button class="iconC bgoRr" id="fixedBtn" type="button" name="fixedBtn"><!-- 상단고정 아이콘 ON -->
									   	     	<i class="fas fa-thumbtack iconS fs21 iconW" id="fixedIcon"></i>
									        </button>
								        </c:if>
								         <c:if test="${read.top_fixed eq 'N'}">
											<button class="iconC bgw" id="fixedBtn" type="button" name="fixedBtn"><!-- 상단고정 아이콘 OFF -->
									        	<i class="fas fa-thumbtack iconS fs21" id="fixedIcon"></i>
									        </button>
								        </c:if>
	
									</div>
								

								   
							</div>
						</div>
						<div class="lt_line pb2">
							<div class="mrgl2">
								<input type="text" readonly class="fl bdn oln w90 mrgt3" name="user_name" value="${read.user_name }"/>
							</div>
							<div class="r_title_bottom_right">
								<input type="text" readonly class="fs13 bdn oln" name="board_create_date" value="${read.board_create_date }"/>
							</div>
						</div>
					</div>
				</div>
				<div class="r_center"><!--내용  -->
					<input type="hidden" id="board_id" name="board_id" value="${ read.board_id}">
					<div class="lt_line">
						<div id="editor" class="editor w547 h322 bdn oln rsn pt8" data-content="${read.board_content }"></div>
						<%-- <textarea name="board_content" class="w547 h322 bdn oln rsn pt8" readonly><c:out value="${read.board_content }"/></textarea> --%>
					</div>
					
					<!-- 댓글 조회 -->
					<form name="commDeleteForm" method="post">
						<div class="mrg2 commlist">
				             <c:forEach items="${commList }" var="commList">
				             	<input type="hidden" id="board_id" name="board_id" value="${ read.board_id}">
								<input type="hidden" id="comm_id" name="comm_id" value="${commList.comm_id}" />
					             <div class="userdetail">
					             	<div>
					             		<span class="fl mgr3">${commList.user_name }</span>
					             	</div>
					             
					             	<div>
					             		<span class="fs13"><fmt:formatDate value="${commList.comm_create_time}" pattern="yyyy-MM-dd HH:mm:ss" /></span>
					             	</div>
					             	<div>			             		
					             		<div>
						             		<p class="spanContent spanContentIcon w100">${commList.comm_content }</p>
					             		</div>
										<div class="contentFixed pore">
											<c:if test="${ commList.user_write_id eq sessionScope.login.user_id}">
											    <button class="file poab r10 bdn" id="commDeleteBtn" type="button">
											    	<i class="far fa-trash-alt iconSR fs13"></i><!-- 삭제 -->
											    </button>
										    </c:if>
										    
										</div>
					             	</div>
					             </div>
				           </c:forEach>
						</div>
					</form>
				</div>
				<div class="mrg2">
			        <!-- 댓글 작성 -->
			        <form name="commForm" method="post">
						<input type="hidden" id="board_id" name="board_id" value="${read.board_id}" />
						<input type="hidden" id="user_write_id" name="user_write_id" value="${sessionScope.login.user_id}" />
						<%-- <input type="hidden" id="page" name="page" value="${scri.page}"> 
						<input type="hidden" id="perPageNum" name="perPageNum" value="${scri.perPageNum}"> 
						<input type="hidden" id="searchType" name="searchType" value="${scri.searchType}"> 
						<input type="hidden" id="keyword" name="keyword" value="${scri.keyword}">  --%>
			        
				        <div>
				        	<div class="commentTable">
				        			<p class="contentFour">
						                <input type="text" class="comment h95 bgbtn" id="comm_content" name="comm_content" autocomplete="off" placeholder="댓글을 입력해주세요.">
				        			</p>
				        	</div>
						    <div>
						    		<!--파일첨부-->
						    		<!-- <div class="contentFixed fl mrgr70">
										<span id="btnFileUpload" class="fileboxA w31">
										     <input type="file" id="image" name="image" onchange="setPath(this, 'FileBoxImg');" class="fileboxB"/>
										     <i class="fas fa-paperclip iconSF mrgt4"></i>
										</span>
						    			<input id="FileBoxImg" readonly="readonly" class="w31 h33 none" />
									</div> -->
									<div class="contentFixed"><!-- 제출 -->
						            	<button type="button" class="comentSubmit mrgl498 iconSS" id="commentBtn" disabled>제출</button>			                	
									</div>		
						    </div>			
				        </div> 
			        </form>   
				</div>
			</div>	   
        </div> 	
     </div>

   
<!-- 검색시작 -->
<script>
	var urlPath = "${pageContext.request.contextPath}/sharingInfo/noticeRead?board_id="
	//var urlPath = "${pageContext.request.contextPath}/sharingInfo/noticeRead2?board_id="
	
	function enterSearch(){
		if(window.event.keyCode==13){
			//입력하고 엔터치면 검색되게
			//실행시킬 함수. ajax
			//alert("검색하기"); //확인용
			console.log("검색 : " + $("#contentSearch").val());/* 검색할 내용 */
			
			var contentSearch = $("#contentSearch").val(); /* 검색할 내용 */
			//제목으로 검색
				$.ajax({
					url:"/batterflow/sharingInfo/noticeSearch", /*컨트롤러 주소  */
					type:"post",
					data:{contentSearch:contentSearch},
					dataType:"json",
					success:function(data){
						console.log(data);
						
						
						
						var $listBody = $("#listBody");
						$("#listBody").html('');
						
						for(index in data){
							
							//상단고정(top_fixed가 'y'일때 버튼 색 변경)
							if(data[index].top_fixed==='Y'){
								$liOne =$("<li class='fl tc w10 list t_line lt_line fw bgoR'>").text(data[index].board_id)
								$liTwo =$("<li class='fl tc w60 list t_line lt_line fw bgoR'>")
								
								$liA =$("<a href='"+urlPath+data[index].board_id+"'>").text(data[index].board_title)
								//$liA =$("<a href='"+urlPath+data[index].board_id+"&search="+contentSearch+"'>").text(data[index].board_title)
								
								$liThr =$("<li class='fl tc w15 list t_line lt_line fw bgoR'>").text(data[index].user_name)
								$liFor =$("<li class='fl tc w15 list t_line lt_line fw bgoR'>").text(moment(data[index].board_create_date).format("YY-MM-DD"))
								
								
								$listBody.append($liOne);
								$liTwo.append($liA);
								$listBody.append($liTwo);
								$listBody.append($liThr);
								$listBody.append($liFor);
								
							}else{
								
								$liOne =$("<li class='fl tc w10 list t_line lt_line'>").text(data[index].board_id)
								$liTwo =$("<li class='fl tc w60 list t_line lt_line'>")
								
								$liA =$("<a href='"+urlPath+data[index].board_id+"'>").text(data[index].board_title)
								//$liA =$("<a href='"+urlPath+data[index].board_id+"&search="+contentSearch+"'>").text(data[index].board_title)
								
								$liThr =$("<li class='fl tc w15 list t_line lt_line'>").text(data[index].user_name)
								$liFor =$("<li class='fl tc w15 list t_line lt_line'>").text(moment(data[index].board_create_date).format("YY-MM-DD"))
								
								
								$listBody.append($liOne);
								$liTwo.append($liA);
								$listBody.append($liTwo);
								$listBody.append($liThr);
								$listBody.append($liFor);
							}
							
							
							
						}
						/* var $listBody = $("#listBody li").children();
						console.log("$listBody : " + $listBody);
						
						$listBody.html(''); */
						
						/* 						
						for(var index in data){
							
							var $ul =$("<ul>");
							var $board_idLi =
	
	
	 						$ul.append($board_idLi);
							$ul.append($board_nameLi);
							$ul.append($user_nameLi);
							$ul.append($board_create_dateLi);
							
							$listBody.append($ul);
	
						
						
						}
						 */
					},
					error:function(err){
						console.log("게시판 검색실패 : 검색실패")
						alert("게시판 검색실패 : 검색실패");
					}
				})
			
		}
	}
</script>

<!--왼쪽 검색조건▼ 클릭하면 동작 -->        
<script>
    var contenta = document.getElementById("searchModal");
    var btn = true;
    
    function noticeSearchBtn(){    
        if(btn==false){
        	console.log("검색창닫힘");
        	contenta.style.display ="none";
            btn=true;
        }else{
        	console.log("검색창열림");
        	btn = false;
        	contenta.style.display = "block";
        }
    }       
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

<!-- 오른쪽 첨부파일 버튼 이미지로 변경 -->
<script>
	function setPath(obj,id){
	    document.getElementById(id).value = obj.value;
	 }
</script>	

<!-- 오른쪽 댓글(text)입력 되었을 때 버튼(등록) 활성화 -->    
<script>
	$("#comm_content").on("keyup",function(){
		if($("#comm_content").val()==""){
			$("#commentBtn").attr("disabled",true);
		}else{
			$("#commentBtn").attr("disabled",false);
			console.log("disabled false")
		}
		
	});
</script>

<!-- 오른쪽 글작성하기 버튼 누르면 ajax로 div 바꿔치기( 글자세히보기 -> editor ) -->
<script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script><!-- 위치고정!!바뀌면안됨 -->
<script>
 var fixed = 0; //상단고정 플래그
 
	$(function(){
		$("#rightOne_writeBtn").click(function(){
			$.ajax({
				url:"/batterflow/sharingInfo/noticeRWrite",
				type:"get",
//	 			async:false,
				dataType:"html",
				success : function(data){
					 //console.log("data : " + data);  //여기까진 나옴.. 근데 왜 ....?				
					var rWriteF = $("#rightOne").html(data).find("#contentArea1");
					 //console.log(rWriteF);
					 //console.log(typeof rWriteF);
					
					$("#rightOne").html(rWriteF);
// 					console.log($("#rightOne #editor"))
// 					console.log(document.querySelector("#rightOne #editor"))
// 					console.log(toastui)
// 					console.log(toastui.Editor);
					<!-- editor 생성 -->
					var editor = new toastui.Editor.factory({
				        el:document.querySelector("#rightOne #editor"),
				        height:'500px',
			   		});
					
					
					//전송을 위해 #editor 뒤에 input태그 숨김 첨부
					$("#editor").after("<input type='hidden' name='board_content'>");
					
					editor.on("blur", function(){
						//console.log(editor.getMarkdown());
						var value = editor.getMarkdown();
						
						//뒤에 input태그가 있는지 파악해서 없을때는 생성한 뒤에 값 복사.
						//$("editor").after("<input type='hidden' name='board_content'>");
					
						//value를 input에 복사
						$("#editor").next("input[name=board_content]").val(value);
					
						//임시저장(구현x)
						window.localStorage.setItem(location.href,value);
					});
					
					//만약 입력이 안되면 alert 띄우기
					$("form").submit(function(e){
						
						var board_content = $(this).find("input[name=board_content]").val();
						if(!board_content.trim()){//내용이 없거나 비어있다면
							alert("게시글을 작성하세요.")
							e.preventDefault();//기본 진행 이벤트 차단
							return;
						}
						//전송
						this.submit();
					});
					
					$("#fixedBtn").on("click", function(){
						//상단고정!!!
						//INPUT HIDDEN 버튼 눌렀을 때 Y값 넘기기 
						//변수 밖에 선언하고..
						//버튼 색 바꾸기.
						
						if(fixed == 0){
							$("#top_fixed").val("Y");
							console.log("y")
							
							$("#fixedBtn").css("backgroundColor","#F9AD1B");
							$("#fixedIcon").css("color", "white");
							
							fixed=1;
						}else if(fixed == 1){
							$("#top_fixed").val("N");
							console.log("n")
							
							$("#fixedBtn").css("backgroundColor","white");
							$("#fixedIcon").css("color", "#F9AD1B");
							
							fixed=0;
							
						}
					})
					
				}
			})
		})
	});
</script>



<!-- 게시판 상세보기 view -->
<script>
	var content= $(".editor").data("content");
	$(function(){
		var editor = new toastui.Editor.factory({
	        el:document.querySelector("#rightOne #editor"),
	        height:'500px',
	        initialValue:content,
	        viewer :true,
   		});
	})
</script>


<!-- 오른쪽 게시글 수정버튼(update_btn) 눌렀을 때 동작 -->
<script>
var fixed = 0; //상단고정 플래그

	$(function(){
		$(".update_btn").on("click",function(){
			console.log(this);
			console.log($(this).attr("value"));
 				$.ajax({
					/*param말고 다른것도 찾아보기. */
					url:"/batterflow/sharingInfo/noticeUpdate?board_id="+${param.board_id},
					type:"get",
	
					dataType:"html",
					success : function(data){
				
						var rWriteF = $("#rightOne").html(data).find("#contentArea1");
						
						var content = $(".editor").data("content")
						
						$("#rightOne").html(rWriteF);
						<!-- editor 생성??????????????????????????????? -->
						var editor = new toastui.Editor.factory({
					        el:document.querySelector("#rightOne #editor"),
					        height:'500px',
					        initialValue:content,
				   		});
						
						
						$("#fixedBtn").on("click", function(){
							//상단고정!!!
							//INPUT HIDDEN 버튼 눌렀을 때 Y값 넘기기 
							//변수 밖에 선언하고..
							//버튼 색 바꾸기.
							
							//제목선택(스타일줘야함.)
							//var board_nameS= $("#listBody").
							
							if(fixed == 0){
								$("#top_fixed").val("Y");
								console.log("y")
								
								//버튼에 색주기	
								$("#fixedBtn").css("backgroundColor","#F9AD1B");
								$("#fixedIcon").css("color", "white");
								
								//목록 글씨굵기 bold
								//$("#listBody").css("font-weight","bold");
								
								
								fixed=1;
							}else if(fixed == 1){
								$("#top_fixed").val("N");
								console.log("n")
								
								$("#fixedBtn").css("backgroundColor","white");
								$("#fixedIcon").css("color", "#F9AD1B");
								
								fixed=0;
								
							}
						})
						
						
						var board_id = $("#board_id").val();
						var top_fixed = $("#top_fixed").val();
						console.log("board_id : " +board_id);
						console.log("top_fixed: " +top_fixed);
						
						//전송을 위해 #editor 뒤에 input태그 숨김 첨부
						$("#editor").after("<input type='hidden' name='board_content'>");
						
						editor.on("blur", function(){
							var value = editor.getMarkdown();
						
							//value를 input에 복사
							$("#editor").next("input[name=board_content]").val(value);
							
						});
						$("input[name=board_title]").after("<input type='hidden' name='board_id' value='"+board_id+"'>");
					}
			})  
	})	
})

</script>
<!-- 게시글 삭제 -->
<script>
	$(document).ready(function(){
		var readForm = $("form[name='readForm']");

		$(".delete_btn").on("click", function(){
			var deleteYN = confirm("삭제하시겠습니까?");
			if(deleteYN==true){
				readForm.attr("action","/batterflow/sharingInfo/noticeDelete");
				readForm.attr("method", "post");
				readForm.submit();
			}
		})
	})
</script>

<!-- 게시판 댓글 작성(commentBtn 버튼 눌렀을 때) -->
<script>
	$("#commentBtn").on("click", function(){
		var commYN = confirm("댓글을 등록하시겠습니까?");
		if(commYN==true){
			var formObj = $("form[name='commForm']");
			  formObj.attr("action", "/batterflow/sharingInfo/commWrite");
			  formObj.submit();
		} 
	})	
</script>

<!-- 게시판 댓글 삭제(commDeleteBtn 버튼 눌렀을 때) -->
<script>
	$("#commDeleteBtn").on("click", function(){
		var commDeleteYN=confirm("댓글을 삭제하시겠습니까?");
		if(commDeleteYN==true){
			var formObj = $("form[name='commDeleteForm']");
				formObj.attr("action", "/batterflow/sharingInfo/commDelete");						
				formObj.submit();
		}
	})
</script>

</body>
</html>




