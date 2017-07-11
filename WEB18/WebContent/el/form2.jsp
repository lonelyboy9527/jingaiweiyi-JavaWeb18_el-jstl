<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 获得表单的参数 -->
	<%
		request.getParameter("username");
		//...
	%>
	
	<!-- 使用el获得参数 -->
	${param.username } 		 <!-- 相当于request.getParam..(name) -->
	${header["User-Agent"] } <!-- 相当于request.getHeader(name) --> <!-- 有时候，有其他字符，我们用["xxx"]代替点 -->
	${header.Host }
	${header["Host"] }
	${initParam.aaa }		<!-- 相当于this.getServletContext().getInitParameter(name) -->
	
	
	<!-- 先在cookie.jsp中设置cookie -->
	${cookie.name.value }	<!-- 相当于request.getCookie("...") -->
	
	
	<!-- 通过el表达式获得request对象 -->
	${pageContext.request }	<!-- pageContext获得其他八大对象 -->
</body>
</html>