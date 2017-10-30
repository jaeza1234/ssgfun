<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<style type="text/css">
.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.roulEvent {
	position: absolute;
 	top: 140px; 
	width: 100%;
	height: 25%;
}
.lottoEvent {
	position: absolute;
	top: 345px;
	width: 100%;
	height: 25%;
}
.luckEvent {
	position: absolute;
	top: 550px;
	width: 100%;
	height: 25%;
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
		<img class="bgimg" src="/resources/assets/img/funlist/fun_noneBottom.png">
		
		
		<a href="/roul/roul.fun">
			<div class="roulEvent"></div>
		</a>

		<a href="/lotto/myLotto.fun">
			<div class="lottoEvent"></div>
		</a>

		<a href="/luck/main.fun">
			<div class="luckEvent"></div>
		</a>

		<a href="main.fun">
			<div class="backpage"></div>
		</a>
		
	</div>
</body>
</html>