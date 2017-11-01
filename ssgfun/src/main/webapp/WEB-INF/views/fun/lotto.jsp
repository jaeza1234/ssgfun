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

<style type="text/css">

div {
	border: solid 1px gold;
}
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
 	height: 131px; 
	background-image: url("/resources/assets/img/lotto/lotto_header.png");
	background-repeat: no-repeat;
	background-size: contain;
}
.fruit {
	position: relative;
    top: 86px;
    left: 195px;
    width: 100px;
    font-size: 20px;
	font-weight: bold;
}
.lotto_bg_top {
	margin: 0px;
	padding: 0px;
	width: 100%;
 	height: 223px;
	background-image: url("/resources/assets/img/lotto/lotto_middle.png");
	background-repeat: no-repeat;
	background-size: contain;
	
}
.lottoG {
	position: relative;
    top: 28px;
    padding-left: 175px;
	font-size: 17px;
}
#lottoAPIgno {
	color: red;
}
#lottoAPIgdate {
	color: #A0A0A0;
}
#lottoAPINum {
	position: relative;
 	padding-left: 10px; 
	top: 65px;
	margin: 0;
}
#buy_btn {
	position: relative;
 	width: 83%;
 	height: 48px;
 	top: 95px;
 	left: 38px;
}
#demo {
	margin: 0px;
	padding: 0px;
}
.apiLotto {
	display:inline-block; 
   	width:12%;
  	padding-left: 8px;
  	margin: 0;
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
#selectLotto {
	margin: 0px;
	padding-top: 7px;
	padding-left: 12px;
	width: 100%;
 	height: 295px;
	background-image: url("/resources/assets/img/lotto/lotto_select_blank.png");
	background-repeat: no-repeat;
	background-size: contain;
}
input[type="checkbox"] { 
	display:inline-block; 
	top: 0;
 	width:10%;
 	height:15%;
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
	top: 0px;
/* 	left:20px; */
 	width:10%;
 	height:15%;
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
.lotto_bg_bottm {
	width: 100%;
	height: 422px;
	background-image: url("/resources/assets/img/lotto/lotto_bg_bottom.png");
	background-repeat: no-repeat;
	background-size: contain;
}

.backpage {
	position: absolute;
	top: 24px;
	left: 10px;
	width: 150px;
	height: 150px;
}
.myLottoTable {
	position: relative;
	margin: 0;
	font-size: 25px;
}
th, td, tr {
	width: 70px;
	height: 60px;
	text-align: center;
}
#select_btn {
	position: relative;
	top: 9px;
}
.inner_btn {
	width: 30%;
 	margin-right: 10px;
}
.prev {
	position: relative;
 	top: 20px;
	left: 15px;
 	font-size: 20px;
}
.prev_btn {
	height: 15px;
 	margin-left: 20px;
}
.next {
	position: relative;
 	top:20px;
	left: 210px;
 	font-size: 20px;
}
.next_btn {
	height: 15px;
 	margin-left: 8px;
}
.txt {
    margin-top: 10px;
	overflow: scroll;
	border: 0;
}
.myLottoList{
	position: relative;
    top: 23px;
    left: 11px;
	width:95%;
    height: 245px;
    overflow: scroll;
}
.mybuyLotto {
	display:inline-block; 
	margin-right: 10px;
   	width:40px;
   	height:40px;
  	margin: 0;
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
			<span id="lottoAPIgnoSelec">
				<select name="lottoGNO" class="lottoGNO">
					<c:forEach begin="1" end="778" varStatus="status">
						<c:if test="${status.index == 778}" >
							<option value="${status.index }" selected>${status.index }</option>
						</c:if>
						<c:if test="${status.index != 778}" >
						    <option value="${status.index }">${status.index }</option>
						</c:if>
					</c:forEach>
				</select>
			</span><span id="lottoAPIgno">
			</span>회차 당첨번호 &nbsp;&nbsp;<span id="lottoAPIgdate"></span>
		</div>
		<div id="lottoAPINum"></div>
		<div id="buy_btn" data-toggle="collapse" data-target="#demo"></div>
	</div>

	<div id="demo" class="collapse">
		<form id ="lottoForm" action="buyLotto.fun" method="get">
			<div id="selectLotto" >
				<c:forEach begin="1" end="45" varStatus="status">
					<input type="checkbox" class="lotto" name="lotto" value="${status.index }" id="chb${status.index }"
							onclick="imgChange(this)" style="background-image: url('/resources/assets/img/lotto/number_${status.index }_off.png')" />
					<c:if test="${(status.index % 9) == 0 }" >
						<br/>
					</c:if>
				</c:forEach>
				<div id="select_btn">
					<span onclick="javascript:randomSelect();"><img src="/resources/assets/img/lotto/random_btn.png" class="random_btn inner_btn" ></span>
					<span><img src="/resources/assets/img/lotto/cancel_btn.png" class="cancel_btn inner_btn" ></span>
					<span><img src="/resources/assets/img/lotto/buy_btn_small.png" class="buy_btn inner_btn" ></span>
				</div>
			</div>
		</form>
    </div>
    
    <div class="lotto_bg_bottm">
    	<span class="prev"><img src="/resources/assets/img/lotto/prev_icon.png" class="prev_btn" /> 이전회</span>
    	<span class="next">다음회<img src="/resources/assets/img/lotto/next_icon.png" class="next_btn" /> </span>
    	<div class="myLottoList" >
		</div>
    </div>
    
    <div id="prevgdate" style="display: none;"></div>
    <div id="nextgdate" style="display: none;"></div>
    <div id="lottoAPIgNum" style="display: none;"></div>
    <div id="lottoAPIbNum" style="display: none;"></div>
    <div id="lottoAPIgno2" style="display: none;"></div>
	
	<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
    <script src="/resources/assets/js/bootstrap.min.js"></script>

<script type="text/javascript">
var cnt = 0;
function imgChange(obj){
	
// 	alert('imgChange >>>>>>>>>>>> ' + obj.value);
	
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

function lottoapi(gno) {
	
	var url = '';
	if(gno == null) {
		url = 'http://lotto.kaisyu.com/api?method=get';
	} else {
		url = 'http://lotto.kaisyu.com/api?method=get&gno=' + gno;
	}

	$.ajax({
		url: url,
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			
			lottoNum = (data.nums).toString().split(',');
			var lottoAPINum = '';
			$.each(lottoNum, function(idx, num) {
				lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ num +'_on.png" class="apiLotto" >';
			});
			lottoAPINum += '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ data.bnum +'_on.png" class="apiLotto" >';
			
			$('#lottoAPIgno').html(data.gno);
			$('#lottoAPIgno2').html(778);
			$('#lottoAPIgdate').html(data.gdate);
			$('#lottoAPINum').html(lottoAPINum);
			$('#lottoAPIbNum').html(data.bnum);
			
			mylottolist(lottoNum);
			
		}
	});
}

function loadlottoapi(gno) {
	
	var url = '';
	if(gno == null) {
		url = 'http://lotto.kaisyu.com/api?method=get';
	} else {
		url = 'http://lotto.kaisyu.com/api?method=get&gno=' + gno;
	}
	
	$.ajax({
		url: url,
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			
			lottoNum = (data.nums).toString().split(',');
			var lottoAPINum = '';
			$.each(lottoNum, function(idx, num) {
				lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ num +'_on.png" class="apiLotto" >';
			});
			lottoAPINum += '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
			lottoAPINum += '<img src="/resources/assets/img/lotto/number_'+ data.bnum +'_on.png" class="apiLotto" >';
			
			$('#lottoAPIgno').html(data.gno);
			$('#lottoAPIgno2').html(data.gno);
			$('#lottoAPIgdate').html(data.gdate);
			$('#lottoAPINum').html(lottoAPINum);
			$('#lottoAPIbNum').html(data.bnum);
			
			mylottolist(lottoNum);
		}
	});
}  
function prevlottoapi(gno) {
	
	var url = '';
	if(gno == null) {
		url = 'http://lotto.kaisyu.com/api?method=get';
	} else {
		url = 'http://lotto.kaisyu.com/api?method=get&gno=' + (Number(gno)-1);
	}

	$.ajax({
		url: url,
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			
			var lottoNum = (data.nums).toString().split(',');
			
			$('#lottoAPIgno2').html(data.gno);
			prevlotto(lottoNum, data.gno);
		}
	});
}  
function nextlottoapi(gno) {
	
	var url = '';
	if(gno == null) {
		url = 'http://lotto.kaisyu.com/api?method=get';
	} else {
		url = 'http://lotto.kaisyu.com/api?method=get&gno=' + (Number(gno)+1);
	}

	$.ajax({
		url: url,
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			
			var lottoNum = (data.nums).toString().split(',');
			
			$('#lottoAPIgno2').html(data.gno);
			nextlotto(lottoNum, data.gno);
			
		},
		error: function(request,status,error) {
			if(gno > 778) {
				$('#lottoAPIgno2').html(gno);
			} else {
				$('#lottoAPIgno2').html((Number(gno)+1));
			}
			nextlotto(lottoNum, (Number(gno)+1));
		}
		
	});
}  

