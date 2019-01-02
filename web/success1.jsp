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
<div class="bg-image ">
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
<div id="main">
<%--第一列最左边区域--%>
<div class="tab" style="margin-top:10px;margin-left:20%;width:130px;padding-top:25px;padding-left:15px;">
    <div class="triangle" style="margin-left: 115px;margin-top: -25px"></div>
    <a class="text-white" style="font-size:18px;">近期の资讯</a>
</div>
<form class="horizontal" style="width:40%; margin-left:20%;margin-top:20px">
    <table class="table" >
        <tr>
            <div class="text-black-50" style="margin-top:28px;">&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="text-black-50" style="font-size:15px;float:right;margin:-10px 4px 0px 0px;">更多>></a>
            </div>
            <div style="border-bottom:5px solid black;position: absolute;width:150px;margin:-2px 0px 0px 0px;"></div>
            <div style="border-bottom:1px solid grey;position: absolute;width:611px;margin:-1px 0px 0px 150px;"></div>
            <hr style="height:1px;border-top:1px dashed #808080;" />
        </tr>
    </table>
</form>
<%--第一列最右边区域--%>
<div class="tab" style="margin-top:10px;margin-left:62%;width:100px;padding-top:25px;padding-left:15px;">
    <div class="triangle" style="margin-left:85px;margin-top: -25px"></div>
    <a class="text-white" style="font-size:18px;">公告栏</a>
</div>
<form class="horizontal" style="width:18%; margin-left:62%;margin-top:20px">
    <table class="table" >
        <tr>
            <div class="text-black-50" style="margin-top:28px;">&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="text-black-50" style="font-size:15px;float:right;margin:-10px 4px 0px 0px;">更多>></a>
            </div>
            <div style="border-bottom:5px solid black;position: absolute;width:120px;margin:-2px 0px 0px 0px;"></div>
            <div style="border-bottom:1px solid grey;position: absolute;width:222px;margin:-1px 0px 0px 120px;"></div>
            <hr style="height:1px;border-top:1px dashed #808080;" />
        </tr>
    </table>
</form>
<%--第二列区域--%>
<div class="tab" style="margin-top:530px;margin-left:20%;width:150px;padding-top:25px;padding-left:15px;">
    <div class="triangle" style="margin-left: 135px;margin-top: -25px"></div>
    <a class="text-white" style="font-size:18px;">创作部作品公示</a>
</div>
<form class="horizontal" style="width:60%; margin-left:20%;margin-top:540px">
    <table class="table" >
        <tr>
            <div class="text-black-50" style="margin-top:28px;">&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="text-black-50" style="font-size:15px;float:right;margin:-10px 4px 0px 0px;">更多>></a>
            </div>
            <div style="border-bottom:5px solid black;position: absolute;width:170px;margin:-2px 0px 0px 0px;"></div>
            <div style="border-bottom:1px solid grey;position: absolute;width:971px;margin:-1px 0px 0px 170px;"></div>
            <hr style="height:1px;border-top:1px dashed #808080;" />
        </tr>
    </table>
</form>
<div class="tab" style="margin-top:1050px;margin-left:20%;width:150px;padding-top:25px;padding-left:15px;">
    <div class="triangle" style="margin-left: 135px;margin-top: -25px"></div>
    <a class="text-white" style="font-size:18px;">优秀作品展示</a>
</div>
<form class="horizontal" style="width:60%; margin-left:20%;margin-top:1060px">
    <table class="table" >
        <tr>
            <div class="text-black-50" style="margin-top:28px;">&nbsp;&nbsp;&nbsp;
                <a href="login.jsp" class="text-black-50" style="font-size:15px;float:right;margin:-10px 4px 0px 0px;">更多>></a>
            </div>
            <div style="border-bottom:5px solid black;position: absolute;width:170px;margin:-2px 0px 0px 0px;"></div>
            <div style="border-bottom:1px solid grey;position: absolute;width:971px;margin:-1px 0px 0px 170px;"></div>
            <hr style="height:1px;border-top:1px dashed #808080;" />
        </tr>
    </table>
</form>
</div>
</body>
</html>