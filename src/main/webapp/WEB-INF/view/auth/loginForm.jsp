<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form:form commandName="loginCommand">
<form:errors element="div"/>
<label for="email">�̸���</label>:
<input type="text" name="email" id="email" value="${loginCommand.email }">
<form:errors path="email"/><br>

<label for="password">��ȣ</label>:
<input type="password" name="password"  id="password">
<form:errors path="password"/><br>
<input type="submit" value="�α���">
</form:form>

<ul>
	<li>�̸���/��ȣ�� yuna@yuna.com/yuna �Է� �Ǵ� sanghwa@sanghwa.com/sanghwa�� �׽�Ʈ</li>
</ul>
</body>
</html>