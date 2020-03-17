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
<title>이벤트 생성 완료</title>
</head>
<body>
이벤트생성을 완료했습니다.
<label>이벤트명</label>:<c:out value="${eventForm.name }"/><br>
<label>타입</label>:${eventForm.type }<br>
<label>이벤트기간</label>:
<c:if test="${eventForm.beginDate != null }">
<fmt:formatDate value="${eventForm.beginDate }" pattern="yyyyMMdd" />부터</c:if>
<c:if test="${eventForm.endDate !=null }">
	<fmt:formatDate value="${eventForm.endDate }"/>까지
</c:if>
<br>
<label>적용 회원 등급</label> : ${evnetForm.target == 'all' ? '모든회원' : '프리미엄 회원'}<br>
세션존재여부 : <%=session.getAttribute("eventForm") !=null ? "존재" : "없음" %>
</body>
</html>