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
</style>
</head>
<body>
<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/moneyrecharge.png"> <a
			href="javascript:history.back();">
			<div class="backpage"></div>
		</a>

		<div class="fruit">
			<span id="fcnt">${attInfo.eacnt }</span>
		</div>
</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="/resources/js/bootstrap.min.js"></script>

		<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
		<script type="text/javascript">
		$(document).ready(function() {
			
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
						alert('축하합니다. 열매1개 획득!');
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

</body>
</html>