function mylottolist(lotto) {
	
	var num = lotto.toString().split(',');
	
	$.ajax({
		url: 'myLottoList.fun',
		type: 'post',
		dataType: 'json',
		data: {
			'gdate': '2017-10-28',
			'gno': '778'
		},
		success: function(data) {
			var tableGno = '';
			var table = '';
			table += '<table class="myLottoTable">';
			table += '	<th></th>';
			table += '	<tbody id="myLotto">';
			$.each(data, function(idx, lotto) {
				
				var cnt = 0;
				table += '<tr>';
				table += '	<td>' + (idx + 1) + '</td>';
				table += '	<td>' + (idx + 1) + '</td>';
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[0] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[1] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[2] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[3] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[4] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[5] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == $('#lottoAPIbNum').text() ) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[0] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[1] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[2] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[3] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[4] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[5] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == $('#lottoAPIbNum').text()) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[0] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[1] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[2] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[3] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[4] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[5] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == $('#lottoAPIbNum').text()) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[0] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[1] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[2] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[3] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[4] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[5] || 
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == $('#lottoAPIbNum').text()) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[0] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[1] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[2] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[3] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[4] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[5] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == $('#lottoAPIbNum').text()) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[0] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[1] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[2] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[3] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[4] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[5] ||
						lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == $('#lottoAPIbNum').text()) {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_on.png" class="mybuyLotto" ></td>';
					cnt ++;
				} else {
					table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_off.png" class="mybuyLotto" ></td>';
				}
				if(cnt > 3) {
					table += '	<td><img src="/resources/assets/img/lotto/btn.png" style="width:55px;" ></td>';
				} else {
					table += '	<td></td>';
				}
				table += '</tr>';
				tableGno  = lotto.ulname;
			});
			
			table += '	</tbody>';
			table += '</table>';
			$('.myLottoList').html(table);
			$('th').html(tableGno);
		}
	});
}

