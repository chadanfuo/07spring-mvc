<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="net.madvirus.spring4.chap07.event.EventType"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�̺�Ʈ ����:${project }</title>
</head>
<body>
<%-- <form:form commandName="eventForm" action="${pageContext.request.contextPath}/newevent/step2"> --%>
<%-- <form:form commandName="eventForm" action="/aaa/newevent/step2"> --%>
<form:form commandName="eventForm" action="/<%=request.getContextPath() %>/newevent/step2">
<label for="name">�̺�Ʈ��</label>:
<input type="text" name="name" id="name" value="${eventForm.name }"/>
<form:errors path="name"/><br>
<label for="type">Ÿ��</label>:
<select name="type" id="type">
	<option value="">�����ϼ���</option>
	<c:forEach var="type" items="<%= EventType.values() %>">
	<option value="${type }" ${eventForm.type == type ? 'selected' :''}>${type }</option>
	</c:forEach>
	</select>
<form:errors path="type"/><br>
<label >�̺�Ʈ �Ⱓ</label>:
<input type="text" name="beginDate" value='<fmt:formatDate value="${eventForm.beginDate }" pattern="yyyyMMdd"/>'/>����
<input type="text" name="endDate" value='<fmt:formatDate value="${eventForm.endDate }" pattern="yyyyMMdd"/>'/>����
<form:errors path="beginDate"/><br>
<form:errors path="endDate"/><br>
<input type="submit" value="���� �ܰ��" />
</form:form>
���� ���� ���� : <%=session.getAttribute("eventForm") !=null  ? "����" : "����"%>
</body>
</html>