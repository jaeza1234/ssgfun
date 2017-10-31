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
<script type="text/javascript">
	function onlyNumber(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ((keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105)
				|| keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
			return false;
	}
	function removeChar(event) {
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if (keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39)
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}

	function plus(num) {
		if (num != 'a') {

			$("#money").prop("value", Number($("#money").val()) + Number(num));
		} else {

			$("#money").prop("value", "");
			$("#money").focus();
		}
		
	}
</script>
<style type="text/css">
.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}

.backpage {
	position: absolute;
	top: 0;
	left: 0;
	width: 80px;
	height: 80px;
}

.money {
	position: absolute;
	top: 130px;
	left: 140px;
	height: 50px;
}

.txt {
	text-align: right;
	font-size: 18px;
	width: 220px;
}

.plus1 {
	position: absolute;
	top: 210px;
	left: 45px;
	width: 60px;
	height: 22px;
}

.plus5 {
	position: absolute;
	top: 210px;
	left: 130px;
	width: 60px;
	height: 22px;
}

.plus10 {
	position: absolute;
	top: 210px;
	left: 215px;
	width: 65px;
	height: 22px;
}

.edit {
	position: absolute;
	top: 210px;
	left: 305px;
	width: 60px;
	height: 22px;
}

.chargebtn {
	position: absolute;
	top: 760px;
	width: 100%;
	height: 70px;
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
 		width: 100px;
    }
}
.modal-dialog.modal-fullsize { 
	width: 200px; 
	height: 200px;
	margin: 0 auto;
	display: inline-block;
	text-align: left;
	vertical-align: middle; 
	padding: 0;
	position: absolute;
	top: 170px;
	left: 0px; 
}
.modal-content.modal-fullsize {
	height: auto;
	min-height: 100%;
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
.modal-header {
	padding: 8px;
	border-bottom: none;
}
.modal-footer {
	background-color: #ffffff;
	border-top: transparent;
	text-align: center;
	padding-top: 0;
	margin-top: 0;
}
.modal-title {
	padding-top: 0px;
	color: #fff;
	font-size: 20px;
}

.okBtn {
	width: 50%;
}
.luck {
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>
	<div class="am-wrapper">
		<img class="bgimg"
			src="/resources/assets/img/bgimg/money_charge01.png"> 
			<a href="javascript:history.back();">
				<div class="backpage"></div>
			</a>

		<div class="money">
			<input type="text" id="money" class="txt" placeholder="만원 당 열매 1개 지급"
				onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'
				style='ime-mode: disabled;'>
		</div>
		<div class="plus1" id="plus1" onclick="plus(10000)"></div>
		<div class="plus5" id="plus5" onclick="plus(50000)"></div>
		<div class="plus10" id="plus10" onclick="plus(100000)"></div>
		<div class="edit" id="edit" onclick="plus('a')"></div>

		<div class="chargebtn" id="chargebtn"></div>

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
		               <i class="fa fa-star" aria-hidden="true"></i>&nbsp;&nbsp;축하&nbsp;&nbsp;<i class="fa fa-star" aria-hidden="true"></i>
		            </h4>
		         </div>
		         <div class="modal-body">
		            	<!-- <div id="result_id"></div>
						<div id="result_id2"></div> -->
						<div id="result_id3">
						<br><img class='luck' src='/resources/assets/img/roul/popup_icon.png'>
						<p></p><p></p>
						<div>
							<span id="fruit"></span>
						</div>
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
	


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="/resources/js/bootstrap.min.js"></script>

	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

		});

		$('#chargebtn').click(function() {
			
			if ($('#txt').val()!="") {
				$.ajax({
					url : 'moneyRecharge.fun',
					type : 'post',
					data : {
						'money' : $(".txt").val()
					},
					dataType : 'json',
					success : function(data) {
						alert(data);
						$('#fruit').text('[축하] 열매 ' + data + '개 지급!');
						$('#myModal').modal('show');
						$(".txt").prop('value', '');

					}
				});
			}
			

		});
	</script>
	<script>
        	$(function () { $('#myModal').modal('hide')});
    	</script>

</body>
</html>