function prevlotto(lottoNum, gno) {
	
	var num = lottoNum.toString().split(',');
	
	$.ajax({
		url: 'prevMyLotto.fun',
		type: 'post',
		dataType: 'json',
		data: { 'gdate': $('#prevgdate').text(),
				'gno': gno	
		},
		success: function(data) {
			if(data.length == 0) {
				alert('이전 데이터 없다');
				$('#lottoAPIgno2').html(Number(gno)+1);
			} else {
				var tableGno = '';
				var table = '';
				table += '<table class="myLottoTable">';
				table += '	<tbody id="myLotto">';
				table += '	<th></th>';
				$.each(data, function(idx, lotto) {
					var cnt = 0;
					table += '<tr>';
					table += '	<td>' + (idx + 1) + '</td>';
					table += '	<td>' + (idx + 1) + '</td>';
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == $('#lottoAPIbNum').text() ) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[0] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[1] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[2] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[3] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[4] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[5] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[0] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[1] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[2] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[3] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[4] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[5] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(cnt > 3) {
						table += '	<td><img src="/resources/assets/img/lotto/btn.png" style="width:55px;" ></td>';
					} else {
						table += '	<td></td>';
					}
					table += '</tr>';
					tableGno  = lotto.ulname;
					
				});
				
				table += '	</tbody>';
				table += '</table>';
				$('.myLottoList').html(table);
				$('th').html(tableGno);
			}
		}
	});
}

function nextlotto(lottoNum, gno) {
	
	var num = lottoNum.toString().split(',');
	
	$.ajax({
		url: 'nextMyLotto.fun',
		type: 'post',
		dataType: 'json',
		data: { 'gdate': $('#nextgdate').text(),
				'gno': gno
		},
		success: function(data) {
			if(data.length == 0) {
				alert('다음 데이터가 없다');
			} else {
				var tableGNO = '';
				var table = '';
				table += '<table class="myLottoTable">';
				table += '	<tbody id="myLotto">';
				table += '	<th></th>';
				
				$.each(data, function(idx, lotto) {
					var cnt = 0;
					table += '<tr>';
					table += '	<td>' + (idx + 1) + '</td>';
					table += '	<td>' + (idx + 1) + '</td>';
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum1 == $('#lottoAPIbNum').text() ) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum2 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum3 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[0] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[1] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[2] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[3] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[4] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == num[5] || 
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum4 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[0] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[1] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[2] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[3] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[4] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == num[5] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum5 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[0] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[1] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[2] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[3] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[4] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == num[5] ||
							lotto.ulname == $('#lottoAPIgno').text() && lotto.ulnum6 == $('#lottoAPIbNum').text()) {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_on.png" class="mybuyLotto" ></td>';
						cnt ++;
					} else {
						table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_off.png" class="mybuyLotto" ></td>';
					}
					if(cnt > 3) {
						table += '	<td><img src="/resources/assets/img/lotto/btn.png" style="width:55px;" ></td>';
					} else {
						table += '	<td></td>';
					}
					table += '</tr>';
					tableGno  = lotto.ulname;
				});
				
				table += '	</tbody>';
				table += '</table>';
				
				$('.myLottoList').html(table);
				$('th').html(tableGno);
				
			}
		}
	});
}

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

$(document).ready(function() {
	
	loadlottoapi();
	
});

