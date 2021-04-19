<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <h5>用户信息录入</h5>
                </div>
                <div class="ibox-content">
                    <form class="form-horizontal" action="${pageContext.request.contextPath}/user/insert.do" method="post">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">用户昵称：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="nick" placeholder="请输入用户昵称">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">登陆账号：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="name" placeholder="请输入登陆账号">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">登陆账号：</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="pass" placeholder="请输入登录密码">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">确认账号：</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" name="repass" placeholder="请确认登录密码">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">性别</label>
                            <div class="col-sm-10">
                                <select class="form-control" name="gender">
                                    <option value="0">请选择</option>
                                    <option value="1">男</option>
                                    <option value="2">女</option>
                                </select>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">手机号码：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="phone" placeholder="请输入手机号码">
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">出生日期：</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="birthday" placeholder="请选择出生日期" readonly>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">家庭住址：</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" name="address" placeholder="请输入家庭住址" rows="3"></textarea>
                            </div>
                        </div>
                        <div class="hr-line-dashed"></div>
                        <div class="form-group">
                            <div class="col-sm-4 col-sm-offset-2">
                                <button class="btn btn-primary" type="submit">保存内容</button>
                                <button class="btn btn-white" type="submit">取消</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%@ include file="../../commons/footer.jsp"%>
<script src="${ctx}/views/user/js/user.js?v=0.0.2"></script>
</body>
</html>
