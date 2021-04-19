<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@ include file="../../commons/header.jsp"%>
</head>
<body class="gray-bg">
<div class="wrapper wrapper-content animated fadeInRight">
    <div class="row">
        <div class="col-sm-12">
            <div class="ibox float-e-margins">
                <div class="ibox-title">
                    <h5>用户管理</h5>
                </div>
                <div class="ibox-content">
                    <div class="row">
                        <div class="col-sm-3">
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button"><i class="fa fa-search"></i>搜索</button>
                                    <button class="btn btn-info" type="button" id="save"><i class="fa fa-plus"></i>添加</button>
                                    <button class="btn btn-warning" type="button" id="edit"><i class="fa fa-paste"></i>编辑</button>
                                    <button class="btn btn-danger" type="button" id="remove"><i class="fa fa-remove"></i>删除</button>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><input type="checkbox" class="i-checks" id="checkAll"></th>
                                    <th>序号</th>
                                    <th>昵称</th>
                                    <th>名称</th>
                                    <th>性别</th>
                                    <th>手机号码</th>
                                    <th>出生日期</th>
                                    <th>家庭住址</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${userList}" var="user" varStatus="n">
                                    <tr>
                                        <td><input type="checkbox" class="i-checks" name="ids"></td>
                                        <td>${n.count}</td>
                                        <td>${user.nick}</td>
                                        <td>${user.name}</td>
                                        <c:if test="${user.gender == 1}">
                                            <td class="text-navy">男</td>
                                        </c:if>
                                        <c:if test="${user.gender == 2}">
                                            <td class="text-danger">女</td>
                                        </c:if>
                                        <td>${user.phone}</td>
                                        <td><f:formatDate value="${user.birthday}"/></td>
                                        <td>${user.address}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../commons/footer.jsp"%>
<script>
    $(document).ready(function()
    {
        $(".i-checks").iCheck(
        {
            checkboxClass:"icheckbox_square-green",
            radioClass:"iradio_square-green"
        })
        $('#save').click(function()
        {
            window.location.href = '${pageContext.request.contextPath}/views/user/save.jsp';
        })
    });
</script>
</body>
</html>
