<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<a href="/ssgFun.fun" >뒤로</a><br><br><br>
열매 ${attInfo.eacnt}개~~~!!!
<body>
<input type="button" value="쥐" onclick="unse('mouse')">
<input type="button" value="소" onclick="unse('caw')">
<input type="button" value="호랑이" onclick="unse('tiger')">
<input type="button" value="토끼" onclick="unse('rabbit')">
<input type="button" value="용" onclick="unse('dragon')">
<input type="button" value="뱀" onclick="unse('snake')">
<input type="button" value="말" onclick="unse('horse')">
<input type="button" value="양" onclick="unse('sheep')">
<input type="button" value="원숭이" onclick="unse('monkey')">
<input type="button" value="닭" onclick="unse('chicken')">
<input type="button" value="개" onclick="unse('dog')">
<input type="button" value="돼지" onclick="unse('pig')">
<p>

<textarea readonly="readonly" id='txt' cols="100" rows="10" lang="20"> ${msg}</textarea>

<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 	  $(document).ready(function() {
 		  

	         
	});   

	function unse(animal){

		alert("ajax 실행");
		$.ajax({
			url: 'check.fun',
			type: 'post',
			data: {'animal': animal},
			dataType: 'json',
			success: function(data) {

				 if(data.result==0){
					alert('축하합니다. 열매1개 획득!');
				}
				
				$('#txt').val(data.msg);
			
			}
		});
		
		
		
	}
</script>

</body>
</html>