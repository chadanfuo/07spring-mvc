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
<title>�̺�Ʈ ���� �Ϸ�</title>
</head>
<body>
�̺�Ʈ������ �Ϸ��߽��ϴ�.
<label>�̺�Ʈ��</label>:<c:out value="${eventForm.name }"/><br>
<label>Ÿ��</label>:${eventForm.type }<br>
<label>�̺�Ʈ�Ⱓ</label>:
<c:if test="${eventForm.beginDate != null }">
<fmt:formatDate value="${eventForm.beginDate }" pattern="yyyyMMdd" />����</c:if>
<c:if test="${eventForm.endDate !=null }">
	<fmt:formatDate value="${eventForm.endDate }"/>����
</c:if>
<br>
<label>���� ȸ�� ���</label> : ${evnetForm.target == 'all' ? '���ȸ��' : '�����̾� ȸ��'}<br>
�������翩�� : <%=session.getAttribute("eventForm") !=null ? "����" : "����" %>
</body>
</html>