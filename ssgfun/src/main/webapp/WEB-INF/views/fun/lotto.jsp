<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />

<!-- Bootstrap -->
<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/assets/css/kfonts2.css" rel="stylesheet">

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
function goBuy(){
	
	if(cnt == 6){
		document.getElementById("lottoForm").submit();
	}else{
		alert("6개 눌러줘요");
	}
	
}
var cnt = 0;
function imgChange(obj){
	
	if (!obj.checked) {
			obj.style.backgroundImage = "url(/resources/assets/img/lotto/number_"+obj.value+"_off.png)";	
			cnt-=1;
	} else {
		
		if (cnt>=6) {
			obj.checked=false;	
		} else{
			obj.style.backgroundImage = "url(/resources/assets/img/lotto/number_"+obj.value+"_on.png)";
			cnt+=1;
			
		}
		
	}
	
	
	 
}

$(document).ready(function() {
	
	var bnum = '';
	var gno = '';
	var gdate = '';
	var nums = '';
	var eacnt = ${attInfo.eacnt};
	
	$.ajax({
		url: 'http://lotto.kaisyu.com/api?method=get',
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			bnum = data.bnum;
			gno = data.gno;
			gdate = data.gdate;
			nums =data.nums;
				
			var gno = data.gno;
			var gdate = data.gdate;
			
			var lottoNum = (data.nums).toString().split(',');
			var lottoAPINum = '';
			$.each(lottoNum, function(idx, num) {
				lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ num +'_on.png" class="apiLotto" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			});
			lottoAPINum += '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			lottoAPINum += '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ data.bnum +'_on.png" class="apiLotto" >';
			
			$('#lottoAPIgno').html(gno);
			$('#lottoAPIgdate').html(gdate);
			$('#lottoAPINum').html(lottoAPINum);
		}
	});
	
	$('#random').click(function() {
		
   		$.ajax({
   			url: 'randomLotto.fun',
   			type: 'post',
   			dataType: 'json',
   			success: function(data) {
   				
   				var txt = '';
   				$.each(data, function(idx, num) {
   					txt += num + ' ';
   				});

   				$('#lottoNum').html(txt);
   			}
   		});

	});
	
	$('#buy').click(function() {
		
// 		alert('구입' + $('#lottoNum').text());
		var param = $('#lottoNum').text();
		
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
    		
			$.ajax({
				url: 'buyLotto.fun',
				type: 'post',
				dataType: 'json',
				data: {'lottoNum': param,
						'gno': gno},
				success: function(data) {
					var txt = '';
					$.each(data, function(idx, obj) {
						txt += '<tr>';
						txt += '<td>' + (idx+1) + '</td>';
						txt += '<td>' + obj.ulnum1 + '</td>';
						txt += '<td>' + obj.ulnum2 + '</td>';
						txt += '<td>' + obj.ulnum3 + '</td>';
						txt += '<td>' + obj.ulnum4 + '</td>';
						txt += '<td>' + obj.ulnum5 + '</td>';
						txt += '<td>' + obj.ulnum6 + '</td>';
						txt += '<td><input type="button" value="수령" /></td>';
						txt += '</tr>';
					});
					
					$('#myLotto').html(txt);

					
				}
			});
			
    	} else {
    		alert('열매부족하다');
    	}


	});
	
});

</script>

<style type="text/css">
html,body {
	width:100%;
	height:100%; 
	margin:0; 
	padding:0;
}
* {
  padding: 0;
  margin: 0;
}

