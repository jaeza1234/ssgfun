<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/assets/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/resources/assets/css/style.css" type="text/css" />

<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/stroke-7/style.css" />
<link rel="stylesheet" type="text/css"
	href="/resources/assets/lib/jquery.nanoscroller/css/nanoscroller.css" />
	
<!-- Bootstrap -->
<link href="/resources/assets/css/bootstrap.min.css" rel="stylesheet">
<link href="/resources/assets/css/kfonts2.css" rel="stylesheet">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<style type="text/css">

html,body {
	width:100%;
	height:100%; 
	margin:0; 
	padding:0;
}
p {
	font-size: 20px;
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
    left: 200px;
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
/*     padding-left: 175px; */
    padding-left: 135px;
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
	height: 730px;
	background-image: url("/resources/assets/img/lotto/lotto_txt_append.png");
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
.modal {
	text-align: center;
}

.modal-header {
	padding: 9px;
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
.modal-content {
	background-image: url("/resources/assets/img/roul/popup_box2.png");
	background-repeat: no-repeat;
	background-size: 100%;
	text-align: center;
}
.modal-content.modal-fullsize {
	height: auto;
	border-radius: 20px; 
	width: 100px;
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
}
.modal-body {
	padding: 0;
}
.okBtn {
	width: 50%;
}
.winModal {
	width: 30%;
}
.btn-default {
	border: none;
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
					<c:forEach begin="1" end="779" varStatus="status">
						<c:if test="${status.index == 779}" >
							<option value="${status.index }" selected>${status.index }</option>
						</c:if>
						<c:if test="${status.index != 779}" >
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
    
    <div id="lottoAPINum2" style="display: none;"></div>
    <div id="lottoAPIbNum" style="display: none;"></div>
    <div id="lottoAPIgno2" style="display: none;"></div>
    
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
					<div id="result">
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
   <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
   <script src="/resources/assets/js/bootstrap.min.js"></script>
   
    <script>
        $(function () { $('#myModal').modal('hide')});
    </script>

<script type="text/javascript">

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
			$('#lottoAPIgno2').html(779);
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
			$('#lottoAPINum2').html(data.nums);
			
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
			if(gno > 779) {
				$('#lottoAPIgno2').html(gno);
			} else {
				$('#lottoAPIgno2').html((Number(gno)+1));
			}
			nextlotto(lottoNum, (Number(gno)+1));
		}
		
	});
}  

