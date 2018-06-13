<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
	<jsp:include page="${request.contextPath}/WEB-INF/includes/head-include.jsp"/>
	
	<title>Member list</title>
</head>

<body>
	<jsp:include page="${request.contextPath}/WEB-INF/includes/nav-bar-include.jsp"/>

<c:if test="${fn:length(userList) gt 0}">
	<a class="btn btn-primary" href="${pageContext.request.contextPath}/Admin/User/create">Add Member</a>
	<table class="borderAll table table-light">
		<tr>
			<th><s:message code="label.user.id" /></th>
			<th><s:message code="label.user.index" /></th>
			<th><s:message code="label.user.fname" /></th>
			<th><s:message code="label.user.sname" /></th>
			<th><s:message code="label.user.surname" /></th>
			<th><s:message code="label.user.dob" /></th>
			<th><s:message code="label.user.joindate" /></th>
			<th><s:message code="label.user.expirydate" /></th>
			<th><s:message code="label.user.email" /></th>
			<th><s:message code="label.user.phoneno" /></th>
			<th><s:message code="label.user.status" /></th>
			<th><s:message code="label.user.userid" /></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach var="user" items="${userList}" varStatus="status">
			<tr class="${status.index%2==0?'even':'odd'}">
				<td class="nowrap">${user.memberid}</td>
				<td class="nowrap">${status.index +1}</td>
				<td class="nowrap">${user.firstname}</td>
				<td class="nowrap">${user.secondname}</td>
				<td class="nowrap">${user.surname}</td>
				<td class="nowrap">${user.dob}</td>
				<td class="nowrap">${user.joindate}</td>
				<td class="nowrap">${user.expirydate}</td>
				<td class="nowrap">${user.email}</td>
				<td class="nowrap">${user.phone}</td>
				<td class="nowrap">${user.status}</td>
				<td class="nowrap">${user.userid}</td>
				<td align="center">
				<a class="btn btn-success" href="${pageContext.request.contextPath}/Admin/User/edit/${user.memberid}.html">
						<s:message code="label.user.edit" />
				</a></td>
				<td><a class="btn btn-warning" href="${pageContext.request.contextPath}/Admin/User/delete/${user.memberid}.html">
						<s:message code="label.user.delete" />
				</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
