<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<img alt="aa" src="images/spring1.png">
	<ul>
		<li>��ο����:
			<ul>
				<li><a href="hello.do">/hello.do</a>:������ MVC �ϴ��غ��� HelloController.hello()</li>
				<li><a href="hello-raw.do">/hello-raw.do</a>: void ���� Ÿ�� ��Ʈ�ѷ� �޼��� HelloController.hello(HttpServletResponse)</li>
			</ul>
		</li>
		<li>��:
			<ul>
				<li><a href="event/list">/event/list</a>: Model ���� ,EventController.list()</li>
				<li><a href="event/list2">/event/list2</a>: ModelAndView ����, EventController.list2()</li>
			</ul>
		</li>
	</ul>
</body>
</html>