$('.lottoGNO').on('change', function() {
	lottoapi($(this).val());
});
  
$('.buy_btn').click(function() {
	
	alert('gfdsgfdsgfds');
	  
	if($('.fruit').text() > 0) {
		$.ajax({
			url: '/play.fun',
			type: 'post',
			dataType: 'json',
			success: function(data) {
				eacnt = data;
				$('.fruit').html(data);
			}
		});
		
		if(cnt == 6){
			
			var param = $('#lottoForm').serialize();
			param += '&gno=' + (Number($('#lottoAPIgno').text())+1);
			
			$.ajax({
				url: 'buyLotto.fun',
				type: 'post',
				dataType: 'json',
				cache: false,
				data: param,
				success: function(data) {
					var table = '';
					table += '<table class="myLottoTable">';
					table += '	<th>' + lotto.ulname + '</th>';
					table += '	<tbody id="myLotto">';
					$.each(data, function(idx, lotto) {
						var cnt = 0;
						table += '<tr>';
						table += '	<td>' + (idx + 1) + '</td>';
						table += '	<td>' + (idx + 1) + '</td>';
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum1 == num[0] || lotto.ulnum1 == num[1] || lotto.ulnum1 == num[2] || lotto.ulnum1 == num[3] || lotto.ulnum1 == num[4] || lotto.ulnum1 == num[5] || lotto.ulnum1 == $('#lottoAPIbNum').text() ) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum1 + '_off.png" class="mybuyLotto" ></td>';
						}
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum2 == num[0] || lotto.ulnum2 == num[1] || lotto.ulnum2 == num[2] || lotto.ulnum2 == num[3] || lotto.ulnum2 == num[4] || lotto.ulnum2 == num[5] || lotto.ulnum2 == $('#lottoAPIbNum').text()) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum2 + '_off.png" class="mybuyLotto" ></td>';
						}
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum3 == num[0] || lotto.ulnum3 == num[1] || lotto.ulnum3 == num[2] || lotto.ulnum3 == num[3] || lotto.ulnum3 == num[4] || lotto.ulnum3 == num[5] || lotto.ulnum3 == $('#lottoAPIbNum').text()) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum3 + '_off.png" class="mybuyLotto" ></td>';
						}
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum4 == num[0] || lotto.ulnum4 == num[1] || lotto.ulnum4 == num[2] || lotto.ulnum4 == num[3] || lotto.ulnum4 == num[4] || lotto.ulnum4 == num[5] || lotto.ulnum4 == $('#lottoAPIbNum').text()) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum4 + '_off.png" class="mybuyLotto" ></td>';
						}
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum5 == num[0] || lotto.ulnum5 == num[1] || lotto.ulnum5 == num[2] || lotto.ulnum5 == num[3] || lotto.ulnum5 == num[4] || lotto.ulnum5 == num[5] || lotto.ulnum5 == $('#lottoAPIbNum').text()) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum5 + '_off.png" class="mybuyLotto" ></td>';
						}
						if((lotto.regdate <= $('#lottoAPIgdate').text()) && (lotto.regdate >= $('#lottoAPIgdate').text()-6) || lotto.ulnum6 == num[0] || lotto.ulnum6 == num[1] || lotto.ulnum6 == num[2] || lotto.ulnum6 == num[3] || lotto.ulnum6 == num[4] || lotto.ulnum6 == num[5] || lotto.ulnum6 == $('#lottoAPIbNum').text()) {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_on.png" class="mybuyLotto" ></td>';
							cnt ++;
						} else {
							table += '	<td><img src="/resources/assets/img/lotto/number_' + lotto.ulnum6 + '_off.png" class="mybuyLotto" ></td>';
						}
						if(cnt > 3) {
							table += '	<td><img src="/resources/assets/img/lotto/btn.png" style="width:55px;" ></td>';
						} else {
							table += '	<td></td>';
						}
						table += '</tr>';
						
						prevgdate = lotto.prevgdate;
						nextgdate = lotto.nextgdate;
					});
					
					table += '	</tbody>';
					table += '</table>';
					
					$('.myLottoList').html(table);
					$('#prevgdate').text(prevgdate);
					$('#nextgdate').text(nextgdate);
				}
			});
		}else{
			alert("6개 눌러줘요");
		}
		
	} else {
		alert('열매부족하다'); 
	}
});

$('.cancel_btn').click(function() {

	$('input:checkbox[name="lotto"]').prop('checked', false);
	
	for(var i = 1; i <= 45; i++){
		imgChange(document.getElementById("chb"+i));
	}

});
   
$('.prev').click(function() {
	
	prevlottoapi($('#lottoAPIgno2').text());
	
});

$('.next').click(function() {
	
	nextlottoapi($('#lottoAPIgno2').text());
	
});

</script>
</body>
</html>
