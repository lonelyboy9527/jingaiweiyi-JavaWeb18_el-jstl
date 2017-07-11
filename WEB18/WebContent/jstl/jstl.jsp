<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <!-- 使用taglib方式，导入jstl核心库core，并且设置前缀为c -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setAttribute("count", 10);
	
	%>
	<!-- jstl标签经常和el配合使用 -->
	<!-- test代表的是返回boolean的表示式 -->
	<c:if test="${1==1 }">
		xxxx	
	</c:if>
	<c:if test="${1!=1 }">
		yyyy
	</c:if>
	
	<c:if test="${count==10 }"> 	<!-- 会自动从全域中查找count -->
		 是等于10
	</c:if>
	
	<!-- forEach模拟
		for(int i = 0;i<5;i++) {
			...
		}
	 -->
	 <c:forEach begin="0" end="5" var="i" step="1">
	 	${i }<br>
	 </c:forEach>
	 
	<!-- 模拟增强for 
		for (Product product: productList) {
			...
		}
	-->
	<!-- items表示的是一个集合或者数据 var代表集合中某一个元素-->
	<c:forEach items="${productList }" var="pro">
		${pro.pname }
	</c:forEach>
	
</body>
</html>