<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>登录</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/my.css" rel="stylesheet">
</head>
<body class="im">
<div class="bg-image">
    <div style="padding-top:95px;"/>
    <nav class="navbar navbar-expand-md bg-blacktrans" style="margin-top:50px;">
        <div class="collapse navbar-collapse justify-content-md-start" id="navbarSupportedContent" style="margin-left: 370px">
            <ul class="navbar-nav">
                <li class="active"><a href="success1.jsp" class="dropdown-item" style="margin-top: 10px;">
                    <span class="text-white"><i class="fa fa-user"></i>&nbsp;首页</span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:80px;"></div>
                <li class="active"><a href="main.jsp" class="dropdown-item" style="margin-top:10px;" target="MyWork">
                    <span class="text-white"><i class="fa fa-wpforms"></i>&nbsp; 作品相关</span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:80px;"></div>
                <li class="active"><a href="#userSup" class="dropdown-item" style="margin-top: 10px;">
                    <span class="text-white"><i class="fa fa-signing"></i>&nbsp; 应援团</span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:80px;"></div>
                <li class="active"><a href="#userRes" class="dropdown-item" style="margin-top: 10px;">
                    <span class="text-white"><i class="fa fa-file"></i>&nbsp; 资源区</span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:80px;"></div>
                <li class="active"><a href="#userPic" class="dropdown-item"  style="margin-top: 10px;">
                    <span class="text-white"><i class="fa fa-picture-o"></i>&nbsp; 图库</span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:80px;"></div>
                <li class="active"><a href="#userPic" class="dropdown-item"  style="margin-top: 10px;">
                    <span class="text-white"><i class="fa fa-money"></i>&nbsp; 赞助入口>></span><span class="sr-only"></span></a>
                </li>
                <div style="margin-left:45px;margin-top: 5px;">
                    <input type="text" name="search"  class="inputAttr1 col-md-7 bg-whitetrans"  placeholder="请输入搜索内容">
                    <button type="submit" class="bt btn-warning">搜索</button>
                </div>
            </ul>
        </div>
    </nav>
</div>
<form class="form-horizontal" style="width:60%;height:90%;margin-left:20%;margin-top:1%;background-color: white"></form>
</body>
</html>