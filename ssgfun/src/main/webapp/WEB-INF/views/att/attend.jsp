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
	$('#attCheck').click(function() {
// 		alert('클릭');
		
		$.ajax({
			url: 'attCheck.fun',
			type: 'post',
			dataType: 'json',
			success: function(data) {
				alert('성공' + data);
			}
		});
	});
});

</script>

</head>
<body>
	출석출석
	<a href="attCheck.fun" >이거 누르면 출석 인정!!</a>
	<input type="button" id="attCheck" value="이거 누르면 출석 인정!!" />
</body>
</html>