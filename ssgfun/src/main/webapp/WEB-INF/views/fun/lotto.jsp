<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	var bnum = '';
	var gno = '';
	var gdate = '';
	var nums = '';
	
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
				
			var txt = '';
			txt += ' 보너스 당첨번호 : ' + data.bnum;
			txt += ' 로또 회차번호 : ' + data.gno;
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
		
// 		alert('구입' + $('#lottoNum').text());
		var param = $('#lottoNum').text();

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

	});
	
});

</script>

</head>
<body>
<a href="/ssgFun.fun" >뒤로</a><br><br><br>
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


</body>
</html>