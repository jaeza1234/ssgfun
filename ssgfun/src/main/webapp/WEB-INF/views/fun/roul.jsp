<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- add -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title> prototype about roulette </title>

<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />

<!-- Bootstrap -->
<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/assets/css/kfonts2.css" rel="stylesheet">

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

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jQueryRotate.js"></script>
<script type="text/javascript">
/* serpiko.tistory.com */
window.onload = function(){
    var roulFlag = true; 
//     var pArr = ["0","1","2","3","4:꽝","5","6","7","8","9"];
    var pArr = ["꽝",
                "열매+1",
                "100",
                "꽝",
                "300",
                "꽝",
                "열매+1",
                "1000원쿠폰",
                "꽝",
                "500"
               ];
 
   	var eacnt = ${attInfo.eacnt};
   	
    $('#image').click(function(){
    	
    	
    	if (roulFlag) {
    		roulFlag = ! roulFlag;
		
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
		/* if(part == 7) {
			$('#result_id3').html("<p>" + pArr[part] + "</p>" + "<img src='/resources/assets/img/roul/niddle.png'>");
		} */
		
		if(pArr[part] == "꽝") {
			$('#myModalLabel').html('<i class="fa fa-bomb" aria-hidden="true"></i>&nbsp;&nbsp;꽝&nbsp;&nbsp;<i class="fa fa-bomb" aria-hidden="true"></i>');
			$('#result_id3').html("<br><img class='bomb'src='/resources/assets/img/roul/bomb.png'>" + "<p>" + pArr[part] + "</p>");
		} else {
			$('#myModalLabel').html('<i class="fa fa-star" aria-hidden="true"></i>&nbsp;&nbsp;당첨&nbsp;&nbsp;<i class="fa fa-star" aria-hidden="true"></i>');
			$('#result_id3').html("<br><img class='luck' src='/resources/assets/img/roul/popup_icon.png'>" + "<p>" + pArr[part] + "</p>");
		}
		
        
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
				
				 $('#myModal').modal('show');
				 //룰렛 다 끝나면 다시 플래그 true 로 변경;
			}
		});
				 roulFlag = true;
    }
 
    function randomize($min, $max){
        return Math.floor(Math.random() * ($max - $min + 1)) + $min;
    }
};
</script>

<style type="text/css">

body {
	overflow-x: hidden;
}
p {
	padding: 10px;
}

#image{
    margin: 50px 50px;
    position: absolute;
    top: 105px;
    left: 10px;
    width: 70%;
}

#n_id{
	position:absolute;
	top:140px;
	left:190px;
	width: 6%;
}

.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	min-width: 100%;
	margin: 0;
	padding: 0;
}
.am-wrapper>.bgheader {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.fruit {
	position: absolute;
    top: 86px;
    left: 193px;
    width: 100px;
    font-size: 20px;
	font-weight: bold;
}
.roulEvent {
	position: absolute;
 	top: 344px; 
	width: 100%;
	height: 25%;
}
.roulette_bg {
	position: absolute;
    top: 155px;
    left: 5px;
    width: 60%;
}
#roulette_bg {
	width: 397px;
	left: -5px;
}
.backpage {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 80px;
	height: 80px;
}
/* #result_id {
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
} */

.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
 		height: 300px;
    }
}
.modal-dialog.modal-fullsize { 
	width: 200px;
    height: 200px;
    margin: 0;
    display: inline-block;
    text-align: left;
    vertical-align: middle;
    padding: 0;
    position: absolute;
    top: 200px;
    left: 45px; 
    min-width: 30%;
    min-height: 30%;
}
.modal-content.modal-fullsize {
	height: auto;
	border-radius: 20px; 
	width: 100px;
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
	padding-top: 0;
}
.modal-title {
	padding-top: 0px;
	color: #fff;
	/* font-size: 45px; */
}
.modal-body {
	padding: 0;
}
.bomb {
	width: 100px;
	height: 100px;
}
.luck {
	width: 100px;
	height: 100px;
}

.rTxt {
	width: 280px;
    position: absolute;
    top: 483px;
    left: 76px;
}
.titleTxt {
	font-size: 20px;
}
.conTxt {
	font-size: 16px;
	color: #747474;
}
.conTxtSpan {
	border-bottom: groove;
	padding-bottom: 10px;
}
.goImg {
	width: 50px;
}
.okBtn {
	width: 50%;
}

</style>
</head>
<body style="overflow-x: hidden;">
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
		
		<img src="/resources/assets/img/roul/roulette_modify.png" id="image">
		<img src="/resources/assets/img/roul/niddle.png" id="n_id">
		<div class="rTxt">
			<span class="titleTxt"><b>[게임방법 소개]</b></span><br>
			<span class="conTxt">열매를 1개 사용하여 룰렛 게임 1회 참여 가능</span><br><br>
			<span class="titleTxt"><b>[열매 획득하는 방법]</b></span><br>
			<span class="conTxt">
				<span class="conTxtSpan">
					<i class="fa fa-check" aria-hidden="true"></i>&nbsp;출석체크
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/user/att.fun"><img class="goImg" src="/resources/assets/img/roul/go_btn.png"></a>
					<br><br>
				</span>
				<span class="conTxtSpan">
					<i class="fa fa-check" aria-hidden="true"></i>&nbsp;오늘의 운세
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;
					<a href="/luck/main.fun"><img class="goImg" src="/resources/assets/img/roul/go_btn.png"></a>
					<br><br>
				</span>
				<span class="conTxtSpan">
					<i class="fa fa-check" aria-hidden="true"></i>&nbsp;SSG Money 충전
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="/recharge.fun"><img class="goImg" src="/resources/assets/img/roul/go_btn.png"></a>
					<br><br>
				</span>
			</span>
		</div>
		
<!-- 		<div id="result_id"></div> -->
<!-- 		<div id="result_id2"></div> -->
<!-- 		<div id="result_id3"></div> -->
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
	               <img class="okBtn" src="/resources/assets/img/roul/ok_btn.png">
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
	   </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/assets/js/bootstrap.min.js"></script>

    <script>
        $(function () { $('#myModal').modal('hide')});
    </script>

</body>
</html>
