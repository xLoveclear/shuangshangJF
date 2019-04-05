<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="jpath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>查询</title>
	</head>

	<body style="background-color:#fff;">
	<div class="page-header">
		<h1> 
			ac控制台 
			<small>
				
				 查看
			</small>
		</h1>
	</div><!-- /.page-header -->
	 <table border="1px" align="center">
    	<tr>
    		<td>ID</td>
    		<td>姓名</td>
    		<td>性别</td>
    	</tr>
    	<c:forEach var="stu" items="${stud}">
    	<tr>
    		<td>${stu.id}</td>
    		<td>${stu.name}</td>
    		<td>${stu.sex}</td>
    	</tr>
    	</c:forEach>
    </table>
	

</body>
</html>
