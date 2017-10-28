<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    top: 200px;
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
			 <h1>${attInfo.eacnt}</h1>
		</div>
		
		<div class="mouse" >
			<img alt="" src="" id="mouse" onclick="unse('mouse')" class="checked">
		</div>
		<div class="caw" >
			<img alt="" src="" id="caw" onclick="unse('caw')" class="checked">
		</div>
		<div class="tiger" >
			<img alt="" src="" id="tiger" onclick="unse('tiger')" class="checked">
		</div>
		<div class="rabbit" >
			<img alt="" src="" id="rabbit" onclick="unse('rabbit')" class="checked">
		</div>
		
		<div class="dragon" >
			<img alt="" src="" id="dragon" onclick="unse('dragon')" class="checked">
		</div>
		<div class="snake" >
			<img alt="" src="" id="snake" onclick="unse('snake')" class="checked">
		</div>
		<div class="horse" >
			<img alt="" src="" id="horse" onclick="unse('horse')" class="checked">
		</div>
		<div class="sheep" >
			<img alt="" src="" id="sheep" onclick="unse('sheep')" class="checked">
		</div>
		
		<div class="monkey" >
			<img alt="" src="" id="monkey" onclick="unse('monkey')" class="checked">
		</div>
		<div class="chicken" >
			<img alt="" src="" id="chicken" onclick="unse('chicken')" class="checked">
		</div>
		<div class="dog" >
			<img alt="" src="" id="dog" onclick="unse('dog')" class="checked">
		</div>
		<div class="pig" >
			<img alt="" src="" id="pig" onclick="unse('pig')" class="checked">
		</div>
		
		<div class="textArea">
			<textarea readonly="readonly" id='txt' cols="55" rows="20"> ${msg}</textarea>
		
		</div>

	</div>




<input type="button" value="쥐" onclick="unse('mouse')">
<input type="button" value="소" onclick="unse('caw')">
<input type="button" value="호랑이" onclick="unse('tiger')">
<input type="button" value="토끼" onclick="unse('rabbit')">
<input type="button" value="용" onclick="unse('dragon')">
<input type="button" value="뱀" onclick="unse('snake')">
<input type="button" value="말" onclick="unse('horse')">
<input type="button" value="양" onclick="unse('sheep')">
<input type="button" value="원숭이" onclick="unse('monkey')">
<input type="button" value="닭" onclick="unse('chicken')">
<input type="button" value="개" onclick="unse('dog')">
<input type="button" value="돼지" onclick="unse('pig')">
<p>



<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 	  $(document).ready(function() {
 		  

	         
	});   

	function unse(animal){
		alert(animal)
		/* $('#'+animal+'').prop('src',''); */
		var anis = [ 'mouse', 'caw', 'tiger', 'rabbit', 'dragon', 'snake', 'horse', 'sheep', 'monkey', 'chicken', 'dog' , 'pig'];
		
		for (var int = 0; int < anis.length; int++) {
			if (animal==anis[int]) {
				$('#'+anis[int]).prop('src','/resources/assets/img/unse/over_icon.png');
			} else {
				$('#'+anis[int]).prop('src','');
			}
		} 
		

		
		alert("ajax 실행");
		$.ajax({
			url: 'check.fun',
			type: 'post',
			data: {'animal': animal},
			dataType: 'json',
			success: function(data) {

				 if(data.result==0){
					alert('축하합니다. 열매1개 획득!');
				}
				 
				$('#txt').val(data.msg);
			
			}
		});
		
		
		
	}
</script>

</body>
</html>