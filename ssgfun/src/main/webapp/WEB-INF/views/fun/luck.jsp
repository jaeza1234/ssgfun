<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
 	  $(document).ready(function() {
 		  
 		  /*결과 가져와서 뿌려야 함. resultMap.result==0 이면 축하 안내창 띄워야 함  */
	/* 	 
		 var msg = ${resultMap.result}; 
		 if (msg==0) {
			alert('축 당첨 열매 1개 지급!!');
		} */

	         
	});   

	function aa(animal){

		alert("ajax 실행");
		$.ajax({
			url: 'check.fun',
			type: 'post',
			data: {'animal': animal},
			dataType: 'json',
			success: function(data) {
				//alert(data.result);
				 if(data.result==0){
					alert('축하합니다. 열매1개 획득!');
				}
				
				$('#txt').val(data.msg);
				//$('#txt').prop("value",${msg});
				//change();
				/* 
				$('#txt').val(msg); */
				 /* if (data==0) {
					alert('축 당첨 열매 1개 지급!!');
				}  */
				//
			}
		});
		
		/* alert('전송');
		document.getElementById("animal").value=animal;
		document.getElementById("animalForm").submit(); */
		
	}
</script>
</head>
<form action="/luck/check.fun" method="post" id="animalForm">
	<input type="hidden" name="animal" id='animal'>
</form>
열매 ${attInfo.eacnt}개~~~!!!
<body>
<input type="button" value="쥐" onclick="aa('mouse')">
<input type="button" value="소" onclick="aa('caw')">
<input type="button" value="호랑이" onclick="aa('tiger')">
<input type="button" value="토끼" onclick="aa('rabbit')">
<input type="button" value="용" onclick="aa('dragon')">
<input type="button" value="뱀" onclick="aa('snake')">
<input type="button" value="말" onclick="aa('horse')">
<input type="button" value="양" onclick="aa('sheep')">
<input type="button" value="원숭이" onclick="aa('monkey')">
<input type="button" value="닭" onclick="aa('chicken')">
<input type="button" value="개" onclick="aa('dog')">
<input type="button" value="돼지" onclick="aa('pig')">
<p>

<textarea readonly="readonly" id='txt' cols="100" rows="10" lang="20"> ${msg}</textarea>

</body>
</html>