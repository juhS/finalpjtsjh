<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>
<style>
/*휴가일수부여정책추가수정창 스타일*/
#vacatoin-grant-policy-addmodify{
display: block;
margin-top: 0em;
}
.card-modal-active{
display: flex;
z-index: 1000;
-webkit-box-align: center;
align-items: center;
-webkit-box-pack: center;
justify-content: center;
overflow: hidden;
position: fixed;
bottom: 0;
left: 0;
right: 0;
top: 0;
}
.modal-background{
background-color: rgba(10,10,10,0.35);
bottom: 0;
left: 0;
position: absolute;
right: 0;
top: 0;
}
.modal-content-wrapper-card{
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
background-color: #f5f5f5;
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
}
.subheader-block{
margin-bottom: 20px;
display: block;
}
.sub-header-text{
font-size: 1rem;
font-weight: bold;
margin-bottom: 10px;
}
.flex-row-bottom-twice{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
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
margin: 0;
}
.flex-row-bottom-twice-wrap{
flex-wrap: wrap;
margin-bottom: 10px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
}
.felx-column-fixed{
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
font-style: inherit;
font-weight: inherit;
}
.flex-column-fixed-narrow{
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
.flex-column-fixed2{
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
.flex-column-fixed3{
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
.flex-row{
margin-bottom: 0px;
display: flex;
-webkit-box-pack: start;
justify-content: flex-start;
-webkit-box-align: center;
align-items: center;
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
.input-width-small{
width: 55px;
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
margin: 0;
}
.flex-column-fixed-label-text{
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
.select-width-small{
width: 55px;
height: 2.25em;
display: inline-block;
max-width: 100%;
position: relative;
vertical-align: top;
font-style: inherit;
font-weight: inherit;
}
.flex-column-fixed-label-text2{
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
.cool-checkbox-flex-column{
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
.checked{
/*
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
*/
}
select{
padding-right: 2.5em;
background-color: #fff;
border-color: #dbdbdb;
color: #404040;
cursor: pointer;
display: block;
font-size: 1em;
max-width: 100%;
outline: none;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
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
overflow: visible !important;
}
.modal-card-footer-notification{
-webkit-box-flex: 0;
flex: 0 0 auto;
display: block;
}
.modal-card-foot{
border-bottom-left-radius: 5px;
border-bottom-right-radius: 5px;
border-top: 1px solid #dbdbdb;
-webkit-box-align: center;
align-items: center;
background-color: #f5f5f5;
display: flex;
flex-shrink: 0;
-webkit-box-pack: start;
justify-content: flex-start;
padding: 20px;
position: relative;
}
.modal-footer{
display: flex;
-webkit-box-orient: horizontal;
-webkit-box-direction: normal;
flex-direction: row;
-webkit-box-pack: end;
justify-content: flex-end;
width: 100%;
}
.button-is-primary{
margin-right: 10px;
background-color: yellow;
border-color: transparent;
color: black;
border-width: 1px;
cursor: pointer;
-webkit-box-pack: center;
justify-content: center;
padding-bottom: calc(0.375em - 1px);
padding-left: .75em;
padding-right: .75em;
padding-top: calc(0.375em - 1px);
text-align: center;
white-space: nowrap;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
line-height: 1.5;
vertical-align: top;
user-select: none;
margin: 0;
}
.button{
background-color: yellow;
border-color: #dbdbdb;
border-width: 1px;
color: black;
cursor: pointer;
-webkit-box-pack: center;
justify-content: center;
padding-bottom: calc(0.375em - 1px);
padding-left: .75em;
padding-right: .75em;
padding-top: calc(0.375em - 1px);
text-align: center;
white-space: nowrap;
-webkit-box-align: center;
align-items: center;
border: 1px solid transparent;
border-radius: 3px;
box-shadow: none;
display: inline-flex;
font-size: 1rem;
height: 2.25em;
line-height: 1.5;
position: relative;
vertical-align: top;
user-select: none;
text-decoration: none;
}
</style>
</head>
<body>


	<!-- 휴가 일수 부여 정책 추가 수정  -->
	<form action="#" class="app-form-modal" id="vacatoin-grant-policy-addmodify">
		<div class="card-modal-active">
			<div class="modal-background"></div>
			<div class="modal-content-wrapper-card" style="max-height:887px;">
				<header class="modal-card-head">
					<p title="휴가일수 부여 정책" class="modal-card-title">휴가 일수 부여 정책</p>
					<button type="button" class="delete-modal-flex-column">
						
						
					</button>
					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%;
    				overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about/blank">
						#document
							<html>
								<head></head>
								<body></body>
							</html>
					</object>
				</header>
				<section class="modal-card-body-paddingless" style="max-height:calc(754px);">
					<div class="remote-contents">
						<!--  -->
						<!--  -->
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">휴가 부여 정책 제목</div>
								<p>휴가 부여 정책의 이름을 정의합니다</p>
							</section>
							<div class="flex-row-bottom-twice">
								<input placeholder="새로운 휴가 부여 정책 이름" class="input">
							</div>
						</div>
						<div class="card-section-item">
							<section class="subheader-block">
								<div class="sub-header-text">2. 휴가 일수 부여 정책 기준 정의</div>
								<p>휴가일수 부여가 실행될 기준을 정의합니다.</p>
							</section>
							<div class="flex-row-bottom-twice-wrap">
								<div class="felx-column-fixed">
									<span class="select">
										<select>
											<option value="2">입사일</option>
											<option value="1">회계연도</option>
										</select>
										
									</span>
								</div>
								<div class="flex-column-fixed">
									<span>로부터</span>
								</div>
								<div class="flex-column-fixed-narrow"> 
									<span class="select">
										<select>
											<option value="">선택</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
											<option value="13">13</option>
											<option value="14">14</option>
											<option value="15">15</option>
											<option value="16">16</option>
											<option value="17">17</option>
											<option value="18">18</option>
											<option value="19">19</option>
											<option value="20">20</option>
											<option value="21">21</option>
											<option value="22">22</option>
											<option value="23">23</option>
											<option value="24">24</option>
											<option value="25">25</option>
											<option value="26">26</option>
											<option value="27">27</option>
											<option value="28">28</option>
											<option value="29">29</option>
											<option value="30">30</option>
											<option value="31">31</option>
											<option value="32">32</option>
											<option value="33">33</option>
											<option value="34">34</option>
											<option value="35">35</option>
											<option value="36">36</option>
											<option value="37">37</option>
											<option value="38">38</option>
											<option value="39">39</option>
											<option value="40">40</option>
											<option value="41">41</option>
											<option value="42">42</option>
											<option value="43">43</option>
											<option value="44">44</option>
											<option value="45">45</option>
											<option value="46">46</option>
											<option value="47">47</option>
											<option value="48">48</option>
											<option value="49">49</option>
											<option value="50">50</option>		
										</select>
										
									</span>
								</div>
								<div class="flex-column-fixed">
									<span class="select">
										<select>
											<option value="Y">년</option>
											<option value="M">개월</option>
											<option value="D">일</option>
										</select>
										
									</span>
								</div>
								<div class="flex-column-fixed2">
									<span>이 시작되는 해당 임직원에게</span>
								</div>
							</div>
							<div class="flex-row-bottom-twice-wrap">
								<div class="flex-column-fixed3">
									<span>연차 유급 휴가</span>
								</div>
								<div class="flex-column-fixed-narrow">
									<div class="flex-row">
										<div class="flex-column-fixed">
											<div class="vacation-count-input-wrap">
												<div class="flex-column-fixed-narrow">
													<input type="text" class="input-width-small">
												</div>
												<div class="flex-column-fixed-label-text">
													<span>일</span>
												</div>
												<div class="flex-column-fixed-narrow">
													<span class="select-width-small">
														<select>
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
												<div class="flex-column-fixed-label-text2">
													<span>시간</span>
												</div>
											</div>
										</div>
										<div class="flex-column-fixed">
											<span>일 부여</span>
										</div>
									</div>
								</div>
							</div>
							<div class="flex-row-bottom-twice-wrap">
								<div class="cool-checkbox-flex-column" checked="checked">
									<input type="checkbox" class="checked">
									<div class="checkbox-inner">
										<span class="check"></span>
									</div>
								</div>
								<span class="flex-column-fixed">잔여 휴가일수를</span>
								<div class="flex-column-fixed">
									<span class="select">
										<select>
											<option value="">휴가 종류</option>
											<option value="100">오전 반차 휴가</option>
											<option value="101">오후 반차 휴가</option>
											<option value="102">연차 휴가</option>
										</select>
										
									</span>
								</div>
								<span class="flex-column-fixed2">로 모두 차감 휴 휴가일수 부여</span>
							</div>
							<div class="flex-row-bottom-twice-wrap">
								<div class="cool-checkbox-flex-column" checked="checked">
									<input type="checkbox" class="checked">
									<div class="checkbox-inner">
										<span class="check"></span>
									</div>
								</div>
								<span class="flex-column-fixed">초과 휴가일수를</span>
								<div class="flex-column-fixed">
									<span class="select">
										<select>
											<option value="">휴가 종류</option>
											<option value="">오전 반차 휴가</option>
											<option value="">오후 반차 휴가</option>
											<option value="">연차 휴가</option>
										</select>
										
									</span>
								</div>
								<span class="flex-column-fixed2">로 모두 정산 후 휴가일수 부여</span>
							</div>
						</div>
						<!--  -->
					</div>
				</section>
				<section class="modal-card-footer-notification" style="position:relative;">
					<div class="form-erroe">
						<!--  -->
					</div>
					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    				width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about/blank">
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
					<object style="display: block; position: absolute; top: 0; left: 0; height: 100%;
    				width: 100%; overflow: hidden; pointer-events: none; z-index: -1;" type="text/html" data="about/black">
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
<!-- 휴가 일수 부여 정책 추가 수정 끝  -->









</body>
</html>