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
		<li>@RequestMapttong, @PathVariable:
			<ul>
				<li><a href="member/regist">/member/resist</a>: GET/POST  ��, RegistrationController</li>

				<li><a href="members">/members</a>: @PathVariable ��� ���� ��� ���, MemberController.memebers()</li>
				<li><a href="members/m2">/members/m2</a>: @PathVariable  ��, MemberController.memeberDetail()</li>
				<li><a href="members/m3">members/m3</a>:�������</li>
				<li><a href="members/m2/orders/1">members/m2/orders/1</a>: @PathVariable  ��, MemberController.memeberOrderDetail()</li>
				<li><a href="members/m2/orders/1a">members/m2/orders/1a</a>: @PathVariable 400 ���� ��, MemberController.memeberOrderDetail()</li>
			</ul>
		</li>
		<li>��û �Ķ���� ó��:
			<ul>
				<li><a href="event/detail?id=1">/event/detail?id=1</a>:
					HttpServletRequest�� �̿��� �Ķ���� ���ϱ�, EventController.detail()
				</li>
				<li><a href="event/detail2?id=1">event/detail2?id=1</a>:
				 @RequestParam�� �̿��� �Ķ���� ���ϱ�,EventController.detail2()
				 </li>
				 	<li><a href="event/detail2">event/detail2</a>:
				 @RequestParam �ʼ� �Ķ���� 400����,EventController.detail2()
				 </li>
				<li><a href="search">search</a>:
				@RequestParam �ʼ� �ƴ� ����, SearchController.search()
				</li>
			</ul>
		</li>
		
		<li>Ŀ��� ��ü,@ModelAttribute:
			<ul>
				<li><a href="member/regist">/member/regist</a>:Ŀ�ǵ� ��ü,
					@ModelAttribute�� Ŀ�ǵ� ��ü �̸� ����,RegistrationController
				</li>
				<li><a href="acl/list">/acl/list</a>:
					Ŀ�ǵ� ��ü ����Ʈ ó��, AclController
					<ul>
						<li>�α��� ��� ���� ��, ����</li>
						<li>�Ǵ�, Sample.xml�̳� SampleConfig.java���� �ڵ鷯 ���ͼ��� ������ �ּ� ó�� �� ����</li>
					</ul>
				 </li>
				 <li><a href="member/modify?mid=m1">/member/modify?mid=m1</a>:
					GET/POST���� ���� Ÿ�� Ŀ�ǵ� ��ü ����ϱ�, MemberModificationController	
				</li>
				<li><a href="event/list">/event/list</a>:
					@ModelAttribute�� �̿��� ���� ��,EventController.recommend()
				</li>
			</ul>
		</li>
	</ul>
	
	
</body>
</html>