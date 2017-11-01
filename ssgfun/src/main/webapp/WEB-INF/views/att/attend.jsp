<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
  position: absolute;
  left: 140px;
}

.pot {
  background: #ee7d15;
  position: relative;
}

.pot > div {
  position: absolute;
}

/* .pot-bot {
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
} */

/* .pot-top {
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
 */

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
  background: transparent;
  width: 6px;
  z-index: -1;
  bottom: -30px;
  left: 50%;
  margin-left: -8px;
  border-radius: 16px 16px 0 0;
  border-color: #C5E2FF;
}

.plant > div {
  position: absolute;
  top: -10px;
}

.plant:before {
  height: 275px;
  width: 4px;
  right: 0;
  bottom: 0;
  background: transparent;
  border-radius: 0 30px 0 0;
}

.plant:after {
  left: 10px;
  top: 110px;
  width: 0px;
  height: 0px;
  border-radius: 100px 0px 100px 0px;
  background:transparent;
  border-color: #C5E2FF;
  transform: rotate(-20deg);
}

.head {
width: 20px;
height: 20px;
left: 50%;
top: -55px;
margin-left: -8px;
border-radius: 50px;
background: transparent;
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

.white {
	background-color: #fff;
	border: solid #da2128;
}
.red {
	background-color: #da2128;
}

.leaf1 {
top: -19px;
left: 28px;
transform: rotate(2deg);
}

.leaf5 {
top: -10px;
right: 22px;
transform: rotate(47deg);
}

.leaf4 {
top: 27px;
right: 12px;
transform: rotate(-8deg);
}

.leaf2 {
top: 18px;
left: 28px;
transform: rotate(-126deg);
}

.leaf3 {
top: 39px;
left: -2px;
transform: rotate(-73deg);
}

.leaf7 {
bottom: 33px;
left: 5px;
transform: rotate(-34deg);
}

.leaf6 {
bottom: 30px;
right: 1px;
transform: rotate(-87deg);
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
  from { height : 175px; }
  to { height : 175px ; }
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
	z-index: 2000;
	top: 92px;
	position: absolute;
	left: 110px;
}

.sprinkler {
	width: 100px;
	height: 100px;
	position: absolute;
	left: 15px;
}

.fruittxt {
	margin: 0 auto;
	font-size: 20px;
	font-weight: bold;
}

.am-wrapper {
}

.bgimg {
	z-index: -1;
	width: 100%;
	position: absolute;
	top: 130px;
}

.bgheader {
	z-index: 1;
	width: 100%;
	position: absolute;
}

.main-contents {
	height: 100%;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
	padding-left: 15px;
	padding-right: 15px;
	padding-top: 185px;
}

.attrCheck {
	position: absolute;
	width: 100px;
	height: 100px;
	position: absolute;
	left: 118px;
	top: -290px;
}

.waterImg {
	position: absolute;
	width: 50px;
	height: 50px;
	left: -15px;
	top: 64px;
	display: none;
}

.note {
width: 340px;
height: auto;
}
.noteDiv {
	position: absolute;	
	top: 560px;
	left: 37px;
}
.noteTxt {
	position: absolute;
	top: 29px;
	left: 85px;
	text-align: center;
}

.strong {
	color: #da2128;
}
.go {
	position: absolute;
	width: 340px;
	padding-top: 20px;
}

.backpage {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 80px;
	height: 80px;
	z-index: 4000;
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
	width: 300px; 
	height: auto;
	margin: 0 auto;
	display: inline-block;
	text-align: left;
	vertical-align: middle; 
	padding: 0;
	position: absolute;
	top: 200px;
	left: 50px;
	min-width: 50%; 
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
	font-size: 17px;
}
.okBtn {
	width: 50%;
}
.luck {
	width: 80px;
	height: 80px;
}

</style>
</head>
<body>
	<div class="am-wrapper">
		<!-- <nav class="navbar navbar-default navbar-fixed-top am-top-header">
			<div class="container-fluid">
				<div class="navbar-header">
					<a href="javascript:history.back();" class="prev"><i class="fa-2x icon-bar fa fa-arrow-left" aria-hidden="true"></i></a>
					<div class="page-title">
						<span>출석체크</span>
					</div>
				</div>
				
			</div>
		</nav> -->
	<a href="/main.fun">
		<div class="backpage">
		</div>
	</a>	
	<div class="am-content">
	<img class="bgimg" src="../resources/assets/img/attend/bg_modify.png">
	<img class="bgheader" src="../resources/assets/img/attend/check_header.png">
	<div class="textarea">
		<div class="fruittxt">
			${attInfo.eacnt }
		</div>
		<!-- <br><br>
		<a href="/ssgFun.fun">열매 사용하러 가기 GO</a> -->
	</div>
			<!-- <div class="page-head">
			</div> -->
			<div class="main-contents">
				<div class="container">
				
					<div class="attrCheck" id="attCheck" onfocus="this.onblur()">
					<img class="sprinkler" src="../resources/assets/img/attend/sprinkler_img.png" id="waterImg">
					<img class="waterImg" src="../resources/assets/img/attend/water_img.png">
					</div>
					
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
					  		<c:choose>
					  			<c:when test="${attInfo.eaattcnt == 0}">
					  				<li class="leaf1 white"></li>
							          <li class="leaf2 white"></li>
							          <li class="leaf3 white"></li>
							          <li class="leaf4 white"></li>
							          <li class="leaf5 white"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
					  			</c:when>
					  			<c:otherwise>
					  				<c:if test="${attInfo.eaattcnt % 7 == 0}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 red"></li>
							          <li class="leaf4 red"></li>
							          <li class="leaf5 red"></li>
							          <li class="leaf6 red"></li>
							          <li class="leaf7 red"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 1}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 white"></li>
							          <li class="leaf3 white"></li>
							          <li class="leaf4 white"></li>
							          <li class="leaf5 white"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 2}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 white"></li>
							          <li class="leaf4 white"></li>
							          <li class="leaf5 white"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 3}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 red"></li>
							          <li class="leaf4 white"></li>
							          <li class="leaf5 white"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 4}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 red"></li>
							          <li class="leaf4 red"></li>
							          <li class="leaf5 white"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 5}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 red"></li>
							          <li class="leaf4 red"></li>
							          <li class="leaf5 red"></li>
							          <li class="leaf6 white"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
							       	<c:if test="${attInfo.eaattcnt % 7 == 6}">
							       	  <li class="leaf1 red"></li>
							          <li class="leaf2 red"></li>
							          <li class="leaf3 red"></li>
							          <li class="leaf4 red"></li>
							          <li class="leaf5 red"></li>
							          <li class="leaf6 red"></li>
							          <li class="leaf7 white"></li>
							       	</c:if>
					  			</c:otherwise>
					  		</c:choose>
					  		<%-- <c:if test="${attInfo.eaattcnt == 0}">
					       	  <li class="leaf1 white"></li>
					          <li class="leaf2 white"></li>
					          <li class="leaf3 white"></li>
					          <li class="leaf4 white"></li>
					          <li class="leaf5 white"></li>
					          <li class="leaf6 white"></li>
					          <li class="leaf7 white"></li>
					       	</c:if> --%>
					       	
					          
					        </ul>
				       </div>
				    </div>
				    
				  </div>
				</div>
				<div class="noteDiv">
					<img class="note" src="../resources/assets/img/attend/noteArea.png">
					<span class="noteTxt">
						하루에 한 번 꽃에 물을 주어<br>
						열매를 얻을 수 있습니다.<br>
						<strong class="strong">7개 달성 시 열매 추가 지급!</strong>
					</span>
					<a href="/ssgFun.fun">
						<img class="go" src="../resources/assets/img/attend/go.png">
					</a>				
				
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
	               &nbsp;&nbsp;알림&nbsp;&nbsp;
	            </h4>
	         </div>
	         <div class="modal-body">
	            	<div>
	            		[출석완료] 열매 1개 지급!
	            	</div>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default success" 
	               data-dismiss="modal" onClick="history.go(0)">
	               <img class="okBtn" src="/resources/assets/img/roul/ok_btn.png">
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
	   </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!-- Modal -->
	<div class="modal fade" id="myModalFail" tabindex="-1" role="dialog" 
	   aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog modal-fullsize">
	      <div class="modal-content modal-fullsize">
	         <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal" 
	               aria-hidden="true">×
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	               &nbsp;&nbsp;알림&nbsp;&nbsp;
	            </h4>
	         </div>
	         <div class="modal-body">
	            	<div>
	            		출석은 하루에 한 번만 가능합니다.
	            	</div>
	         </div>
	         <div class="modal-footer">
	            <button type="button" class="btn btn-default fail" 
	               data-dismiss="modal">
	               <img class="okBtn" src="/resources/assets/img/roul/ok_btn.png">
	            </button>
	         </div>
	      </div><!-- /.modal-content -->
	   </div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
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
			
			$('#attCheck').on("click",function() {
//		 		alert('클릭');
				$('.waterImg').css("display","block");
				
				$.ajax({
					url: 'attCheck.fun',
					type: 'post',
					dataType: 'json',
					success: function(data) {
						if (data.result==1) {
							$('#myModal').modal('show');
 							/* alert(data.eaattcnt) */
							$('.fruittxt').html(data.eacnt);
						}else if(data.result==0){
							$('#myModalFail').modal('show');
						};
						
						/* $('.waterImg').css("display", "none"); */
					}
				});
			});
		});
	</script>
	<script>
        $(function () { $('#myModal').modal('hide')});
    </script>
</body>
</html>