function mylottolist(lottoNum) {
	
	var num = lottoNum.toString().split(',');
	
	$.ajax({
		url: 'myLottoList.fun',
		type: 'post',
		dataType: 'json',
		data: {
			'gdate': '2017-11-04',
			'gno': '779'
		},
		success: function(data) {
			var winChk = '';
			var tableGno = '';
			var table = '';
			table += '<table class="myLottoTable">';
			table += '  <tr>';	
			table += '		<th colspan="8" ></th>';
			table += '  </tr>';	
			table += '	<tbody id="myLotto">';
			$.each(data, function(idx, lotto) {
				
				var cnt = 0;
				table += '<tr>';
				table += '	<td class="win">&#' + (idx + 65) + '</td>';
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
			
				if(cnt == 3) {
					if(lotto.ulflag == 1) {
						table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
					} else {
						table += '<td><img src="/resources/assets/img/lotto/5.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
					}
				} else if(cnt == 4) {
					if(lotto.ulflag == 1) {
						table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
					} else {
						table += '<td><img src="/resources/assets/img/lotto/4.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
					}
				} else if(cnt == 5) {
					if(lotto.ulflag == 1) {
						table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
					} else {
						table += '<td><img src="/resources/assets/img/lotto/3.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
					}
				} else if(cnt == 6) {
					if(lotto.ulnum1 == $('#lottoAPIbNum').text() ||
							lotto.ulnum2 == $('#lottoAPIbNum').text() ||
							lotto.ulnum3 == $('#lottoAPIbNum').text() ||
							lotto.ulnum4 == $('#lottoAPIbNum').text() ||
							lotto.ulnum5 == $('#lottoAPIbNum').text() ||
							lotto.ulnum6 == $('#lottoAPIbNum').text()) {
						
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/2.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/1.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+(cnt+1)+')"></td>';
						}
					}
				} else {
					table += '<td>-</td>';
				}
				
				table += '</tr>';
				tableGno  = lotto.ulname;
				
			});
			
			table += '	</tbody>';
			table += '</table>';
			$('.myLottoList').html(table);
			$('th').html(tableGno + '회차 구입내역');
			
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
				alert('구입내역이 없습니다.');
				$('#lottoAPIgno2').html(Number(gno)+1);
			} else {
				var winChk = '';
				var tableGno = '';
				var table = '';
				table += '<table class="myLottoTable">';
				table += '  <tr>';	
				table += '		<th colspan="8" ></th>';
				table += '  </tr>';	
				table += '	<tbody id="myLotto">';
				$.each(data, function(idx, lotto) {
					
					var cnt = 0;
					table += '<tr>';
					table += '	<td class="win">&#' + (idx + 65) + '</td>';
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
				
					if(cnt == 3) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/5.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 4) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/4.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 5) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/3.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 6) {
						if(lotto.ulnum1 == $('#lottoAPIbNum').text() ||
								lotto.ulnum2 == $('#lottoAPIbNum').text() ||
								lotto.ulnum3 == $('#lottoAPIbNum').text() ||
								lotto.ulnum4 == $('#lottoAPIbNum').text() ||
								lotto.ulnum5 == $('#lottoAPIbNum').text() ||
								lotto.ulnum6 == $('#lottoAPIbNum').text()) {
							
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/2.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/1.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+(cnt+1)+')"></td>';
							}
						}
					} else {
						table += '<td>-</td>';
					}
					
					table += '</tr>';
					tableGno  = lotto.ulname;
					
				});
				
				table += '	</tbody>';
				table += '</table>';
				$('.myLottoList').html(table);
				$('th').html(tableGno + '회차 구입내역');
				
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
				alert('구입내역이 없습니다.');
			} else {
				var winChk = '';
				var tableGno = '';
				var table = '';
				table += '<table class="myLottoTable">';
				table += '  <tr>';	
				table += '		<th colspan="8" ></th>';
				table += '  </tr>';	
				table += '	<tbody id="myLotto">';
				$.each(data, function(idx, lotto) {
					
					var cnt = 0;
					table += '<tr>';
					table += '	<td class="win">&#' + (idx + 65) + '</td>';
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
				
					if(cnt == 3) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/5.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 4) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/4.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 5) {
						if(lotto.ulflag == 1) {
							table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
						} else {
							table += '<td><img src="/resources/assets/img/lotto/3.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
						}
					} else if(cnt == 6) {
						if(lotto.ulnum1 == $('#lottoAPIbNum').text() ||
								lotto.ulnum2 == $('#lottoAPIbNum').text() ||
								lotto.ulnum3 == $('#lottoAPIbNum').text() ||
								lotto.ulnum4 == $('#lottoAPIbNum').text() ||
								lotto.ulnum5 == $('#lottoAPIbNum').text() ||
								lotto.ulnum6 == $('#lottoAPIbNum').text()) {
							
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/2.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/1.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+(cnt+1)+')"></td>';
							}
						}
					} else {
						table += '<td>-</td>';
					}
					
					table += '</tr>';
					tableGno  = lotto.ulname;
					
				});
				
				table += '	</tbody>';
				table += '</table>';
				$('.myLottoList').html(table);
				$('th').html(tableGno + '회차 구입내역');
				
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
					var winChk = '';
					var tableGno = '';
					var table = '';
					table += '<table class="myLottoTable">';
					table += '  <tr>';	
					table += '		<th colspan="8" ></th>';
					table += '  </tr>';	
					table += '	<tbody id="myLotto">';
					$.each(data, function(idx, lotto) {
						
						var cnt = 0;
						table += '<tr>';
						table += '	<td class="win">&#' + (idx + 65) + '</td>';
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
					
						if(cnt == 3) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/5.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 4) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/4.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 5) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/3.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 6) {
							if(lotto.ulnum1 == $('#lottoAPIbNum').text() ||
									lotto.ulnum2 == $('#lottoAPIbNum').text() ||
									lotto.ulnum3 == $('#lottoAPIbNum').text() ||
									lotto.ulnum4 == $('#lottoAPIbNum').text() ||
									lotto.ulnum5 == $('#lottoAPIbNum').text() ||
									lotto.ulnum6 == $('#lottoAPIbNum').text()) {
								
								if(lotto.ulflag == 1) {
									table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
								} else {
									table += '<td><img src="/resources/assets/img/lotto/2.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
								}
							} else {
								if(lotto.ulflag == 1) {
									table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
								} else {
									table += '<td><img src="/resources/assets/img/lotto/1.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+(cnt+1)+')"></td>';
								}
							}
						} else {
							table += '<td>-</td>';
						}
						
						table += '</tr>';
						tableGno  = lotto.ulname;
						
					});
					
					table += '	</tbody>';
					table += '</table>';
					$('.myLottoList').html(table);
					$('th').html(tableGno + '회차 구입내역');
					
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

	for(var i = 1; i <= 45; i++){
		if($('#chb'+i).is(':checked')) {
			$('#chb'+i).prop('checked', false);
			imgChange(document.getElementById("chb"+i));
		}
	}

});
   
