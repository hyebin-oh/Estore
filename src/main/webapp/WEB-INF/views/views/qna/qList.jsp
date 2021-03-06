<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file ="/WEB-INF/views/include/header.jsp" %>   
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#frm{
	align:center;
}
#table{
	width:70%;
}
a{
	color:black;
}
a:hover {color:blue; text-decoration: underline; }
</style>
</head>
<body>
<div align="center">
	<h3>All QnA</h3><br>
	<table class="table" id="table">
		<thead class="thead-dark">	  	
			<tr align="center">
				<th scope="col" align="center">NUM</th>
				<th scope="col">TITLE</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${qlist }" var="list">
				<tr>
				<sec:authentication property="principal.username" var="userName" />	
				<c:if test="${userName==list.email }">
					<td align="center">${list.qnum }</td>
					<td align="center"><a href ='/qna/detail/${list.qnum }'>
					<c:out value="${list.title }"/>
					<b> [<c:out value="${list.replyCnt }"/>]</b>
					</a></td>	
				</c:if>
				<c:if test="${userName!=list.email }">
					<td align="center">${list.qnum }</td> 
					<td align="center">접근 권한이 없는 게시글입니다.</td> 
				</c:if>
				</tr>
			</c:forEach>   
	  	</tbody>
	</table>
</div>	  
		
	
	
	<%-- 	<sec:authorize access="hasRole('ROLE_ADMIN') and isAuthenticated()">
			<a href="notice/insert">Write notice</a>
		</sec:authorize>   --%>
 


 <%@include file ="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>