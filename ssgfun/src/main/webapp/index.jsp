<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String uno  = (String)request.getParameter("userid");
    	
    %>
<script>
	location.href = "/main.fun?uno="+uno;
</script>