<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tab-wrap * { 
	margin: 0px; 
	padding: 0px; 
}
.tab-wrap { 
	position: relative; 
	padding-top: 30px; 
}
.tab-wrap li { 
	z-index: 2; 
	position: absolute; 
	top: 0px; 
	width: 100px; 
	height: 30px; 
	text-indent: -9999%; 
}
.tab-wrap li:nth-of-type(1) { 
	left: 0px; 
}
.tab-wrap li:nth-of-type(2) { 
	left: 100px; 
}
.tab-wrap li a { 
	display: block; 
	width: 100%; 
	height: 100%; 
}
.tab-wrap article h1 { 
	position: absolute; 
	top: 0px; 
	width: 100px; 
	height: 30px; 
	line-height: 30px; 
	box-sizing: border-box; 
	border: 1px solid #ddd; 
	text-align: center; 
	font-size: 12px; 
}
.tab-wrap article p { 
	border: 1px solid #ddd; 
	padding: 30px; 
}
.tab-wrap article:target h1 { 
	background-color: yellow; 
}
.tab-wrap article:nth-of-type(1) h1 { 
	left: 0px; 
}
.tab-wrap article:nth-of-type(2) h1 { 
	left: 100px; 
}
.tab-wrap article:nth-of-type(1) p { 
	display: block;
}
.tab-wrap article p { 
	display: none; 
}
.tab-wrap article:target p { 
	display: block; 
}
</style>

</head>
<body>
<div class="tab-wrap">
	<ul>
		<li><a href="#tab1">tab1</a></li>
		<li><a href="#tab2">tab2</a></li>
	</ul>

	<div>
		<article id="tab1">
			<h1>tab1 title</h1>
			<p>Here is tab1 contents</p>
		</article>
		<article id="tab2">
			<h1>tab2 title</h1>
			<p>Here is tab2 contents</p>
		</article>
	</div>
</div>
</body>
</html>