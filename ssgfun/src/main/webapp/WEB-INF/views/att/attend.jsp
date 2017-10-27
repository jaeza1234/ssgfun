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
/* .am-wrapper {
	background-color: #fff;
} */
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


:before,
:after {
  content: "";
  position: absolute;
}

.container {
  width: 140px;
  margin: 280px auto 40px auto;
  position: relative;
}

.pot {
  background: #ee7d15;
  position: relative;
}

.pot > div {
  position: absolute;
}

.pot-bot {
  width: 100px;
  height: 100px;
}

.pot-bot:before {
  top: 0;
  left: -15px;
  border-left: 15px solid transparent;
	border-right: 0px solid transparent;	
	border-top: 100px solid #ee7d15;
}

.pot-bot:after {
  top: 0;
  right: -15px;
  border-left: 0px solid transparent;
	border-right: 15px solid transparent;	
	border-top: 100px solid #ee7d15;
}

.pot-top {
  width: 140px;
  height: 25px;
  top: -25px;
  left: 50%;
  margin-left: -70px;
}

.pot-top:before {
  left: -5px;   
  top: 0;
  border-left: 5px solid transparent;
	border-right: 0px solid transparent;	
	border-top: 25px solid #ee7d15;
}

.pot-top:after {
  right: -5px;   
  top: 0;
  border-right: 5px solid transparent;
	border-left: 0px solid transparent;	
	border-top: 25px solid #ee7d15;
}

.pot-shadow {
  z-index: 3;
  width: 125px;
  height: 10px;
  background: rgba(220,84,0,0.2);
  left: 50%;
  top: 0;
  margin-left: -62.5px;
}


.shadow {
  background: rgba(220, 84,0,0.1);
  z-index: -1; 
  bottom: -5px;
  left: 50%;
  margin-left: -60px;
  width: 120px;
  height: 10px;
	border-radius: 120px / 10px;
}

.plant {
  height: 280px;
  background: #00c975;
  width: 8px;
  z-index: -1;
  bottom: 0;
  left: 50%;
  margin-left: -8px;
  border-radius: 16px 16px 0 0;
}

.plant > div {
  position: absolute;
}

.plant:before {
  height: 275px;
  width: 4px;
  right: 0;
  bottom: 0;
  background: rgba(60,188,131,0.5);
  border-radius: 0 30px 0 0;
}

.plant:after {
  left: 10px;
  top: 110px;
  width: 0px;
  height: 0px;
  border-radius: 100px 0px 100px 0px;
  background:#3cbc83;
  transform: rotate(-20deg);
}

.head {
  width: 50px;
  height: 50px;
  left: 50%;
  top: -15px;
  margin-left: -25px;
  border-radius: 50px;
  background:  #fda342
}

.face {
  background: #a3430c;
  width: 20px;
  height: 20px;
  border-radius: 25px;
  position: absolute;
  margin-top: -10px;
  margin-left: -10px;
  top: 50%;
  left: 50%;
}

li {
  list-style: none;
 	width:50px;
  height:30px;
  position: absolute; 
  float:left;
  border-radius: 100px 0px 100px 0px;
}

li:nth-child(1) {
top: -26px;
left: 44px;
transform: rotate(-6deg);
background-color: #da2128;
}

li:nth-child(2) {
top: 17px;
right: 54px;
transform: rotate(11deg);
background-color: #da2128;
}

li:nth-child(3) {
top: 54px;
right: 33px;
transform: rotate(-20deg);
background-color: #da2128;
}

li:nth-child(4) {
top: 21px;
left: 53px;
transform: rotate(-138deg);
background-color: #da2128;
}

li:nth-child(5) {
top: 60px;
left: 22px;
transform: rotate(-91deg);
background-color: #da2128;
}

li:nth-child(6) {
bottom: 67px;
left: 1px;
transform: rotate(-63deg);
background-color: #da2128;
}

