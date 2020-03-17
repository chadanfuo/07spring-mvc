<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<img alt="aa" src="images/spring1.png" style="width: 30%;">
	<ul>
		<li>헬로우월드:
			<ul>
				<li><a href="hello.do">/hello.do</a>:스프링 MVC 일단해보기
					HelloController.hello()</li>
				<li><a href="hello-raw.do">/hello-raw.do</a>: void 리턴 타입 컨트롤러
					메서드 HelloController.hello(HttpServletResponse)</li>
			</ul>
		</li>
		<li>모델:
			<ul>
				<li><a href="event/list">/event/list</a>: Model 예시
					,EventController.list()</li>
				<li><a href="event/list2">/event/list2</a>: ModelAndView 예시,
					EventController.list2()</li>
			</ul>
		</li>
		<li>@RequestMapttong, @PathVariable:
			<ul>
				<li><a href="member/regist">/member/resist</a>: GET/POST 예,
					RegistrationController</li>

				<li><a href="members">/members</a>: @PathVariable 사용 위한 목록 출력,
					MemberController.memebers()</li>
				<li><a href="members/m2">/members/m2</a>: @PathVariable 예,
					MemberController.memeberDetail()</li>
				<li><a href="members/m3">members/m3</a>:멤버없음</li>
				<li><a href="members/m2/orders/1">members/m2/orders/1</a>:
					@PathVariable 예, MemberController.memeberOrderDetail()</li>
				<li><a href="members/m2/orders/1a">members/m2/orders/1a</a>:
					@PathVariable 400 응답 예, MemberController.memeberOrderDetail()</li>
			</ul>
		</li>
		<li>요청 파라미터 처리:
			<ul>
				<li><a href="event/detail?id=1">/event/detail?id=1</a>:
					HttpServletRequest을 이용한 파라미터 구하기, EventController.detail()</li>
				<li><a href="event/detail2?id=1">event/detail2?id=1</a>:
					@RequestParam을 이용한 파라미터 구하기,EventController.detail2()</li>
				<li><a href="event/detail2">event/detail2</a>: @RequestParam 필수
					파라미터 400에러,EventController.detail2()</li>
				<li><a href="search">search</a>: @RequestParam 필수 아님 설정,
					SearchController.search()</li>
			</ul>
		</li>

		<li>커멘드 객체,@ModelAttribute:
			<ul>
				<li><a href="member/regist">/member/regist</a>:커맨드 객체,
					@ModelAttribute로 커맨드 객체 이름 지정,RegistrationController</li>
				<li><a href="acl/list">/acl/list</a>: 커맨드 객체 리스트 처리,
					AclController
					<ul>
						<li>로그인 기능 수행 후, 실행</li>
						<li>또는, Sample.xml이나 SampleConfig.java에서 핸들러 인터셉서 설정을 주석 처리 후
							실행</li>
					</ul></li>
				<li><a href="member/modify?mid=m1">/member/modify?mid=m1</a>:
					GET/POST에서 동일 타입 커맨드 객체 사용하기, MemberModificationController</li>
				<li><a href="event/list">/event/list</a>: @ModelAttribute를 이용한
					공통 모델,EventController.recommend()</li>
			</ul>
		</li>

		<li>요청 해더 값:
			<ul>
				<li><a href="header/simple">/header/simple</a>: @RequestHeader와
					@CookieValue,SimpleHeaderController.simple()</li>
				<li><a href="header/createauth">/header/createauth</a>:
					@CookieValue 테스트를 위한 쿠키 생성, SimpleHeaderController.createAuth()</li>

			</ul>
		</li>
		<li>리다이렉트:
			<ul>
				<li><a href="header/createauth">/header/createauth</a>:리다이렉트,SimpleHeaderController.createAuth()</li>


			</ul>
		</li>
		<li>값검증
			<ul>
				<li><a href="member/regist">/member/regist</a>: 값 검증,
					&lt;spring:hasBindErros name="memberInfo" /&gt;를 이용한
					에러메시지,RegistrationController</li>
				<li><a href="auth/login">/auth/login</a>: @Valid 이용 값 검증, &lt;
					from :from commandName="loginCommand"&gt;를 이용한 에러메시지, 글로벌 에러 메시지,
					LoginController</li>
				<li><a href="member/modify?mid=m2">/member/modify?mid=m2</a>:
					@Valid 및 JSR303 이용 값 검증,MemberModificationController</li>
			</ul>
		</li>
		<li>값변환:
			<ul>
				<li><a href="member/regist">/member/regist</a>:
					@DateTimeFormat,RegistrationController/MemberRegistRequest</li>
				<li><a href="event/list">/event/list</a>:
					@InitBinder와CustomDateEditor, EventController.list()</li>
			</ul>
		</li>

		<li>HTTP 세션:
			<ul>
				<li><a href="auth/login">/auth/login</a>: HttpServletRequest를
					통해 HttpSession사용, LoginController</li>
				<li><a href="auth/logout">/auth/logout</a>: HttpSession 직접사용,
					LogoutController</li>
				<li><a href="newevent/step1">/newevent/step1</a>: 
					@SessionAttributes 사용, EventCreationController</li>
			</ul>
		</li>
		
		<li>익셉션 처리
			<ul>
				<li><a href="cal/divide?op1=10&op2=0">/cal/divide?op1=10&amp;op2=0</a>: 
				@ExceptionHandler,CalculationController</li>
				<li><a href="event/detail2">/event/detail2</a>: 
				@ControllerAdvice 사용, CommonExceptionHandler. 설정(sample.xml, SampleConfig.java)에서
				CommonExceptionHandler 부분의 주석 해제 후 </li>
				<li><a href="files/a111">/files/a111</a>: 
				익셉션 클래스에 @ResponseStatus 사용,
				FileController.fileInfo()/NotFileInfoException</li>
			</ul>
		</li>
	</ul>


</body>
</html>