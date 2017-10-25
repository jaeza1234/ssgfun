<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type=”text/javascript” src=”/path/to/jquery.js”></script>
<script type="text/javascript">
	 $( document ).ready(function() {
		 alert('${msg}');
	     /* if ( ${msg}!=null ) {
	    		 $("#txt").value=$("msg");
	         } */
	         
	}); 

	var mouse = '인정받으려 아는 체 했다가 이용당할 수도 있습니다. 때로는 침묵이 편안함을 줍니다. 만약 다른 사람들에게 미팅이나 회의를 주선한다면 자기 일처럼 성심성의 것 진행시켜 주는 것이 유리하다. 당신도 조만간 당사자가 될 수있기 때문이다. 외부 거래처의 상대방 말에 따라 세심한 표정관리를 해야 하는 경우도 있겠다.'
		+'\n36년생다른 날에 비해서 컨디션이 안 좋을 수도 있다. 간단한 운동으로 회복하는 것이 좋다.\n'
		+'\n48년생남들이 신중 또 신중 하게 생각하고 결정하는 것이 바람직하다.\n'
		+'\n60년생새로운 일을 하고자 한다면, 한 템포 쉬도록 하라. 모든 일은 순리대로 행해야 한다.\n'
		+'\n72년생되도록이면 여행을 하거나 먼 길을 떠나지 않도록 하라. 새로운 일이 기다리고 있다.\n'
		+'\n84년생평지풍파가 지난 뒤라면 새로운 변화의 계기가 찾아올 것이니, 여유를 갖고 기다려라.\n';
	var caw = '인정받으려 아는 체 했다가 이용당할 수도 있습니다. 때로는 침묵이 편안함을 줍니다. 헤어나오기 어려운 조건을 가진 이성의 강한 유혹이 있을 수 있다. 특히 미혼인 경우는 당신의 사람 됨됨이 보다는 당신의 환경을 보고 접근해 오는 이성도 있을 수 있다. 때가 아니다. 꾸준하게 자신을 다지면 곧 때를 만날 수 있다.'
		+'\n37년생나이가 되면 이야기 하지 말아야 할 것과 할 것을 가릴 줄 알아야 한다.\n'
		+'\n49년생재테크에 관심을 가지고 성실히 정보를 살펴 본다면 뜻하지 않게 이익을 얻을 것이다.\n'
		+'\n61년생저녁식사 후 가벼운 산책이나 운동이 건강에 매우 유익할 것이다. 실행하도록 하라.\n'
		+'\n73년생대중적인 취미활동을 가꾸도록 한다면, 대인관계를 넓힐 수 있는 기회가 될 것이다.\n'
		+'\n85년생남을 의식하는 것보다 자신의 내면을 바라보고 능력을 키우는 일에 초점을 맞춰라.\n';
	var tiger = '';
	var rabbit = '';
	var dragon = '';
	var snake = '';
	var horse = '';
	var sheep = '';
	var monkey = '';
	var chicken = '';
	var dog = '';
	var pig = '';
	
	var txtArea = document.getElementById("txt");
	
	function aa(animal){
		alert('전송');
		document.getElementById("animal").value=animal;
		document.getElementById("animalForm").submit();
		
		/* if (animal=="mouse") {
			document.getElementById("txt").value=mouse;
		} else if(animal=="caw"){
			document.getElementById("txt").value=caw;
		} else if(animal=="tiger"){
			document.getElementById("txt").value=tiger;
		} else if(animal=="rabbit"){
			document.getElementById("txt").value=rabbit;
		} else if(animal=="dragon"){
			document.getElementById("txt").value=dragon;
		} else if(animal=="snake"){
			document.getElementById("txt").value=snake;
		} else if(animal=="horse"){
			document.getElementById("txt").value=horse;
		} else if(animal=="sheep"){
			document.getElementById("txt").value=sheep;
		} else if(animal=="monkey"){
			document.getElementById("txt").value=monkey;
		} else if(animal=="chicken"){
			document.getElementById("txt").value=chicken;
		} else if(animal=="dog"){
			document.getElementById("txt").value=dog;
		} else if(animal=="pig"){
			document.getElementById("txt").value=pig;
		} */
		
	}
</script>
</head>
<form action="/luck/main.fun" method="post" id="animalForm">
	<input type="hidden" name="animal" id='animal'>
</form>
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

<textarea readonly="readonly" id='txt' cols="100" rows="10" lang="20">띠를 선택하세요.</textarea>

</body>
</html>