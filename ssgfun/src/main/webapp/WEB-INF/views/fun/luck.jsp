<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<link rel="stylesheet"
	href="/resources/assets/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/style.css"
	type="text/css" />

<!-- Bootstrap -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/css/kfonts2.css" rel="stylesheet">
<style type="text/css">
body {
	font-size: 35px;
}

.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}

.backpage {
	position: absolute;
	top: 15px;
	left: 10px;
	width: 150px;
	height: 150px;
}

.fruit {
	position: absolute;
	top: 205px;
	left: 480px;
	width: 100px;
	height: 100px;
	font-size: 45px
}

.textArea {
	position: absolute;
	top: 1280px;
	left: 45px;
	width: 92%;
	height: 500px;
}

.checked {
	width: 150%;
	height: 150%;
}

.mouse {
	position: absolute;
	top: 456px;
	left: 62px;
	width: 120px;
	height: 120px;
}

.caw {
	position: absolute;
	top: 456px;
	left: 291px;
	width: 120px;
	height: 120px;
}

.tiger {
	position: absolute;
	top: 456px;
	left: 512px;
	width: 120px;
	height: 120px;
}

.rabbit {
	position: absolute;
	top: 456px;
	left: 737px;
	width: 120px;
	height: 120px;
}

.dragon {
	position: absolute;
	top: 719px;
	left: 62px;
	width: 120px;
	height: 120px;
}

.snake {
	position: absolute;
	top: 719px;
	left: 291px;
	width: 120px;
	height: 120px;
}

.horse {
	position: absolute;
	top: 719px;
	left: 512px;
	width: 120px;
	height: 120px;
}

.sheep {
	position: absolute;
	top: 719px;
	left: 737px;
	width: 120px;
	height: 120px;
}

.monkey {
	position: absolute;
	top: 982px;
	left: 62px;
	width: 120px;
	height: 120px;
}

.chicken {
	position: absolute;
	top: 982px;
	left: 291px;
	width: 120px;
	height: 120px;
}

.dog {
	position: absolute;
	top: 982px;
	left: 512px;
	width: 120px;
	height: 120px;
}

.pig {
	position: absolute;
	top: 982px;
	left: 737px;
	width: 120px;
	height: 120px;
}

.txt {
    margin-top: 10px;
	overflow: scroll;
	border: 0;
}
.container {
	width: 100%;
	margin: 0 auto;
}
.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
 		height: 600px;
    }
}
.modal-dialog.modal-fullsize { 
	width: 1000px; 
	height: auto;
	margin: 0 auto;
	display: inline-block;
	text-align: left;
	vertical-align: middle; 
	padding: 0;
	position: absolute;
	top: 450px;
	left: 0px; 
}
.modal-content.modal-fullsize {
	height: auto;
	min-height: 100%;
	border-radius: 20px; 
}

.modal-content {
	background-image: url("/resources/assets/img/roul/popup_box2.png");
	background-repeat: no-repeat;
	background-size: 100%;
	text-align: center;
}

.btn-default {
	border-color: transparent;
}
.modal-footer {
	background-color: #ffffff;
	border-top: transparent;
	text-align: center;
}
.modal-title {
	padding-top: 0px;
	color: #fff;
	font-size: 45px;
}
</style>
</head>

