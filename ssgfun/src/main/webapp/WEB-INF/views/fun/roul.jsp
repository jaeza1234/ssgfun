<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> prototype about roulette </title>
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="../resources/js/jQueryRotate.js"></script>
<style type="text/css">

#image{
    margin:50px 50px;
	position:absolute;
	top: 230px; 
	left: 165px;
	width: 60%;
}

#n_id{
	position:absolute;
	top:237px;
	left:484px;
	width: 5%;
}

.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.roulEvent {
	position: absolute;
 	top: 344px; 
	width: 100%;
	height: 25%;
}
.roulette_bg {
	position: absolute;
	top: 210px;
	left: 21px;
}
#roulette_bg {
	width: 150%;
}
.luckEvent {
	position: absolute;
	top: 1162px;
	width: 100%;
	height: 25%;
}
.backpage {
	position: absolute;
	top: 70px;
	left: 10px;
	width: 150px;
	height: 150px;
}

</style>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/roul/ssg_game.png">

		<a href="main.fun">
			<div class="backpage"></div>
		</a>
		
		<div class=""></div>

		<div class="roulette_bg">
			<img src="/resources/assets/img/roul/roulette_bg.png" id="roulette_bg">
		</div>
		
		<div id="start_btn"><img src="/resources/assets/img/roul/roulette.png" id="image"></div>
		<img src="/resources/assets/img/roul/niddle.png" id="n_id">
	</div>
</body>
</html>