.am-wrapper>.bgimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
}
.header {
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 315px;
	background-image: url("/resources/assets/img/lotto/lotto_header.png");
	background-repeat: no-repeat;
	background-size: contain;
}
.fruit {
	position: absolute;
    top: 205px;
    left: 490px;
    width: 100px;
    height: 400px;
    font-size: 45px;
}
.lotto_bg_top {
	margin: 0px;
	padding: 0px;
	width: 100%;
	height: 535px;
	background-image: url("/resources/assets/img/lotto/lotto_middle.png");
	background-repeat: no-repeat;
	background-size: contain;
}
.lottoG {
	position: relative;
	padding-top: 60px;
	padding-left: 370px;
	font-size: 40px;
}
#lottoAPIgno {
	color: red;
}
#lottoAPIgdate {
	color: #A0A0A0;
}
#lottoAPINum {
	position: relative;
	padding-top: 104px;
	padding-left: 77px;
}
#buy_btn {
	position: relative;
	padding-top: 80px;
	padding-left: 95px;
	width: 900px;
	height: 200px;
}
#demo {
	margin: 0px;
	padding: 0px;
}
.apiLotto {
	display:inline-block; 
	width:80px; 
	height:80px;
	size:landscape; 
	vertical-align:middle; 
	appearance: none; 
	-moz-appearance: none; 
	/* Firefox */
	-webkit-appearance: none; 
	/* Safari and Chrome */ 
	border-radius:0; 
	border:0;

}
input[type="checkbox"] { 
	display:inline-block; 
	margin-top: 32px;
	margin-left: 23px;
	width:80px; 
	height:80px; 
	vertical-align:middle; 
	appearance: none;
 	background-repeat: no-repeat;
 	background-size: contain;
	-moz-appearance: none; 
	/* Firefox */
	-webkit-appearance: none; 
	/* Safari and Chrome */ 
	border-radius:0; 
	border:0;
}
input[type="checkbox"]:checked { 
	display:inline-block; 
	margin-top: 32px;
	margin-left: 23px;
	width:80px; 
	height:80px; 
	vertical-align:middle; 
	appearance: none;
	background-repeat: no-repeat;
	background-size: contain; 
	-moz-appearance: none; 
	/* Firefox */
	-webkit-appearance: none; 
	/* Safari and Chrome */ 
	border-radius:0; 
	border:0;
}
.backpage {
	position: absolute;
	top: 24px;
	left: 10px;
	width: 150px;
	height: 150px;
}

</style>
</head>
<body>
		
	<a href="javascript:history.back();">
		<div class="backpage">
		</div>
	</a>
	
	<div class="header">
		<span class="fruit">${attInfo.eacnt }</span>
	</div>

	<div class="lotto_bg_top" >
		<div class="lottoG">
			<span id="lottoAPIgno"></span>회차 당첨번호 &nbsp;&nbsp;<span id="lottoAPIgdate"></span>
		</div>
		<div id="lottoAPINum"></div>
		<div id="buy_btn" data-toggle="collapse" data-target="#demo"></div>
	</div>


	<div id="demo" class="collapse">
		<form id ="lottoForm" action="buyLotto.fun" method="get">
			<div id="selectLotto" >
				<c:forEach begin="1" end="45" varStatus="status">
					<c:if test="${(status.index % 9) == 1 }" >
						<br/>
					</c:if>
					<input type="checkbox" class="lotto" name="lotto" value="${status.index }" id="chb${status.index }"
							onclick="imgChange(this)" style="background-image: url('/resources/assets/img/lotto/number_${status.index }_off.png')" />
				</c:forEach>
				<div id="select_btn">
					<span onclick="javascript:randomSelect();"><img src="/resources/assets/img/lotto/random_btn.png" class="random_btn" ></span>
					<span><img src="/resources/assets/img/lotto/cancel_btn.png" class="cancel_btn" ></span>
					<span onclick="javascript:goBuy();" ><img src="/resources/assets/img/lotto/buy_btn_small.png" class="buy_btn" ></span>
				</div>
			</div>
		</form>
    </div>
	
	<br/>
	<br/>
	<input type="button" value="구입하기" />
	<br/>
	<br/>
	<input type="button" id="random" value="랜덤" /> &nbsp;&nbsp;
	<input type="button" value="취소" /> &nbsp;&nbsp;
	
	
	<table border="1">
		<tr>
			<th>번호</th>
			<th>1</th>
			<th>2</th>
			<th>3</th>
			<th>4</th>
			<th>5</th>
			<th>6</th>
			<th>수령</th>
		</tr>
		<tbody id="myLotto">
			<c:forEach items="${myLotto }" var="lotto" varStatus="status">
				<tr>
					<td>${status.index + 1 }</td>
					<td>${lotto.ulnum1}</td>
					<td>${lotto.ulnum2}</td>
					<td>${lotto.ulnum3}</td>
					<td>${lotto.ulnum4}</td>
					<td>${lotto.ulnum5}</td>
					<td>${lotto.ulnum6}</td>
					<td><input type="button" value="수령" /></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	


	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/resources/assets/js/bootstrap.min.js"></script>
    
    <script type="text/javascript">
    function randomSelect(){
    	for(var i = 0; i < 6; i++){
    		var random = Math.floor(Math.random()*45)+1;
    		if(document.getElementById("chb"+random).checked){
    			i--;
    			continue;
    		}
    		document.getElementById("chb"+random).checked = true;
    		imgChange(document.getElementById("chb"+random));
    		
    	}
    	
    }
    
    </script>
</body>
</html>