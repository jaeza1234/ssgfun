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
<script type="text/javascript">
/* serpiko.tistory.com */
window.onload = function(){
     
//     var pArr = ["0","1","2","3","4:꽝","5","6","7","8","9"];
    var pArr = ["1",
                "2",
                "한번더",
                "1000원쿠폰",
                "꽝",
                "꽝",
                "1000원쿠폰",
                "5",
                "한번더",
                "꽝"];
 
   	var eacnt = ${attInfo.eacnt};
   	
    $('#image').click(function(){
    	
    	if(eacnt > 0) {
    		$.ajax({
    			url: '/play.fun',
    			type: 'post',
    			dataType: 'json',
    			success: function(data) {
    				eacnt = data;
    				$('.fruit').html(data);
    			}
    		});
    		
    		rotation();
    	} else {
    		alert('열매부족하다');
    	}
    });
 
    function rotation(){
        $("#image").rotate({
          angle:0,
          animateTo:360 * 5 + randomize(0, 360),
          center: ["50%", "50%"],
          easing: $.easing.easeInOutElastic,
          callback: function(){
                        var n = $(this).getRotateAngle();
                        endAnimate(n);
                    },
          duration:5000
       });
    }
 
    function endAnimate($n){
        var n = $n;
        $('#result_id').html("<p>움직인각도:" + n + "</p>");
        var real_angle = n%360 +18;
        var part = Math.floor(real_angle/36);
     
        $('#result_id2').html("<p>상품범위:" + part + "</p>");
 
        if(part < 1){
//             $('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>");
            $('#result_id3').html("<p>" + pArr[0] + "</p>");
            return;
        }
 
        if(part >= 10){
//             $('#result_id3').html("<p>당첨내역:" + pArr[pArr.length-1] + "</p>");
            $('#result_id3').html("<p>" + pArr[pArr.length-1] + "</p>");
            return;
        }
 
//         $('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
        $('#result_id3').html("<p>" + pArr[part] + "</p>");
        
//         alert($('#result_id3').text());
        $.ajax({
			url: '/user/obtain.fun',
			type: 'post',
			dataType: 'json',
			data: {'obtain': $('#result_id3').text()},
			success: function(data) {
				console.log(data.eano);
				if(data.eano != 0) {
					$('.fruit').html(data.eacnt);
				}							
			}
		});
    }
 
    function randomize($min, $max){
        return Math.floor(Math.random() * ($max - $min + 1)) + $min;
    }
};
</script>

<style type="text/css">
#image{
    margin:50px 50px; 
	position:absolute;
 	top: 295px;
 	left: 149px;
	width: 63%;
}

#n_id{
	position:absolute;
	top:295px;
	left:470px;
	width: 7%;
}

.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.am-wrapper>.bgheader {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.fruit {
	position: absolute;
    top: 205px;
    left: 490px;
    width: 100px;
    height: 400px;
    font-size: 45px;
    z-index: 10000;
}
.roulEvent {
	position: absolute;
 	top: 344px; 
	width: 100%;
	height: 25%;
}
.roulette_bg {
	position: absolute;
	top: 290px;
	left: 21px;
}
#roulette_bg {
	width: 150%;
}
.backpage {
	position: absolute;
	top: 70px;
	left: 10px;
	width: 150px;
	height: 150px;
}
#result_id {
	position: absolute;
	top: 1100px;
	left: 180px;
	font-size: 75px;
}
#result_id2 {
	position: absolute;
	top: 1200px;
	left: 180px;
	font-size: 75px;
}
#result_id3 {
	position: absolute;
	top: 1300px;
	left: 180px;
	font-size: 75px;
}
</style>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/roul/ssg_game_long.png">

		<img class="bgheader" src="/resources/assets/img/roul/ssg_header.png">
	
		<a href="javascript:history.back();">
			<div class="backpage"></div>
		</a>
		
		<div class="fruit">
			 ${attInfo.eacnt}
		</div>

		<div class="roulette_bg">
			<img src="/resources/assets/img/roul/roulette_bg.png" id="roulette_bg">
		</div>
		
		<img src="/resources/assets/img/roul/roulette.png" id="image">
		<img src="/resources/assets/img/roul/niddle.png" id="n_id">
		
		<div id="result_id"></div>
		<div id="result_id2"></div>
		<div id="result_id3"></div>
	</div>
</body>
</html>