$('.prev').click(function() {
	
	prevlottoapi($('#lottoAPIgno2').text());
	
});

$('.next').click(function() {
	
	nextlottoapi($('#lottoAPIgno2').text());
	
});

function winChkbtn(ulno, cnt) {
	
	var obtain = '';

	$('#myModalLabel').html('<i class="fa fa-star" aria-hidden="true"></i>&nbsp;&nbsp;당첨&nbsp;&nbsp;<i class="fa fa-star" aria-hidden="true"></i>');
	if(cnt == 7) {
		obtain = '10000000';
		$('#result').html('<br><img class="winModal" src="/resources/assets/img/lotto/1.png"><p>SSG MONEY 10000000</p>');
	} else if(cnt == 6) {
		obtain = '1000000';
		$('#result').html('<br><img class="winModal" src="/resources/assets/img/lotto/2.png"><p>SSG MONEY 1000000</p>');
	} else if(cnt == 5) {
		obtain = '100000';
		$('#result').html('<br><img class="winModal" src="/resources/assets/img/lotto/3.png"><p>SSG MONEY 100000</p>');
	} else if(cnt == 4) {
		obtain = '1000';
		$('#result').html('<br><img class="winModal" src="/resources/assets/img/lotto/4.png"><p>SSG MONEY 1000</p>');
	} else if(cnt == 3) {
		obtain = '500';
		$('#result').html('<br><img class="winModal" src="/resources/assets/img/lotto/5.png"><p>SSG MONEY 500</p>');
	} else {
		obtain = '1';
		$('#result').html('<p>이상하다!!!</p>');
	}
	
	$('#myModal').modal('show');
	
	var num = '';
	
	$.ajax({
		url: 'http://lotto.kaisyu.com/api?method=get&gno=' + $('#lottoAPIgno').text(),
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		success: function(data) {
			
			num = data.nums;
			
			$.ajax({
				url: 'winChk.fun',
				type: 'post',
				dataType: 'json',
				data: {
					'gno': $('#lottoAPIgno').text(),
					'ulno': ulno,
					'obtain': obtain
				},
				success: function(data) {
					var winChk = '';
					var tableGno = '';
					var table = '';
					table += '<table class="myLottoTable">';
					table += '  <tr>';	
					table += '		<th colspan="8" ></th>';
					table += '  </tr>';	
					table += '	<tbody id="myLotto">';
					$.each(data, function(idx, lotto) {
						
						var cnt = 0;
						table += '<tr>';
						table += '	<td class="win">&#' + (idx + 65) + '</td>';
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
					
						if(cnt == 3) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/5.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 4) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/4.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 5) {
							if(lotto.ulflag == 1) {
								table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
							} else {
								table += '<td><img src="/resources/assets/img/lotto/3.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
							}
						} else if(cnt == 6) {
							if(lotto.ulnum1 == $('#lottoAPIbNum').text() ||
									lotto.ulnum2 == $('#lottoAPIbNum').text() ||
									lotto.ulnum3 == $('#lottoAPIbNum').text() ||
									lotto.ulnum4 == $('#lottoAPIbNum').text() ||
									lotto.ulnum5 == $('#lottoAPIbNum').text() ||
									lotto.ulnum6 == $('#lottoAPIbNum').text()) {
								
								if(lotto.ulflag == 1) {
									table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
								} else {
									table += '<td><img src="/resources/assets/img/lotto/2.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+cnt+')"></td>';
								}
							} else {
								if(lotto.ulflag == 1) {
									table += '<td><img src="/resources/assets/img/lotto/get_ok_big.png" class="winChk" style="width:55px;" /></td>';
								} else {
									table += '<td><img src="/resources/assets/img/lotto/1.png" class="winChk" style="width:40px;" onclick="winChkbtn('+lotto.ulno+', '+(cnt+1)+')"></td>';
								}
							}
						} else {
							table += '<td>-</td>';
						}
						
						table += '</tr>';
						tableGno  = lotto.ulname;
						
					});
					
					table += '	</tbody>';
					table += '</table>';
					$('.myLottoList').html(table);
					$('th').html(tableGno + '회차 구입내역');
					
				}
			});
		}
	});
	
}

</script>
</body>
</html>
