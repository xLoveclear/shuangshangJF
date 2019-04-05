
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>首页</title>



</head>

<body>
我来到了主页

<form id="uploadFrom" action="uploadFile" method="post" enctype="multipart/form-data">
请选择文件<input name="file" type="file" />
<input value="上传" type="submit"/> 
</form>

</body>

</html>