li:nth-child(7) {
bottom: 49px;
right: 44px;
transform: rotate(-116deg);
background-color: #da2128;
}


/* animation controls */ 

.plant, .plant:before {
  animation: grow 4s ease-out forwards;
}

.head {
  transform: scale(0.4); 
  animation-name: flower, rota;
  animation-duration: 3s, 15s;
  animation-timing-function: ease-out, ease-out;
  animation-fill-mode: forwards;
  animation-delay: 1s, 4s;
}
.plant:after {
  animation: leaf 5s ease-out forwards;
  animation-delay: 4s;
}

@keyframes grow {
  from { height : 50px; }
  to { height : 280px ; }
}

@keyframes flower {
  from { transform: scale(0.4); }
  to { transform: scale(1); }
}

@keyframes rota {
  from { transform : rotate(0); }
  to { transform : rotate(360deg); }
}

@keyframes leaf {
  from { width : 0px; height: 0; }
  to {   width: 40px; height: 20px; }
}

.fruit {
	width: 20px;
	height: 20px;
}
.textarea {
	margin: 0 auto;
	width: 200px;
	max-width: 100%;
	text-align: center;
}

.water {
	width: 150px;
	height: 150px;
	position: absolute;
	left: -92px;
	top: -342px;
}

.fruittxt {
	margin: 0 auto;
}

</style>
</head>
<body>
	<div class="am-wrapper">
		<nav class="navbar navbar-default navbar-fixed-top am-top-header">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="/main.fun" class="prev"><i class="fa-2x icon-bar fa fa-arrow-left" aria-hidden="true"></i></a>
					<div class="page-title">
						<span>출석체크</span>
					</div>
				</div>
				
			</div>
		</nav>
		
		<div class="am-content">
			<div class="page-head">
			</div>
			<div class="main-content">
				<div class="container">
				
					<button  id="attCheck" type="button" onfocus="this.onblur()"><img class="water" src="/resources/assets/img/water01.png" id="waterImg"></button>
					
				  <!-- Plant pot -->
				  <div class="pot pot-bot">
				    <div class="shadow"></div>
				    <div class="pot pot-shadow"></div>
				    <div class="pot pot-top"></div>
				    
				    <!-- Plant -->
				    <div class="plant">
				      <div class="head">
				      <!--div class="face"></div-->
				      <ul>
				          <li></li>
				          <li></li>
				          <li></li>
				          <li></li>
				          <li></li>
				          <li></li>
				          <li></li>
				        </ul>
				       </div>
				    </div>
				    
				  </div>
				</div>
				<div class="textarea">
					<div class="fruittxt">
						열매 <img class="fruit" src="/resources/assets/img/Cherry.png"> &nbsp;&nbsp;&nbsp;&nbsp; ${attInfo.eacnt }&nbsp;개
					</div>
					<br><br>
					<a href="/ssgFun.fun">열매 사용하러 가기 GO</a>
				</div>
			</div>
		</div>
		
	</div>
	<script src="/resources/assets/lib/jquery/jquery.min.js" type="text/javascript"></script>
	<script
		src="/resources/assets/lib/jquery.nanoscroller/javascripts/jquery.nanoscroller.min.js"
		type="text/javascript"></script><!-- 
	<script src="/resources/assets/js/main.js" type="text/javascript"></script> -->
	<script src="/resources/assets/lib/bootstrap/dist/js/bootstrap.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			//initialize the javascript
			//App.init();
			
			
			$('#attCheck').click(function() {
//		 		alert('클릭');
				$('#waterImg').prop("src","/resources/assets/img/water02.png");
				
				$.ajax({
					url: 'attCheck.fun',
					type: 'post',
					dataType: 'json',
					success: function(data) {
						if (data==1) {
							alert('오늘 출석 성공!!');
						}else if(data==0){
							alert('하루 1번만 출석체크!!');
						};
						
						$('#waterImg').prop("src","/resources/assets/img/water01.png");
					}
				});
			});
		});
	</script>
</body>