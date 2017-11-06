<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<style type="text/css">
body {
	background-color: #fff;
}

.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.roulEvent {
	position: absolute;
 	top: 125px; 
	width: 100%;
	height: 20%;
	background-image: url('/resources/assets/img/funlist/funlist_1.png');
	background-size: 100% 100%;
}
.lottoEvent {
	position: absolute;
	top: 275px;
	width: 100%;
	height: 20%;
	background-image: url('/resources/assets/img/funlist/funlist_2.png');
	background-size: 100% 100%;
}
.luckEvent {
	position: absolute;
	top: 425px;
	width: 100%;
	height: 20%;
	background-image: url('/resources/assets/img/funlist/funlist_3.png');
	background-size: 100% 100%;
}
.backpage {
	position: absolute;
	top: 0;
	left: 0;
	width: 80px;
	height: 80px;
}

</style>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/funlist/fun_header_txt.png">
		
		
		<a href="/roul/roul.fun">
			<div class="roulEvent"></div>
		</a>

		<a href="/lotto/myLotto.fun">
			<div class="lottoEvent"></div>
		</a>

		<a href="/luck/main.fun">
			<div class="luckEvent"></div>
		</a>

		<a href="javascript:history.back();">
			<div class="backpage"></div>
		</a>
		
	</div>
</body>
</html>