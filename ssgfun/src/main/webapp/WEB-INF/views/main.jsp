<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Amaretti</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
<link rel="stylesheet" href="/resources/assets/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<style type="text/css">


.s7-menu2:before {
	content: none;
}
.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	
}
.sidebarimg {
	width: 100%;
	height: auto;
}
.fun {
	color: #222;
}
.chulcheck {
	position: absolute;
	top: 620px;
	left: 172px;
	width: 70px;
	height: 70px;
}
.chulchecktext {
	position: relative;
	top: 65px;
	left: 20px;
	color: #555555;
}

.funDiv {
	position: absolute;
	top: 620px;
	left: 260px;
	width: 70px;
	height: 70px;
}
.rechargeSmall {
	position: absolute;
	top: 480px;
	left: 20px;
	width: 70px;
	height: 70px;
}
.content {
	
}
.check {
	color: #fff;
}
.checkDiv {
	position: absolute;
	top: 65px;
	left: 192px;
	width: 62px;
	height: 20px;
}
.eventD{
	position: absolute;
    top: 137px;
    width: 84%;
    height: 250px;
}
.recharge{
	position: absolute;
    top: 385px;
    width: 84%;
    height: 120px;
}
.s7-menu2:before; {
    content: none;
}
    
.right {
	width: 85px;
	height: 55px;
}

.left {
	width: 55px;
	height: 65px;
}
.setting {
	position: absolute;
	top: 880px;
	left: 172px;
	width: 70px;
	height: 70px;
}
.moneyText {
	position: relative;
	top: 75px;
	left: 100px;
	font-size: 20px;
	font-weight: bold;
	color: #8c97ad;
	width: 200px;
}

</style>
<script src="/resources/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
<script type="text/javascript">

$(document).ready(function() {
  // 입력 값 알아내기
  var value = ${myInfo.umoney};
  // 천단위 콤마 추가한 결과값 리턴
  var result = addComma(value);
  $('.moneyText').html(result + ' 원');
});
// 천단위 마다 콤마(,) 추가하는 함수
function addComma(value) {
  var num = isNumber(value);
  if (!num) return;

  // 문자열 길이가 3과 같거나 작은 경우 입력 값을 그대로 리턴
  if (num.length <= 3) {
    return num;
  }

  // 3단어씩 자를 반복 횟수 구하기
  var count = Math.floor((num.length - 1) / 3);

  // 결과 값을 저정할 변수
  var result = "";

  // 문자 뒤쪽에서 3개를 자르며 콤마(,) 추가
  for (var i = 0; i < count; i++) {

    // 마지막 문자(length)위치 - 3 을 하여 마지막인덱스부터 세번째 문자열 인덱스값 구하기
    var length = num.length;
    var strCut = num.substr(length - 3, length);
    // 반복문을 통해 value 값은 뒤에서 부터 세자리씩 값이 리턴됨.

    // 입력값 뒷쪽에서 3개의 문자열을 잘라낸 나머지 값으로 입력값 갱신
    num = num.slice(0, length - 3);

    // 콤마(,) + 신규로 자른 문자열 + 기존 결과 값
    result = "," + strCut + result;
  }

  // 마지막으로 루프를 돌고 남아 있을 입력값(value)을 최종 결과 앞에 추가
  result = num + result;

  // 최종값 리턴
  return result;
}

// 숫자 유무 판단
function isNumber(checkValue) {
  checkValue = '' + checkValue;
  if (isNaN(checkValue) || checkValue == "") {
    alert('숫자만 입력해 주세요!!!');
    return;
  }
  return checkValue;
}
</script>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/main.png">
		
		<div class="eventD" onclick="location.href='/eventDetail.fun'">
		</div>
		<div class="recharge" onclick="location.href='/recharge.fun'">
			<div class="moneyText">${myInfo.umoney} 원</div>
		</div>
		
		<nav class="navbar navbar-default navbar-fixed-top am-top-header">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="#" class="am-toggle-left-sidebar navbar-toggle collapsed left"><span
						class="icon-bar"><span></span><span></span><span></span></span></a>
				</div>
				
				<a href="/event.fun" class="am-toggle-right-sidebar right">
					<span class="s7-menu2">&nbsp;</span>
				</a>
				
			</div>
		</nav>
		<div class="am-left-sidebar">
			<div class="content">
			<img class="sidebarimg" src="/resources/assets/img/bgimg/sidebar02.png">
				
				<div class="rechargeSmall" onclick="location.href='/recharge.fun'">
				</div>
				<div class="chulcheck" onclick="location.href='/user/att.fun'">
					<div class="chulchecktext">출석체크</div>
				</div>
				<div class="funDiv" onclick="location.href='/ssgFun.fun'">
				</div>
				<div class="setting" onclick="javascript:window.ssgfun.setMessage('gogogogo');"></div>

				<a href="/user/att.fun">
					<div class="checkDiv">
					</div>
				</a>
			</div>
		</div>
	</div>
	
	<script
		src="/resources/assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script>
	<script src="/resources/assets/js/main.js" type="text/javascript"></script>
	<script src="/resources/assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
		});
	</script>
</body>
</html>
