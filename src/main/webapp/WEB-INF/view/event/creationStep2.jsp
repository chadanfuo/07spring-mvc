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
<title>이벤트 생성</title>
</head>
<body>
<%-- <form:form commandName="eventForm" action="/<%=request.getContextPath() %>/newevent/step3"> --%>
 <form:form commandName="eventForm" action="${pageContext.request.contextPath}/newevent/step3">

<label>적용회원등급</label>:
<label><input type="radio" name="target" value="all" ${eventForm.target == 'all' ? 'checked' : '' }>모든회원</label>
<label><input type="radio" name="target" value="premium" ${eventForm.target == 'premium' ? 'checked' : '' }>프리미엄회원</label>
<form:errors path="target"/><br>
<br>
<a href="/aaa/newevent/step1">[이전단계]</a>
<input type="submit" value="다음 단계로"/>
</form:form>
세션존재여부 : <%=session.getAttribute("eventForm") !=null ? "존재" : "없음" %>
</body>
</html>