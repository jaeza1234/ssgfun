<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$.ajax({
		url: 'http://lotto.kaisyu.com/api?method=get',
		type: 'get',
		dataType: 'jsonp',
		jsonp: 'callback',
		async: false,
		success: function(data) {
			
			var txt = '';
			txt += ' 보너스 당첨번호 : ' + data.bnum;
			txt += ' 로또 회차번호 : ' + data.gno + '';
			txt += ' 추첨일 : ' + data.gdate;
			txt += ' 당첨 번호 : ' + data.nums;

			$('#lottoAPI').html(txt);
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
		
		alert('구입' + $('#lottoNum').text());
		var param = $('#lottoNum').text();

		$.ajax({
			url: 'buyLotto.fun',
			type: 'post',
			dataType: 'json',
			data: {'lottoNum': param },
			success: function(data) {
				
				var txt = '';
				$.each(data, function(idx, num) {
				});

// 				$('#lottoNum').html(txt);
			}
		});
	});
	
});

</script>

</head>
<body>
	<h2>로또!!!</h2>
	열매 ${attInfo.eacnt }개~~~!!!
	
	<div id="lottoAPI"></div>
	
	<br/>
	<br/>
	<input type="button" value="구입하기" />
	<br/>
	<br/>
	로또 번호 : <div id="lottoNum"></div>
	<input type="button" id="random" value="랜덤" /> &nbsp;&nbsp;
	<input type="button" value="취소" /> &nbsp;&nbsp;
	<input type="button" id="buy" value="구입" />
	
	


</body>
</html>