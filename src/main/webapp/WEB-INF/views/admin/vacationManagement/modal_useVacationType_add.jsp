<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
#vacation-Type-add-set{
display: block;
margin-top: 0em;
}
.card-modal-active{
z-index: 1000;
}
.modal-background{
background-color: rgba(10,10,10,0.35);
bottom: 0;
left: 0;
position: absolute;
right: 0;
top: 0;
display: block;
}
.modal-content-wrapper{
margin: 0;
display: flex;
-webkit-box-orient: vertical;
-webkit-box-direction: normal;
flex-direction: column;
overflow: hidden;
width: 640px;
position: relative;
}
.modal-card-head{
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
border-bottom: 1px solid #dbdbdb;
border-top-left-radius: 5px;
border-top-right-radius: 5px;
flex-shrink: 0;
padding: 20px;
position: relative;
}
.modal-card-title{
-webkit-box-flex: 1;
flex: 1 1 auto;
overflow: hidden;
max-width: 100%;
white-space: nowrap;
text-overflow: ellipsis;
color: #404040;
font-size: 1.28571rem;
line-height: 1;       
margin: 0;
padding: 0;
}
.delete-modal-flex-column{
-webkit-box-flex: 0;
flex: 0 0 auto;
overflow: hidden;
background-color: rgba(10,10,10,0.2);
border: none;
border-radius: 290486px;
cursor: pointer;
display: inline-block;
font-size: 0;
height: 20px;
max-height: 20px;
max-width: 20px;
min-height: 20px;
min-width: 20px;
outline: none;
position: relative;
vertical-align: top;
width: 20px;   
}
.modal-card-body-paddingless{
background-color: #fff;
-webkit-box-flex: 1;
flex-grow: 1;
flex-shrink: 1;
overflow: auto;
padding: 0 !important;
display: block;
}
.remote-contents{
height: 100%;
}
.card-section-item{
border-bottom: 1px solid #dbdbdb;
padding: 20px 30px;
display: block;
}
.subheader-block{
margin-bottom: 20px;
display: block;
}
.sub-header-text{
font-size: 1rem;
font-weight: bold;
margin-bottom: 10px;
display: block;
}
.flex-for-bottom-twice{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.flex-column-fixed{
-webkit-box-flex: 0;
flex: 0 0 auto;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
margin-right: 10px;
}
.select{
height: 2.25em;
display: inline-block;
max-width: 100%;
position: relative;
vertical-align: top;
}
.disabled{
padding-right: 2.5em;
background-color: #f5f5f5;
border-color: #f5f5f5;
box-shadow: none;
color: #7a7a7a;
cursor: not-allowed;
display: block;
font-size: 1em;
max-width: 100%;
outline: none;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
height: 2.25em;
-webkit-box-pack: start;
justify-content: flex-start;
line-height: 1.5;
padding-bottom: calc(0.375em - 1px);
padding-left: calc(0.625em - 1px);
padding-top: calc(0.375em - 1px);
position: relative;
vertical-align: top;
margin: 0;
}
.felx-column{
margin-right: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
-webkit-box-flex: 1;
flex: 1 1 auto;
}
.input{
background-color: #fff;
border-color: #dbdbdb;
color: #404040;
box-shadow: inset 0 1px 2px rgba(10,10,10,0.1);
max-width: 100%;
width: 100%;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
-webkit-box-pack: start;
justify-content: flex-start;
line-height: 1.5;
padding-bottom: calc(0.375em - 1px);
padding-left: calc(0.625em - 1px);
padding-right: calc(0.625em - 1px);
padding-top: calc(0.375em - 1px);
position: relative;
vertical-align: top;
}
.flex-row-bottom-twice{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.cool-checkbox{
position: relative;
display: inline-block;
width: 22px;
height: 22px;
transform: translateZ(0);
}
.checked{
position: absolute;
top: 0px;
left: 0px;
right: 0px;
bottom: 0px;
margin: 0px;
padding: 0px;
cursor: pointer;
opacity: 0;
z-index: 1;
width: 22px;
height: 22px;
vertical-align: baseline;
background-color: initial;
border: initial;
-webkit-writing-mode: horizontal-tb !important;
text-rendering: auto;
color: -internal-light-dark(black, white);
letter-spacing: normal;
word-spacing: normal;
text-transform: none;
text-indent: 0px;
text-shadow: none;
display: inline-block;
text-align: start;
-webkit-rtl-ordering: logical;
font: 400 13.3333px Arial;
}
.checkbox-inner{
background-color: #009AF0;
border-color: #009AF0;
position: absolute;
top: 0;
left: 0;
right: 0;
bottom: 0;
border-width: 1px;
border-style: solid;
border: 1px solid #2196F3;
border-radius: 5px;
z-index: 0;
}
.check{
padding: 2px;
position: absolute;
width: 1px;
border: solid #fff;
border-width: 0 3px 3px 0;
transform: rotate(45deg);
box-sizing: border-box;
top: 2px;
height: 12px;
left: 7px;
font-style: inherit;
font-weight: inherit;
}
.cool-checkbox-column{
-webkit-box-flex: 0;
flex: 0 0 auto;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
margin-right: 10px;
position: relative;
width: 22px;
height: 22px;
transform: translateZ(0);
}
.checked2{
cursor: default;
pointer-events: none;
position: absolute;
top: 0px;
left: 0px;
right: 0px;
bottom: 0px;
margin: 0px;
padding: 0px;
opacity: 0;
z-index: 1;
width: 22px;
height: 22px;
vertical-align: baseline;
background-color: initial;
border-color: rgba(118, 118, 118, 0.3);
appearance: checkbox;
color: -internal-light-dark(rgb(84, 84, 84), rgb(170, 170, 170));
border: initial;
-webkit-writing-mode: horizontal-tb !important;
text-rendering: auto;
letter-spacing: normal;
word-spacing: normal;
text-transform: none;
text-indent: 0px;
text-shadow: none;
display: inline-block;
text-align: start;
-webkit-rtl-ordering: logical;
}
.vacation-count-input{
margin-bottom: 0px;
flex-wrap: wrap;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.input-width-small{
width: 55px;
background-color: #fff;
border-color: #dbdbdb;
color: #404040;
box-shadow: inset 0 1px 2px rgba(10,10,10,0.1);
max-width: 100%;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
-webkit-box-pack: start;
justify-content: flex-start;
line-height: 1.5;
padding-bottom: calc(0.375em - 1px);
padding-left: calc(0.625em - 1px);
padding-right: calc(0.625em - 1px);
padding-top: calc(0.375em - 1px);
position: relative;
vertical-align: top;
margin: 0;
-webkit-writing-mode: horizontal-tb !important;
text-rendering: auto;
letter-spacing: normal;
word-spacing: normal;
text-transform: none;
text-indent: 0px;
text-shadow: none;
text-align: start;
-webkit-rtl-ordering: logical;
cursor: text;
font: 400 13.3333px Arial;
}
.flex-column-text{
-webkit-box-flex: 0;
    flex: 0 0 auto;
display: flex;
    -webkit-box-pack: start;
    justify-content: flex-start;
    -webkit-box-align: center;
    align-items: center;
    overflow: hidden;
margin-right: 10px;
}
option{
font-weight: normal;
display: block;
white-space: pre;
min-height: 1.2em;
padding: 0px 2px 1px;
}
.flex-column-text2{
-webkit-box-flex: 0;
flex: 0 0 auto;
margin-right: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
}
.spacing{
}
.vacation-count-input-wrap{
margin-bottom: 0px;
flex-wrap: wrap;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.flex-column-narrow{
-webkit-box-flex: 0;
flex: 0 0 auto;
margin-right: 5px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
overflow: hidden;
}
.select-width-small{
width: 55px;
height: 2.25em;
display: inline-block;
max-width: 100%;
position: relative;
vertical-align: top;
}
.modal-card-footer-notification{
-webkit-box-flex: 0;
flex: 0 0 auto;
display: block;
}
</style>
</head>
<body>


	<form action="#" class="app-form-modal" id="vacation-Type-add-set">
		<div class="card-modal-active" id="modal-vacation1">
			<div class="modal-background"></div>
			<div class="modal-content-wrapper" style="max-height:860px;">
				<header class="modal-card-head">
					<p title="사용 휴가 종류 내역 설정" class="modal-card-title">사용 휴가 종류 내역 설정</p>				
					<button type="button" class="delete-modal-flex-column">
						
					</button>
					<object style="display:block; position:absolute; top:0; left:0; height:100%; width:100$;
					overflow:hidden; pointer-events:none; z-index: -1;" type="text/html" data="about:blank">
						#document
							<html>
								<head></head>
								<body></body>
							</html>
					</object>
				</header>
				<section class="modal-card-body-paddingless" style="max-height: calc(727px);">
					<div class="remote-contents">
						<!--  -->
						<!--  -->
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">사용 휴가 종류 이름</div>
								<p>사용 휴가 종류의 이름을 설정합니다</p>
							</section>
							<div class="flex-for-bottom-twice">
								<div class="flex-column-fixed">
									<span class="select">
										<select disabled="disabled">
											<option value="">휴가 종류</option>
											<option value="01">연차 유급 휴가</option>
											<option value="02">경조 휴가</option>
											<option value="03">보상 휴가</option>
											<option value="04">보건 휴가</option>
											<option value="05">병가</option>
											<option value="06">공가</option>
										</select>
										
									</span>
								</div>
								<div class="felx-column">
									<input placeholder="사용 휴가 종류 이름" class="input">
								</div>
							</div>
						</div>
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">휴가 종류 사용 설정</div>
								<p>
									<div>
									"휴가 종류는 휴가 이력 관리를 위하여 삭제되지 않습니다."
									<br>
									"더 이상 본 휴가 종류를 사용하지 않으려면 휴가 종류 사용을 선택 해체하여 주시기 바랍니다."
									</div>
								</p>
							</section>
							<div class="flex-row-bottom-twice">
								<div class="flex-column-fixed">
									<div class="cool-checkbox" checked="checked">
										<input type="checkbox" class="checked">
										<div class="checkbox-inner">
											<span class="check"></span>
										</div>
									</div>
								</div>
								<span class="flex-column-fixed">휴가 종류 사용 설정</span>
							</div>
						</div>
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">기본 휴가일수 설정</div>
								<p>본 휴가 종류의 기본 휴가일수를 지정할 수 있습니다.</p>
							</section>
							<div class="flex-row-bottom-twice">
								<div class="cool-checkbox-column" checked="checked" disabled="disabled">
									<input type="checkbox" disabled="disabled" class="checked2">
									<div class="checkbox-inner">
										<span class="check"></span>
									</div>
								</div>
								<div class="flex-column-fixed">
									<span>기본</span>
								</div>
								<div class="flex-column-fixed">
									<div class="vacation-count-input">
										<div class="flex-column-narrow">
											<input type="text" class="input-width-small">
										</div>
										<div class="flex-column-text">
											<span>일</span>
										</div>
										<div class="flex-column-narrow">
											<span class="select-width-small">
												<select>
													<!--  -->
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
												</select>
												
											</span>
										</div>
										<div class="flex-column-text2">
											<span>시간 으로 지정</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">최소 휴가일수 설정</div>
								<p>본 휴가 종류의 신청 건당 최소로 신청 사능한 휴가일수를 지정할 수 있습니다.</p>
							</section>
							<div class="flex-row-bottom-twice">
								<div class="flex-column-fixed">
									<div class="cool-checkbox">
										<input type="checkbox" class="">
										<div class="checkbox-inner">
											<span class="check"></span>
										</div>
									</div>
								</div>
								<div class="flex-column-fixed">
									<span class="spacing">취소</span>
								</div>
								<div class="flex-column-fixed">
									<div class="vacation-count-input-wrap">
										<div class="flex-column-narrow">
											<input type="text" class="input-width-small">
										</div>
										<div class="flex-column-text">
											<span>일</span>
										</div>
										<div class="flex-column-narrow">
											<span class="select-width-small">
												<select>
													<!--  -->
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
												</select>
												
											</span>
										</div>
										<div class="flex-column-text">
											<span>시간 이상 신청 가능</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">최대 휴가일수 설정</div>
								<p>본 휴가 종류의 신청 건당 최대로 신청 가능한 휴가일수를 지정할 수 있습니다.</p>
							</section>
							<div class="flex-row-bottom-twice">
								<div class="flex-column-fixed">
									<div class="cool-checkbox" checked="checked">
										<input type="checkbox" class="checked">
										<div class="checkbox-inner">
											<span class="check"></span>
										</div>
									</div>
								</div>
								<div class="flex-column-fixed">
									<span class="spacing">최대</span>
								</div>
								<div class="flex-column-fixed">
									<div class="vacation-count-input-wrap">
										<div class="flex-column-narrow">
											<input type="text"  class="input-width-small">
										</div>
										<div class="flex-column-text">
											<span>일</span>
										</div>
										<div class="flex-column-narrow">
											<span class="select-width-small">
												<select>
													<!--  -->
													<option value="0">0</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
												</select>
												
											</span>
										</div>
										<div class="flex-column-text">
											<span>시간 이하 신청 가능</span>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
				</section>
				<section class="modal-card-footer-notification" style="position:relative;">
					<div class="form-error">
					
					</div>
					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
					type="text/html" data="about:blank">
						#document
							<html>
								<head></head>
								<body></body>
							</html>
					</object>
				</section>
				<footer class="modal-card-foot">
					<div class="modal-footer">
						<button type="submit" class="button-is-primary">저장</button>
						<a class="button">닫기</a>
					</div>
					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden; pointer-events: none; z-index: -1;"
					type="text/html" data=about:blank>
						#document
							<html>
								<head></head>
								<body></body>
							</html>
					</object>
				</footer>
			</div>
			<!--  -->
		</div>
	</form>


























</body>
</html>