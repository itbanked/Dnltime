<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>template.jsp</title>
<!-- Code Assist -->
<c:if test="false">
	<link rel="stylesheet" href="../code_assist/animate.css">
	<link rel="stylesheet" href="../code_assist/bootstrap.css">
</c:if>

</head>
<body>
	<h1>City Modify Service</h1>
	
	<form:form action="/dnltime/modifyReason?pageNo=${param.pageNo}" method="post" modelAttribute="dnltime">

		<!-- Dnlno -->
		<div>
			<label for="dnlno" class="Define-Values">Dnlno : </label>
			<form:input path="dnlno"/>
			<form:errors path="dnlno"/>
		</div>
		<!-- Attend -->
		<div>
			<fmt:formatDate value="${dnltime.attend}" var="dateString1" pattern="yyyy/MM/dd" />
			<form:hidden path="attend" value="${dateString1}"/>
			<form:errors path="attend"/>
		</div>
		<!-- Leave -->
		<div>
		<fmt:formatDate value="${dnltime.leave}" var="dateString2" pattern="yyyy/MM/dd" />
			<form:hidden path="leave" value="${dateString2}"/>
			<form:errors path="leave"/>
		</div>
		<!-- Reason -->
		<div>
			<label for="reason" class="Define-Values">Reason : </label>
			<form:input path="reason"/>
			<form:errors path="reason"/>
		</div>
		<!-- DnltimeCode -->
		<div>
			<label for="dnlCode" class="Define-Values">DnltimeCode : </label>
			<form:input path="dnlCode"/>
			<form:errors path="dnlCode"/>
		</div>
		<!-- Membersrl -->
		<div>
			<form:hidden path="membersrl"/>
		</div>
		<input type="submit" value="modify Dnltime">
	</form:form>
	
</body>
</html>