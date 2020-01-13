<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>用户列表</title>
</head>
<body>
    <a href="<%=path%>/views/user/insert.jsp">添加</a>
    <table>
        <tr>
            <td>序号</td>
            <td>名称</td>
            <td>年龄</td>
            <td>性别</td>
            <td>手机号码</td>
            <td>出生日期</td>
            <td>家庭住址</td>
        </tr>
        <c:forEach items="${userList}" var="user" varStatus="n">
            <tr>
                <td>${n.count}</td>
                <td>${user.name}</td>
                <td>${user.age}</td>
                <td>${user.gender == 1?"男":"女"}</td>
                <td>${user.phone}</td>
                <td>
                    <f:formatDate value="${user.birthday}" pattern="yyyy-MM-dd"/>
                </td>
                <td>${user.address}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
