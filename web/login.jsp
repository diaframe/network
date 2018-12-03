<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <style type="text/css">
       form {
            position:relative;
            transform:translateY(50%);
        }
        body{
            background-image: url(image/timg.jpg);
            background-size:cover;
        }
       .icon-user{
           position: absolute;
           right: 450px;
           bottom:186px;
           z-index:5;
       }
       .icon-password{
           position: absolute;
           right: 455px;
           bottom:98px;
           z-index:5;
       }

    </style>
</head>
<body>
<nav class="navbar navbar-expand-md navbar-dark bg-dark">
    <a class="navbar-brand" href="#">sos团</a>
    <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="login.jsp">登陆 <span class="sr-only">(current)</span></a>
            </li>
        </ul>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-7">
            <form class="form-horizontal" action="Test.action" method="post">
                <span class="heading">
                    登录
                </span>
                <i class="icon-user fa fa-user-circle-o fa-2x"></i>
                    <input type="text" name="username"  class="form-control col-md-10" placeholder="请输入用户名" required autofocus>
                </br></br></br>
                <i class="icon-password fa fa-lock fa-2x"></i>
                    <input type="password" name="password" class="form-control col-md-10"  placeholder="请输入密码" required maxLength="16">
                </br></br>
                    <button type="submit" class="btn" style="margin-right: 50px;margin-top: 10px;">登录</button>
            </form>
            <iframe style="display: none;" name="submitFrame" src="about:blank"></iframe>
        </div>
    </div>
</div>
</body>
</html>
