<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<img alt="aa" src="images/spring1.png"style="width: 30%;">
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
		<li>@RequestMapttong, @PathVariable:
			<ul>
				<li><a href="member/regist">/member/resist</a>: GET/POST  예, RegistrationController</li>

				<li><a href="members">/members</a>: @PathVariable 사용 위한 목록 출력, MemberController.memebers()</li>
				<li><a href="members/m2">/members/m2</a>: @PathVariable  예, MemberController.memeberDetail()</li>
				<li><a href="members/m3">members/m3</a>:멤버없음</li>
				<li><a href="members/m2/orders/1">members/m2/orders/1</a>: @PathVariable  예, MemberController.memeberOrderDetail()</li>
				<li><a href="members/m2/orders/1a">members/m2/orders/1a</a>: @PathVariable 400 응답 예, MemberController.memeberOrderDetail()</li>
			</ul>
		</li>
	</ul>
	
	
</body>
</html>