<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/unse_long.png"> <a
			href="javascript:history.back();">
			<div class="backpage"></div>
		</a>

		<div class="fruit">
			<span id="fcnt">${attInfo.eacnt }</span>
		</div>

		<div class="mouse" onclick="unse('mouse')">
			<img alt="" src="" id="mouse" class="checked">
		</div>
		<div class="caw" onclick="unse('caw')">
			<img alt="" src="" id="caw" class="checked">
		</div>
		<div class="tiger" onclick="unse('tiger')">
			<img alt="" src="" id="tiger" class="checked">
		</div>
		<div class="rabbit" onclick="unse('rabbit')">
			<img alt="" src="" id="rabbit" class="checked">
		</div>

		<div class="dragon" onclick="unse('dragon')">
			<img alt="" src="" id="dragon" class="checked">
		</div>
		<div class="snake" onclick="unse('snake')">
			<img alt="" src="" id="snake" class="checked">
		</div>
		<div class="horse" onclick="unse('horse')">
			<img alt="" src="" id="horse" class="checked">
		</div>
		<div class="sheep" onclick="unse('sheep')">
			<img alt="" src="" id="sheep" class="checked">
		</div>

		<div class="monkey" onclick="unse('monkey')">
			<img alt="" src="" id="monkey" class="checked">
		</div>
		<div class="chicken" onclick="unse('chicken')">
			<img alt="" src="" id="chicken" class="checked">
		</div>
		<div class="dog" onclick="unse('dog')">
			<img alt="" src="" id="dog" class="checked">
		</div>
		<div class="pig" onclick="unse('pig')">
			<img alt="" src="" id="pig" class="checked">
		</div>

		<div class="textArea">
			<!-- <span id="txt"></span>조회하실 띠의 동물을 선택하세요!!! -->

			<!-- <span id="date"></span>
			<textarea readonly="readonly" id='txt' cols="28" rows="12">조회하실 동물을 클릭하세요!!</textarea> -->
			<div class="container">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">오늘 </a></li>
					<li><a href="#tab1" data-toggle="tab">내일</a></li>
					<li><a href="#tab2" data-toggle="tab">이번주</a></li>
					<li><a href="#tab3" data-toggle="tab">이번달</a></li>
					<li><a href="#tab4" data-toggle="tab">올해</a></li>

				</ul>

				<div class="tab-content">
					<div class="tab-pane active" id="home">

						<span id="date1"></span>
						<textarea readonly="readonly" class='txt' id='txt1' cols="27" rows="13">조회하실 동물을 클릭하세요!!</textarea>
					</div>

					<div class="tab-pane" id="tab1">
						<span id="date2"></span>
						<textarea readonly="readonly" class='txt' id='txt2' cols="27" rows="13">조회하실 동물을 클릭하세요!!</textarea>
					</div>
					<div class="tab-pane" id="tab2">
						<span id="date3"></span>
						<textarea readonly="readonly" class='txt' id='txt3' cols="27" rows="13">조회하실 동물을 클릭하세요!!</textarea>
					</div>

					<div class="tab-pane" id="tab3">
						<span id="date4"></span>
						<textarea readonly="readonly" class='txt' id='txt4' cols="27" rows="13">조회하실 동물을 클릭하세요!!</textarea>
					</div>
					<div class="tab-pane" id="tab4">
						<span id="date5"></span>
						<textarea readonly="readonly" class='txt' id='txt5' cols="27" rows="13">조회하실 동물을 클릭하세요!!</textarea>
					</div>

				</div>


			</div>


		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
		   aria-labelledby="myModalLabel" aria-hidden="true">
		   <div class="modal-dialog modal-fullsize">
		      <div class="modal-content modal-fullsize">
		         <div class="modal-header">
		            <button type="button" class="close" data-dismiss="modal" 
		               aria-hidden="true">×
		            </button>
		            <h4 class="modal-title" id="myModalLabel">
		               <!-- <i class="fa fa-star" aria-hidden="true"></i>&nbsp;&nbsp;당첨&nbsp;&nbsp;<i class="fa fa-star" aria-hidden="true"></i> -->
		            </h4>
		         </div>
		         <div class="modal-body">
		            	<!-- <div id="result_id"></div>
						<div id="result_id2"></div> -->
						<div id="result_id3">
						</div>
		         </div>
		         <div class="modal-footer">
		            <button type="button" class="btn btn-default" 
		               data-dismiss="modal">
		               <img src="/resources/assets/img/roul/ok_btn.png">
		            </button>
		         </div>
		      </div><!-- /.modal-content -->
		   </div><!-- /.modal-dialog -->
		</div><!-- /.modal -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/resources/js/bootstrap.min.js"></script>

		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				var d = new Date();
				var localeDate = d.toLocaleDateString();
				var localeTime = d.toLocaleTimeString();

				document.getElementById('date').innerHTML = localeDate;

			});

			function unse(animal) {
				/* $('#'+animal+'').prop('src',''); */
				var anis = [ 'mouse', 'caw', 'tiger', 'rabbit', 'dragon',
						'snake', 'horse', 'sheep', 'monkey', 'chicken', 'dog',
						'pig' ];
				var korea = [ '쥐', '소', '호랑이', '토끼', '용', '뱀', '말', '양', '원숭이',
						'닭', '개', '돼지' ];

				for (var int = 0; int < anis.length; int++) {
					if (animal == anis[int]) {
						$('#' + anis[int]).prop('src',
								'/resources/assets/img/unse/over_icon.png');
					} else {
						$('#' + anis[int]).prop('src', '');
					}
				}

				$.ajax({
					url : 'check.fun',
					type : 'post',
					data : {
						'animal' : animal
					},
					dataType : 'json',
					success : function(data) {
						
						if (data.result == 0) {
							/* alert('축하합니다. 열매1개 획득!'); */
							$('#myModal').modal('show');
							$('#fcnt').html(data.eacnt);
						}	
						/* document.getElementById('txt1').innerHTML = data.msg; */
						var d = new Date();
						var localeDate = d.toLocaleDateString();
						var day = d.getDate()+1;
						var week = d.getDate()+7;
						var month = d.getMonth()+1;
						
						var tomorrow = d.getFullYear()+"."+d.getMonth()+"."+d.getDay()+1;

						document.getElementById('date1').innerHTML = localeDate;
						document.getElementById('date2').innerHTML = d.getFullYear()+". "+month+". "+day;
						document.getElementById('date3').innerHTML = '이번주';
						document.getElementById('date4').innerHTML = d.getFullYear()+"년 "+month+"월";
						document.getElementById('date5').innerHTML = d.getFullYear()+"년";

						$('#txt1').prop('value', data.unse.today);
						$('#txt2').prop('value', data.unse.tomorrow);
						$('#txt3').prop('value', data.unse.thisweek);
						$('#txt4').prop('value', data.unse.thismonth);
						$('#txt5').prop('value', data.unse.thisyear);

					}
				});

			}
		</script>
		<script>
        	$(function () { $('#myModal').modal('hide')});
    	</script>
</body>
</html>