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
	function onlyNumber()
	{
	if ((event.keyCode<48)||(event.keyCode>57))
	event.returnValue = false;
	
	}
	
	function plus(num){
		if (num!='a') {
			
			$("#money").prop("value",Number($("#money").val())+Number(num));
		} else {
			
			$("#money").prop("value","");
		}
		$("#money").focus();
	}

</script>
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
	.money{
		position: absolute;
		    top: 322px;
	    left: 449px;
	    width: 360px;
	    height: 118px;
	}
	.txt{
		 text-align: right;
		 size: 5px;
	 
	 
	}
	.plus1{
		    position: absolute;
	    top: 489px;
	    left: 100px;
	    width: 156px;
	    height: 79px;
	
	}
	.plus5{
		    position: absolute;
	    top: 489px;
	    left: 305px;
	    width: 156px;
	    height: 79px;
	
	}
	.plus10{
		    position: absolute;
	    top: 489px;
	    left: 510px;
	    width: 156px;
	    height: 79px;
	
	}
	.edit{
		    position: absolute;
	    top: 489px;
	    left: 715px;
	    width: 156px;
	    height: 79px;
	
	}
	.chargebtn{
		position: absolute;
	    top: 1800px;
	    width: 100%;
	  	height: 175px;
	
	}
</style>
</head>
<body>
<div class="am-wrapper">
		<img class="bgimg" src="/resources/assets/img/bgimg/money_charge01.png"> <a
			href="javascript:history.back();">
			<div class="backpage"></div>
		</a>
		
		<div class="money">
			<input type="text" id="money" class="txt" placeholder="만원 충전시 열매 1개 지급"  border="0px"   style="ime-mode:disabled" OnKeypress="onlyNumber();" maxlength=10>
		</div>
		<div class="plus1" id="plus1" onclick="plus(10000)"></div>
		<div class="plus5" id="plus5" onclick="plus(50000)"></div>
		<div class="plus10" id="plus10" onclick="plus(100000)"></div>
		<div class="edit" id="edit" onclick="plus('a')"></div>	
		
		<div class="chargebtn" id="chargebtn">	</div>
			
	

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

		$('#chargebtn').click(function(){
			$.ajax({
				url : 'moneyRecharge.fun',
				type : 'post',
				data : {
					'money' : $(".txt").val()
				},
				dataType : 'json',
				success : function(data) {
					alert('열매'+data+' 개 지급!!!')
					$(".txt").prop('value','');
	
				}
			});

		
		
		});
		
		
		</script>

</body>
</html>