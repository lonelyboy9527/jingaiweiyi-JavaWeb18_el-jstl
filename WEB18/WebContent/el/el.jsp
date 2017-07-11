<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itheima.domain.User" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 模拟域中的数据 -->
	
	<%
			pageContext.setAttribute("company", "传智播客");
			//存储一个字符串
			request.setAttribute("company", "黑马程序员");
				
			//存储一个对象
			User user = new User();
			user.setId(1);
			user.setName("张三");
			user.setPassword("123456");
			session.setAttribute("user", user);
			
			//存储一个集合
			List<User> list = new ArrayList<User>();
			User user1 = new User();
			user1.setId(2);
			user1.setName("李四");
			user1.setPassword("123456");
			
			User user2 = new User();
			user2.setId(3);
			user2.setName("王五");
			user2.setPassword("123456");
			
			list.add(user1);
			list.add(user2);
			
			application.setAttribute("list", list);
		%>
		
		<!-- 脚本的方式取出域中的值 -->
		<%=request.getAttribute("company")%>
		<%
			User sessonUser = (User)session.getAttribute("user");
			out.write(sessonUser.getName());
		%>
		
		<!-- 使用EL表达式获得域中的值 -->
		${requestScope.company }
		${sessionScope.user.name }
		${applicationScope.list[1].name }
		
		<!-- 使用el表达式全域查找 从小到大找 -->
		${company }
		${user.name }
		${list[1].name }
		
		<!-- el可以执行表达式运算 -->
		${1+1 }
		${1 == 1? true:false }
		${empty user} <!-- 判断某个对象是否为null 是null返回true,否则返回false-->
		
</body>
</html>