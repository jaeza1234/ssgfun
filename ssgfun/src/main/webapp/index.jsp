<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String uno  = (String)request.getParameter("userid");
    	System.out.println("ASD"+uno);
    	response.sendRedirect("/main.fun?uno="+uno);
    %>
<script>
</script>