<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"></html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Amaretti</title>
<link rel="stylesheet" type="text/css"
	href="assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<link rel="stylesheet" href="assets/css/style.css" type="text/css" />
<link rel="stylesheet" href="assets/font-awesome-4.7.0/css/font-awesome.min.css">
<style type="text/css">
.page-title {
	color: #222;
}
.navbar-header> .prev {
	position: absolute;
	left: 25px;
	top: 20px;
}
body {
	background-color: #fff;
}

.main-content {
	text-align: center;
}


.container {
  position: absolute;
  width: 700px;
  height: 700px;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%) rotate(0deg);
}

.roulette {
  width: 300px;
  height: 300px;
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  transform-origin: center;
}

.roll-btn {
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  padding: 20px;
}

.reset-btn {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  padding: 20px;
}

.pin {
  width: 18px;
height: 29px;
position: absolute;
top: 393px;
	left: 50%;
}

.rcon {
	width: 50%;
	height: 50%;
}
.rouletteImg {
	width: 300px;
	height: 300px;
}
.pinImg {
	width: 18px;
  height: 29px;
}

.textarea {
	margin: 0 auto;
	width: 200px;
	max-width: 100%;
	text-align: center;
	bottom: 100px;
}
</style>
</head>
<body>
	<div class="am-wrapper">
		<nav class="navbar navbar-default navbar-fixed-top am-top-header">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="index.jsp" class="prev"><i class="fa-2x icon-bar fa fa-arrow-left" aria-hidden="true"></i></a>
					<div class="page-title">
						<span>SSG FUN</span>
					</div>
				</div>
				
			</div>
		</nav>
		
		<div class="am-content">
			<div class="page-head">
			</div>
			<div class="main-content">
				<div class="container">
				  <div class="roulette">
				  	<img class="rouletteImg" src="assets/img/bgimg/roullet.png">
				  </div>
				  <div class="pin">
				  	<img class="pinImg" src="assets/img/bgimg/pin.png">
				  </div>
				  <button class="roll-btn">ROLL</button>
				</div>
				<div class="textarea">
					소유한 열매 1개를 사용하여 룰렛게임 1회 참여 가능
					<br>
					<a href="check.jsp">출석체크 GO</a>
					<br>
					<a href="luck.jsp">오늘의운세 GO</a>
					<br>
					<a href="#">SSG Money 충전 GO</a>
				</div>
			</div>
		</div>
		
	</div>
	<script src="assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script><!-- 
	<script src="assets/js/main.js" type="text/javascript"></script> -->
	<script src="assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
		});
	</script>
	
	<script type="text/javascript">
	var curDeg = 0;
	$('.reset-btn').click(function(){
	  $('.roulette').animate(
	    {rotation: 0},
	    {
	      duration: 2000,
	      step: function(now, fx) {
	        $(this).css({"transform": "translate(-50%, -50%) rotate("+now+"deg)"});
	        curDeg = 0;
	      }
	    }
	  );
	});

	$('.roll-btn').click(function(){
	  // var rand = (Math.random() * 4) * (Math.random() * 6);
	  var rand = Math.random() * (90 - 30) + 30;
	  var rot = curDeg + rand * 360;
	  
	  console.log("rot: " + rot);
	  console.log("curDeg: " + rot);
	  $('.roulette').animate(
	    {rotation: rot},
	    {
	      duration: 2000,
	      step: function(now, fx) {
	        $(this).css({"transform": "translate(-50%, -50%) rotate("+now+"deg)"});
	        curDeg = rot;
	      }
	    }
	  );
	});
	</script>
</body>