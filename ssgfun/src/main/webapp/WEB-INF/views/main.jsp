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


</style>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/main.png">
		
		<div class="eventD" onclick="location.href='/eventDetail.fun'">
		</div>
		<div class="recharge" onclick="location.href='/recharge.fun'">
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
	<script src="/resources/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
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
