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
<link rel="stylesheet" href="/resources/assets/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />
<style type="text/css">
.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}

.backpage {
	position: absolute;
	top: 60px;
	left: 10px;
	width: 150px;
	height: 150px;
}
.fruit {
	position: absolute;
    top: 202px;
    left: 480px;
    width: 100px;
    height: 400px;
}
.textArea {
	position: absolute;
    top: 1316px;
    left: 100px;
    width: 80%;
    height: 500px;
}
.checked{
	width:150%;
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

</style>
</head>

<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/unse.png">

		
		<a href="/ssgFun.fun">
			<div class="backpage">
			</div>
		</a>
		
		<div class="fruit">
			<span id="fcnt">${attInfo.eacnt }</span>
		</div>
		
		<div class="mouse" onclick="unse('mouse')">
			<img alt="" src="" id="mouse" class="checked">
		</div>
		<div class="caw" onclick="unse('caw')">
			<img alt="" src="" id="caw"  class="checked">
		</div>
		<div class="tiger" onclick="unse('tiger')">
			<img alt="" src="" id="tiger"  class="checked">
		</div>
		<div class="rabbit"  onclick="unse('rabbit')" >
			<img alt="" src="" id="rabbit" class="checked">
		</div>
		
		<div class="dragon" onclick="unse('dragon')">
			<img alt="" src="" id="dragon"  class="checked">
		</div>
		<div class="snake" onclick="unse('snake')">
			<img alt="" src="" id="snake"  class="checked">
		</div>
		<div class="horse" onclick="unse('horse')" >
			<img alt="" src="" id="horse" class="checked">
		</div>
		<div class="sheep" onclick="unse('sheep')" >
			<img alt="" src="" id="sheep" class="checked">
		</div>
		
		<div class="monkey" onclick="unse('monkey')" >
			<img alt="" src="" id="monkey" class="checked">
		</div>
		<div class="chicken" onclick="unse('chicken')">
			<img alt="" src="" id="chicken"  class="checked">
		</div>
		<div class="dog" onclick="unse('dog')">
			<img alt="" src="" id="dog"  class="checked">
		</div>
		<div class="pig" onclick="unse('pig')">
			<img alt="" src="" id="pig"  class="checked">
		</div>
		
		<div class="textArea">
			<span id="txt">조회하실 띠의 동물을 선택하세요!!!</span>
		
			<!-- <textarea readonly="readonly" id='txt' cols="55" rows="20"> 조회하실 띠의 동물을 선택하세요!!!</textarea> -->
		
		</div>

	</div>


<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 	  $(document).ready(function() {
 		  

	         
	});   

	function unse(animal){
		/* $('#'+animal+'').prop('src',''); */
		var anis = [ 'mouse', 'caw', 'tiger', 'rabbit', 'dragon', 'snake', 'horse', 'sheep', 'monkey', 'chicken', 'dog' , 'pig'];
		
		for (var int = 0; int < anis.length; int++) {
			if (animal==anis[int]) {
				$('#'+anis[int]).prop('src','/resources/assets/img/unse/over_icon.png');
			} else {
				$('#'+anis[int]).prop('src','');
			}
		} 
		

		
		$.ajax({
			url: 'check.fun',
			type: 'post',
			data: {'animal': animal},
			dataType: 'json',
			success: function(data) {

				 if(data.result==0){
					alert('축하합니다. 열매1개 획득!');
					$('#fcnt').html(data.eacnt);
				}
				document.getElementById('txt').innerHTML= data.msg;
				$('#txt').prop('html',data.msg);
			
			}
		});
		
		
		
	}
</script>

</body>
</html>