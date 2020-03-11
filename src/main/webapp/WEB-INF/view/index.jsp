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
		<li>헬로우월드:
			<ul>
				<li><a href="hello.do">/hello.do</a>:스프링 MVC 일단해보기 HelloController.hello()</li>
				<li><a href="hello-raw.do">/hello-raw.do</a>: void 리턴 타입 컨트롤러 메서드 HelloController.hello(HttpServletResponse)</li>
			</ul>
		</li>
		<li>모델:
			<ul>
				<li><a href="event/list">/event/list</a>: Model 예시 ,EventController.list()</li>
				<li><a href="event/list2">/event/list2</a>: ModelAndView 예시, EventController.list2()</li>
			</ul>
		</li>
	</ul>
</body>
</html>