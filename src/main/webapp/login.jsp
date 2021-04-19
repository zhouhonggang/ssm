<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <title>SSM后台管理系统 - 登录</title>
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/animate.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/style.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/css/login.min.css" rel="stylesheet">
    <script>
        if(window.top!==window.self){window.top.location=window.location}
    </script>
</head>
<body class="signin">
    <div class="signinpanel">
        <div class="row">
            <div class="col-sm-7">
                <div class="signin-info">
                    <div class="logopanel m-b">
                        <h1>[ SSM ]</h1>
                    </div>
                    <div class="m-b"></div>
                    <h4>欢迎使用 <strong>SSM后台管理系统</strong></h4>
                    <ul class="m-b">
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> SpringFramework</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> SpringMVC</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> Mybatis</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> Shiro</li>
                        <li><i class="fa fa-arrow-circle-o-right m-r-xs"></i> ... ...</li>
                    </ul>
                    <strong>还没有账号？ <a href="#">立即注册&raquo;</a></strong>
                </div>
            </div>
            <div class="col-sm-5">
                <form method="post" action="${pageContext.request.contextPath}/login.do">
                    <h4 class="no-margins">登录：</h4>
                    <p class="m-t-md error">${error}</p>
                    <input type="text" class="form-control uname" name="username" placeholder="用户名" />
                    <input type="password" class="form-control pword m-b" name="password" placeholder="密码" />
                    <a href="">忘记密码了？</a>
                    <button class="btn btn-success btn-block">登录</button>
                </form>
            </div>
        </div>
        <div class="signup-footer">
            <div class="pull-left">
                &copy; 2021 All Rights Reserved. SSM
            </div>
        </div>
    </div>
    </body>
</html>
