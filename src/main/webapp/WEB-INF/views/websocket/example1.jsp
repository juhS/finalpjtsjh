<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	//웹소켓 관려 처리
	// - javascript에도 Websocket API가 존재
	$(function(){
		//연결 이벤트
		$("#connect").click(function(){
			//주소 정하고
			var uri = "ws://localhost:8088/batterflow/basic";  //서버포트번호에 맞게
			
			//웹소켓 연결(실제로는 소켓을 생성했다라고 표현)
			window.socket = new WebSocket(uri);
		});
		
		//종료 이벤트
		$("#disconnect").click(function(){
			//웹소켓 연결 종료(실제로는 소켓을 종료했다고 표현)
			window.socket.close();
		});
		
		
		
		
	});


</script>


<h1>기본 웹소켓 예제</h1>

<!-- 접속버튼 -->
<button id="connect">접속버튼</button>
<button id="disconnect">종료버튼</button>




