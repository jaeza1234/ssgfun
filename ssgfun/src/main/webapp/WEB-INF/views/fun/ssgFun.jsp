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
	href="/resources/assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<link rel="stylesheet" href="/resources/assets/font-awesome-4.7.0/css/font-awesome.min.css">
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

.game, .lotto, .luck {
	width: 100%;
	height: 200px;
}

.game {
	background-color: lightcoral;
}
.lotto {
	background-color: aliceblue;
}
.luck {
	background-color: gainsboro;;
}

.page-head {
	text-align: center;
}
</style>
</head>
<body>
<h2>SSG FUN</h2>

<!-- <a href="/roul/roul.fun" >쓱겜</a><br><br> -->
<!-- <a href="/lotto/myLotto.fun" >로또</a><br><br> -->
<!-- <a href="/luck/main.fun" >오늘의 운세</a> -->

</body>
</html>
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
				간단한 게임과 함께 즐거운 하루 되세요
			</div>
			<div class="main-content">
				<div class="game">
					<a href="/roul/roul.fun">쓱- 겜</a>
				</div>
				<div class="lotto">
					<a href="/lotto/myLotto.fun">로또</a>
				</div>
				<div class="luck">
					<a href="/luck/main.fun">오늘의 운세</a>
				</div>
			</div>
		</div>
		
	</div>
	<script src="/resources/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="/resources/assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"	
		type="text/javascript"></script>
		<!-- <script src="/resources/assets/js/main.js" type="text/javascript"></script> -->
	<script src="/resources/assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			App.init();
		});
	</script>
</body>
